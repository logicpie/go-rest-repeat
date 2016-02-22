//
//  DoubleExtension.swift
//  rest-go-repeat
//
//  Created by Adam Price - myBBC on 21/02/2016.
//  Copyright © 2016 Logic Pie. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}
