//
//  ExerciseViewController.swift
//  semesterProjectGroup21
//
//  Created by Andre Andrada on 5/13/19.
//  Copyright © 2019 Group 21. All rights reserved.
//

import Foundation
import UIKit
import Eureka

class ExerciseViewController: FormViewController {
    
    var exToAdd = Exercise(name: "", day: "", sets: "", reps: "", weightUsed: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var exToAdd = Exercise(name: "", day: "", sets: "", reps: "", weightUsed: "", description: "")
        
        let nameRow = TextRow() {
//            $0.title = "Title"
//            $0.placeholder = "Enter title here"
            $0.title = "Name"
            $0.placeholder = "Enter name here"
            $0.onChange { [unowned self] row in
//                self.selectedCar = row.value!
                self.exToAdd.name = row.value!
            }
//            exToAdd.name = row.value!
        }
        
        let dayRow = PushRow<String>() {
            $0.title = "Day"
            $0.options = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
            
            }.onPresent {from, to in
                to.dismissOnSelection = true
                
        }
        
        let setRow = PushRow<String>() {
            $0.title = "Sets"
            $0.options = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
            $0.value = "None"
            }.onPresent {from, to in
                to.dismissOnSelection = true
        }
        
        let repRow = PushRow<String>() {
            $0.title = "Reps"
            $0.options = []
            for i in 1...20 {
                $0.options?.append("\(i)")
            }
            $0.value = "None"
            }.onPresent {from, to in
                to.dismissOnSelection = true
        }
        
        let weightRow = IntRow() {
           
            $0.title = "Weight Used"
            $0.value = 0
            
//            $0.placeholder = ""
        }
        
        let descriptionRow = TextAreaRow() {
            $0.placeholder = "Description"
            
        }
        
        let submitRow = ButtonRow() {
            $0.title = "Submit"
            }.onCellSelection {cell, row in
                // Create object and save to core data
                print("im here bitch")
                
                self.exToAdd.name = nameRow.value!
                self.exToAdd.day = dayRow.value!
                self.exToAdd.sets = setRow.value!
                self.exToAdd.reps = repRow.value!
                self.exToAdd.weightUsed = String(weightRow.value!)
                self.exToAdd.description = descriptionRow.value!

        
                if (self.exToAdd.day == "Monday") {
                    print("fucker")
                    print(self.exToAdd.name)
                    monEx.append(self.exToAdd)
                    self.tableView.reloadData()
                }
                
                print (monEx.count)
                
                self.tableView.reloadData()
                self.viewDidLoad()
                self.viewWillAppear(true)
                
                
                
 self.navigationController?.popViewController(animated: true)
                
                
                
                
        }
        
        
        form +++ Section("Exercise Info")
            <<< nameRow
            <<< dayRow
            <<< setRow
            <<< repRow
            <<< weightRow
            <<< descriptionRow
            <<< submitRow
    }
}
