//
//  YDHomeViewController.swift
//  iphoneCom
//
//  Created by gaoyuan on 2021/5/26.
//

import UIKit
import SnapKit
import Kingfisher
//import YDSwift
//import YDLearn

let Height: CGFloat = 36
let Space: CGFloat = 20
let RightMargin: CGFloat = 50





class YDHomeViewController: YDViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let b = UIColor.RGBValue("#FFB400")
        let aaa = ""
        
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width:kScreenWidth, height: 200))
        textView.backgroundColor = .yellow
        textView.textColor = .black
        view.addSubview(textView)
//        textView.snp.makeConstraints { make in
//            make.top.left.right.equalTo(0)
//            make.height.equalTo(200)
//        }
        
        //<br>换号
        //<div>
        //<ul><li>
        
        /**
                        <ul>
         <li>asdasdaad</li>
         <li>asdasdaad</li>
         <li>asdasdaad</li>
         </ul>
         */
        
        let html = "<div style=\"text-align: left;\"><font size=\"20\" style=\"color: rgb(255, 0, 0);\">gggggggggggggggggggggggggggggggggggggggggggg</font></div>"
        //<div style="text-align: center;"><font size="1" style="color: rgb(255, 0, 0);font-family: xxxx;">gg</font></div>
        
        let data = html.data(using: .unicode)!
        let options: [NSAttributedString.DocumentReadingOptionKey : Any]  = [
                       NSAttributedString.DocumentReadingOptionKey.characterEncoding : String.Encoding.utf8.rawValue,
                       NSAttributedString.DocumentReadingOptionKey.documentType : NSAttributedString.DocumentType.html]
        let htmlString = try?NSAttributedString(data: data, options: options, documentAttributes: nil)
        textView.attributedText = htmlString

        
        return
        
        let interval: TimeInterval = 1263
//        let timeStamp = Date().timeIntervalSince1970 +
        
        let date = Date(timeIntervalSinceNow: interval)
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        let formattedString = formatter.string(from: date)
        print(formattedString)
        
        
        let time = 1263
        let h = Int(time / 60)
        let m = Int(time % 60)
        print("")
        
        let url = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20190811%2F7dc7dc291bea4e94b6b8444cd8687820.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1634464492&t=5ee3401249e6eae619948b4bc6e62e38"
        
        let imageView = { () -> UIImageView in
            let imageView = UIImageView()
            imageView.backgroundColor = .clear
            view.addSubview(imageView)
            return imageView
        }()
        imageView.snp.makeConstraints { m in
            m.size.equalTo(CGSize(width: 100, height: 100))
            m.left.top.equalTo(100)
        }
        imageView.kf.setImage(with: URL(string: url))
        
        
        let btn : UIButton = {
            let button = UIButton()
            button.backgroundColor = .red
            button.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
            view.addSubview(button)
            return button
        }()
        btn.snp.makeConstraints { m in
            m.size.equalTo(CGSize(width: 50, height: 50))
            m.left.top.equalTo(200)
        }
        
        dpEntrance()
        ltEntrance()
    }
    
    @objc func btnAction() {
        print("111")
    }
}

extension YDHomeViewController {
    func ltEntrance() {
//        LTEntrance.solution()
    }
}

extension YDHomeViewController {
    func dpEntrance() {
//        DPEntrance.statusPattern()
    }
}

