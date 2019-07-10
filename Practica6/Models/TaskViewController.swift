//
//  TaskViewController.swift
//  Practica6
//
//  Created by MacBook on 7/7/19.
//

import UIKit

class TaskModel {

    var id: Int = 0
    var task: String
    var dueDate: Date
    
    init (task: String, dueDate: Date){
        self.task = task
        self.dueDate = dueDate
    }

}
