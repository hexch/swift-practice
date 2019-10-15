////  MonthView.swift
//  Swift-Practice
//
//  Created by hexch on 2019/10/07.
//  github:https://github.com/hexch
//
//  Copyright © 2019 Hexch. All rights reserved.
//

import UIKit

class MonthView: UIView {
    @IBOutlet weak var calendarView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
        setupLayout()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    private func setup(){
        calendarView.delegate = self
        calendarView.dataSource = self
        calendarView.register(MonthCellView.self, forCellWithReuseIdentifier: "cell")
    }
    private func setupLayout(){
        
    }
}

extension MonthView:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "cell", for: indexPath) as! MonthCellView
        cell.label.text = String(indexPath.row)
        cell.label.textColor = .black
        return cell
    }
    
    
}
extension MonthView:UICollectionViewDelegate{
    
}


