//
//  ExerciseInfoViewController.swift
//  semesterProjectGroup21
//
//  Created by Andre Andrada on 5/13/19.
//  Copyright © 2019 Group 21. All rights reserved.
//

import UIKit

class ExerciseInfoViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var dayOutlet: UILabel!
    
    @IBOutlet weak var setsOutlet: UILabel!
    
    @IBOutlet weak var repsOutlet: UILabel!
    
    @IBOutlet weak var weightUsedOutlet: UILabel!
    
    @IBOutlet weak var descOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOutlet.text = ""

        print (mySection)
        print (myIndex)
        
        if mySection == 0 { //Sunday
            nameOutlet.text = sunEx[myIndex]
            print(sunEx[myIndex])
        } else if mySection == 1 { //Monday
            nameOutlet.text = monEx[myIndex]
        } else if mySection == 2 { //Tuesday
            nameOutlet.text = tueEx[myIndex]
        } else if mySection == 3 { //Wednesday
            nameOutlet.text = wedEx[myIndex]
        } else if mySection == 4 { //Thursday
            nameOutlet.text = thurEx[myIndex]
        } else if mySection == 5 { //Friday
            nameOutlet.text = friEx[myIndex]
        } else if mySection == 6 { //Saturday
            nameOutlet.text = satEx[myIndex]
        }
        

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
