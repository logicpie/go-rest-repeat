//
//  ViewController.swift
//  rest-go-repeat
//
//  Created by Adam Price on 28/01/2016.
//  Copyright (c) 2016 Logic Pie. All rights reserved.
//


import UIKit
import ChameleonFramework

class ViewController: UIViewController, TimerProtocol {

    var workoutTimer: WorkoutTimer!
    
    var timerText = 40.0
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cycleTypeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        workoutTimer = WorkoutTimer(withCycles: [40.0, 50.0], andCallback: self)
        workoutTimer.startWorkout()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func onTimerUpdate(time: Double!) {
        label.text = "00:" + String.init(time.roundToPlaces(2))
    }

}
