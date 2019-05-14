//
//  AssignmentEditViewController.swift
//  semesterProjectGroup21
//
//  Created by Isiah Manns on 5/13/19.
//  Copyright © 2019 Group 21. All rights reserved.
//

import UIKit
import Eureka

class AssignmentEditViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleRow = TextRow() {
            $0.title = "Title"
            $0.placeholder = "Enter title here"
        }
        
        let classRow = PushRow<String>() {
            $0.title = "Class"
            $0.options = ["CMSC330", "AASP441", "ENGL201"]
            }.onPresent {from, to in
                to.dismissOnSelection = true
        }
        
        let projectRow = PushRow<String>() {
            $0.title = "Project"
            $0.options = ["None", "Twitter Simulation", "Short Story #2"]
            $0.value = "None"
            }.onPresent {from, to in
                to.dismissOnSelection = true
        }
        
        let priorityRow = SegmentedRow<String>() {
            $0.title = "Priority         "
            $0.options = ["None", "!", "!!", "!!!"]
            $0.value = "None"
            }
        
        let dateNeededRow = SwitchRow("switchTag1") {
            $0.title = "Remind me on a day"
        }
        
        let dateRow = DateTimeInlineRow() {
            $0.hidden = Condition.function(["switchTag1"], { form in
                return !((form.rowBy(tag: "switchTag1") as? SwitchRow)?.value ?? false)
            })
            
            $0.title = "Due Date"
        }
        
        let descriptionRow = TextAreaRow() {
            $0.placeholder = "Description"
        }
        
        let submitRow = ButtonRow() {
            $0.title = "Submit"
            }.onCellSelection {cell, row in
                // Create object and save to core data
                
                
            }
        
        form +++ Section("Assignment Info")
            <<< titleRow
            <<< classRow
            <<< projectRow
            <<< priorityRow
            <<< dateNeededRow
            <<< dateRow
            <<< descriptionRow
            <<< submitRow
    }
}
