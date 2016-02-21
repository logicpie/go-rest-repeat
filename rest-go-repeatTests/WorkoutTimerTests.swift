//
// Created by Adam Price on 20/02/2016.
// Copyright (c) 2016 Logic Pie. All rights reserved.
//

import XCTest

class WorkoutTimerTests: XCTestCase {

    var cycles: Array<NSTimeInterval>!
    var timer: WorkoutTimer!
    
    var callbackMock: CallbackMock!

    override func setUp() {
        super.setUp()

        callbackMock = CallbackMock()
        cycles = [40.0, 50.0]
        timer = WorkoutTimer(withCycles: cycles, andCallback: callbackMock)
        timer.startWorkout()
    }

    func testAddTimer() {
        let time = 40.0
        timer.addInterval(time)
        XCTAssertEqual(3, timer.getCycles().count)
    }

    func testRemoveTimer() {
        timer.removeInterval(1)
        XCTAssertEqual(1, timer.getCycles().count)
    }
    
    func testGetCycles() {
        XCTAssertEqual(cycles, timer.getCycles())
    }

}
