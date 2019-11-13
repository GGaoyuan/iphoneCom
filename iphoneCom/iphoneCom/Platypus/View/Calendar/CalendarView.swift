//
//  CalendarView.swift
//  iphoneCom
//
//  Created by 高源 on 2019/11/13.
//  Copyright © 2019 高源. All rights reserved.
//

import UIKit
import SnapKit

class CalendarView: UIView {
    
    var collectionView: UICollectionView!
    var flowLayout: UICollectionViewFlowLayout!
    
    convenience init(begin: String, end: String) {
        self.init(frame: .zero)
        backgroundColor = .white
        
        let header = CalendarHeaderView()
        
        flowLayout = UICollectionViewFlowLayout()
//        flowLayout.headerReferenceSize = CGSize(width: kScreenW, height: 100)
//        flowLayout.footerReferenceSize = CGSize.zero
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (m) in
            m.edges.equalToSuperview()
        }
        collectionView.register(UINib.init(nibName: String(describing: CalendarViewCell.self), bundle: nil), forCellWithReuseIdentifier: CalendarViewCellIdentify)
    }
}


extension CalendarView: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CalendarViewCellIdentify, for: indexPath)
        return cell
    }
}
