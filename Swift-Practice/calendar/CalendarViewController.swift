////  CalendarViewController.swift
//  Swift-Practice
//
//  Created by hexch on 2019/10/08.
//  github:https://github.com/hexch
//
//  Copyright © 2019 Hexch. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let monthView = Bundle.main.loadNibNamed("MonthView", owner: nil, options: nil)?.last as? MonthView else {return}

        self.view.addSubview(monthView)
        self.view.translatesAutoresizingMaskIntoConstraints = false
        monthView.translatesAutoresizingMaskIntoConstraints = false
        monthView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
