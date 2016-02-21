//
// Created by Adam Price on 20/02/2016.
// Copyright (c) 2016 Logic Pie. All rights reserved.
//

import Foundation

class WorkoutTimer {

    var cycles: Array<NSTimeInterval>
    var timer: NSTimer!
    var callback: TimerProtocol
    
    var currentCycle: Double!
    
    var cycleIndex: Int! = 0

    init(withCycles cycles: Array<NSTimeInterval>, andCallback callback: TimerProtocol) {
        self.cycles = cycles;
        self.callback = callback;
    }

    func startWorkout() {
        
        currentCycle = cycles[cycleIndex]
        
        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
    }

    func addInterval(timer: NSTimeInterval) {
        cycles.append(timer)
    }

    func removeInterval(index: Int) {
        cycles.removeAtIndex(index);
    }

    func getCycles() -> Array<NSTimeInterval> {
        return cycles
    }

    @objc func updateTimer(timer: NSTimer) {
        
        currentCycle = currentCycle - timer.timeInterval
        callback.onTimerUpdate(currentCycle)
        
        if (currentCycle.roundToPlaces(2) == 0) {
            cycleIndex = cycleIndex + 1
            currentCycle = cycles[cycleIndex]
        }
        
    }

}
