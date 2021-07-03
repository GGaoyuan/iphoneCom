//
//  YDBaseSheetViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/8.
//

import UIKit

@objc protocol YDFadeViewControllerProtocol {
    @objc func prt_viewDidLoad()
    @objc optional func customViewsShowAnimation()
    @objc optional func customViewsDismissAnimation()
}

class YDFadeViewController: YDViewController {
    private weak var child: YDFadeViewControllerProtocol!
    private var dimmingView: UIView!
    private var animating: Bool!
    
    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override final func viewDidLoad() {
        super.viewDidLoad()
        if conforms(to: YDFadeViewControllerProtocol.self) {
            child = self as? YDFadeViewControllerProtocol
        } else {
            assert(false, "子类必须实现 'YDSheetViewControllerProtocol' ")
        }
        
        view.backgroundColor = .clear
        createDimmingView()
        child.prt_viewDidLoad()
        showAnimation()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

// MARK: - Private
extension YDFadeViewController {
    private func createDimmingView() {
        dimmingView = { () -> UIView in
            let kView = UIView()
            kView.backgroundColor = .clear
            view.addSubview(kView)
            kView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissAction)))
            return kView
        }()
        dimmingView.snp.makeConstraints { (m) in
            m.edges.equalTo(UIEdgeInsets.zero)
        }
    }
    
    @objc private func dismissAction() {
        if animating {
            return
        }
        dismissAnimation()
    }
    
    private func showAnimation() {
        animating = true
        UIView.animate(withDuration: 0.4) {
            self.dimmingView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
            self.child.customViewsShowAnimation?()
        } completion: { (c) in
            self.animating = false
        }
    }
    
    private func dismissAnimation() {
        animating = true
        UIView.animate(withDuration: 0.4) {
            self.dimmingView.backgroundColor = UIColor.clear
            self.child.customViewsDismissAnimation?()
        } completion: { (c) in
            self.animating = false
            self.dismiss(animated: false, completion: nil)
        }
    }
}

// MARK: - Public
extension YDFadeViewController {
    class func createViewController() -> Self {
        let nav = YDNavigationController()
        nav.modalPresentationStyle = .overCurrentContext
        nav.definesPresentationContext = true
        let vc = self.init()
        nav.addChild(vc)
        return vc
    }
    
    func showViewController(from viewController: UIViewController) {
        viewController.present(self.navigationController!, animated: false, completion: nil)
    }
}
 
