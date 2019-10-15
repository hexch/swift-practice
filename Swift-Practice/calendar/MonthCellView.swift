////  MonthCellView.swift
//  Swift-Practice
//
//  Created by hexch on 2019/10/08.
//  github:https://github.com/hexch
//
//  Copyright © 2019 Hexch. All rights reserved.
//

import UIKit
class MonthCellView:UICollectionViewCell{
    let label = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
