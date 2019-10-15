//
//  DummyTable.swift
//  Swift-Practice
//
//  Created by 何　暁川 on 2019/10/02.
//  Copyright © 2019 Hexch. All rights reserved.
//

import Foundation
import RealmSwift

class DummyTable : RealmStore{
    typealias ResultType = Dummy
}

class Dummy : Object{
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
