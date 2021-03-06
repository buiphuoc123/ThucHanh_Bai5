//
//  ViewController.swift
//  Bai5
//
//  Created by Cntt05 on 7/5/17.
//  Copyright © 2017 Cntt05. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let person = Person(fullName: "Ho Bui Phuoc")
        
        print (person.fullName)
        
        let xyz1 = XYZ(name: "Bui Phuoc", prefix: nil)
        print(xyz1.fullName)
        
        let xyz2 = XYZ(name: "Bui Phuoc", prefix: "Ho")
        print(xyz2.fullName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

class XYZ: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        if prefix != nil {
            return prefix! + " " + name
        } else {
            return name
        }
    }
}

