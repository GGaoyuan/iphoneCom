//
//  YDBaseSheetViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/6/8.
//

import UIKit

class YDBaseSheetViewController: YDViewController {
    
    private var dimmingView: UIView!
    private var animating: Bool!
    var sheetContentView: UIView!
    
    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    internal required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("[Released] \(classForCoder)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        createDimmingView()
        
        show()
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
extension YDBaseSheetViewController {
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
        dismiss()
    }
    
    private func show() {
        animating = true
        UIView.animate(withDuration: 0.4) {
            self.dimmingView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
            self.customViewShowAnimation()
        } completion: { (c) in
            self.animating = false
        }
    }
    
    private func dismiss() {
        animating = true
        UIView.animate(withDuration: 0.4) {
            self.dimmingView.backgroundColor = UIColor.clear
            self.customViewDismissAnimation()
        } completion: { (c) in
            self.animating = false
            self.dismiss(animated: false, completion: nil)
        }
    }
}

// MARK: - Public
extension YDBaseSheetViewController {
    class func showViewController(from viewController: UIViewController) -> Self {
        let nav = YDNavigationController()
        nav.modalPresentationStyle = .overCurrentContext
        nav.definesPresentationContext = true
        let vc = self.init()
        nav.addChild(vc)
        viewController.present(nav, animated: false, completion: nil)
        return vc
    }
    
    @objc func customViewShowAnimation() {}
    @objc func customViewDismissAnimation() {}

}
 
