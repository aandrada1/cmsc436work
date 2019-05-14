//
//  FitnessTableViewController.swift
//  semesterProjectGroup21
//
//  Created by Andre Andrada on 5/13/19.
//  Copyright © 2019 Group 21. All rights reserved.
//

import UIKit

var sunEx = ["Bench Press"]
var monEx = ["Squat"]
var tueEx = ["Sprints"]
var wedEx = ["Deadlift"]
var thurEx = ["Bench"]
var friEx = ["Leg Press"]
var satEx = ["Another Exercise"]

var totalEx = sunEx + monEx + tueEx + wedEx + thurEx + friEx + satEx

var myIndex = 0
var mySection = 0

class FitnessTableViewController: UITableViewController {
    
    let cellId = "cellId"
    
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
//    var totalEx = ["Bench Press", "Squat", "Sprints", "Deadlift", "Bench", "Leg Press", "Another Exercise"]
//    var sunEx = ["Bench Press"]
//    var monEx = ["Squat"]
//    var tueEx = ["Sprints"]
//    var wedEx = ["Deadlift"]
//    var thurEx = ["Bench"]
//    var friEx = ["Leg Press"]
//    var satEx = ["Another Exercise"]
//
//    var totalEx = sunEx + self.monEx + self.tueEx + self.wedEx + self.thurEx + self.friEx + self.satEx

    
    @IBAction func addExercise(_ sender: Any) {
        let vc: ExerciseViewController = ExerciseViewController()
        
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return days.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        if section == 0 {
            label.text = "Sunday"
        } else if section == 1 {
            label.text = "Monday"
        } else if section == 2 {
            label.text = "Tuesday"
        } else if section == 3 {
            label.text = "Wednesday"
        } else if section == 4 {
            label.text = "Thursday"
        } else if section == 5 {
            label.text = "Friday"
        } else if section == 6 {
            label.text = "Saturday"
        }
        label.backgroundColor = UIColor.lightGray
        return label
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
//        if section == 0 {
//            return totalEx.count
//        }
        if section == 0 {
            return sunEx.count
        } else if section == 1 {
            return monEx.count
        } else if section == 2 {
            return tueEx.count
        } else if section == 3 {
            return wedEx.count
        } else if section == 4 {
            return thurEx.count
        } else if section == 5 {
            return friEx.count
        } else if section == 6 {
            return satEx.count
        }
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        var name = ""

//        let name = self.days[indexPath.row]
        if indexPath.section == 0 { //Sunday
            name = sunEx[indexPath.row]
        } else if indexPath.section == 1 { //Monday
            name = monEx[indexPath.row]
        } else if indexPath.section == 2 { //Tuesday
            name = tueEx[indexPath.row]
        } else if indexPath.section == 3 { //Wednesday
            name = wedEx[indexPath.row]
        } else if indexPath.section == 4 { //Thursday
            name = thurEx[indexPath.row]
        } else if indexPath.section == 5 { //Friday
            name = friEx[indexPath.row]
        } else if indexPath.section == 6 { //Saturday
            name = satEx[indexPath.row]
        }
        cell.textLabel?.text = name
        cell.textLabel?.text = "\(name) Section:\(indexPath.section) Row: \(indexPath.row)"
        
        return cell
    }

    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        myIndex = indexPath.row
        mySection = indexPath.section
        
        print("Floop")
        print(myIndex)
        print(mySection)
        
        performSegue(withIdentifier: "fitnessSegue", sender: self)
    }
}
