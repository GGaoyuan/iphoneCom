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
    
    let daysHeight: CGFloat = 50
    
    var collectionView: UICollectionView!
    var flowLayout: UICollectionViewFlowLayout!
    
    convenience init(begin: String, end: String) {
        self.init(frame: .zero)
        backgroundColor = .white
        
        let daysView = CalendarDaysView()
        addSubview(daysView)
        daysView.snp.makeConstraints { (m) in
            m.left.top.right.equalToSuperview()
            m.height.equalTo(daysHeight)
        }
        
        flowLayout = UICollectionViewFlowLayout()
        //items
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.itemSize = CGSize(width: (kScreenW / 7), height: 40)
        //header
        flowLayout.headerReferenceSize = CGSize(width: kScreenW, height: 100)
//        flowLayout.footerReferenceSize = CGSize.zero
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (m) in
            m.top.equalTo(daysView.snp_bottom)
            m.left.bottom.right.equalToSuperview()
        }
        collectionView.register(UINib.init(nibName: String(describing: CalendarViewCell.self), bundle: nil), forCellWithReuseIdentifier: CalendarViewCellIdentify)
        collectionView.register(UINib.init(nibName: String(describing: CalendarViewHeader.self), bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CalendarViewHeaderIdentify)
    }
}


extension CalendarView: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CalendarViewCellIdentify, for: indexPath)
        return cell
    }
}
