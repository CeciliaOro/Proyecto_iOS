//
//  TaksViewController.swift
//  Practica6
//
//  Created by MacBook on 7/6/19.
//

import UIKit

class TaksViewController: UIViewController {
    
    var id: Int = 0
    var task: String
    var dueDate: Date
    
    init (task: String, dueDate: Date){
        self.task = task
        self.dueDate = dueDate
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
