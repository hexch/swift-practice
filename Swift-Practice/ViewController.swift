//
//  ViewController.swift
//  Swift-Practice
//
//  Created by 何　暁川 on 2019/10/01.
//  Copyright © 2019 Hexch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =
            collectionView.dequeueReusableCell(withReuseIdentifier:
                "cell", for: indexPath)
        let label = cell.contentView.subviews[0] as? UILabel
        label?.text = String(indexPath.row)
        return cell
    }
    
    
}
extension ViewController:UICollectionViewDelegate{
    
}
