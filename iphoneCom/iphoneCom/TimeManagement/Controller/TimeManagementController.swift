//
//  TimeManagementController.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/12.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit

class TimeManagementController: BaseViewController, UITextViewDelegate {

    let scheme = "click:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textView = BookTextView()
        textView.backgroundColor = .yellow
        view.addSubview(textView)
        textView.delegate = self
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .red
        textView.isEditable = false
        textView.linkTextAttributes = [NSAttributedString.Key.link: ""]
        textView.frame = CGRect(x: 0, y: 300, width: 300, height: 200)
        textView.text = "helloooo,hggello.hello     hsssssello!!hdsfsdfsdello"
        
        let attrStr = NSMutableAttributedString()

        let words = textView.text.regularExpression("[a-zA-Z]+")
        
//        let words = textView.text.split(separator: " ").compactMap { (str) -> String in
//            return String(str)
//        }
        
        for w in words.resultStrs {
            let attrText = NSMutableAttributedString(string: w)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 8
            attrText.addAttributes([
                NSAttributedString.Key.link: "\(scheme)\(w)",
                .foregroundColor: UIColor.red,
                .font: UIFont(name: "ArialMT", size: 15) ?? UIFont.systemFont(ofSize: 15),
                .paragraphStyle: paragraphStyle,
                ], range: NSMakeRange(0, w.count))
            attrStr.append(attrText)
            attrStr.append(NSMutableAttributedString(string: " "))
        }
        
        textView.attributedText = attrStr
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if let scheme = URL.scheme {
            switch scheme {
            case scheme :
                print("\(URL.absoluteString)")
            default:
                print("这个是普通的url")
            }
        }
        
        return true
    }
}

class BookTextView: UITextView {
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return false
    }
}

