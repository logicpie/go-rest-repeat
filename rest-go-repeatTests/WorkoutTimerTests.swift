//
// Created by Adam Price - myBBC on 20/02/2016.
// Copyright (c) 2016 Logic Pie. All rights reserved.
//

import XCTest

class WorkoutTimerTests: XCTestCase {

    let timer = WorkoutTimer()

    override func setUp() {
        super.setUp()
    }

    func testAddTimer() {
        let date = NSDate()
        timer.addTimer(date)

        timer.getCycles().capacity
    }

    func testRemoveTimer() {

    }

}
