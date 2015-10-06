//
//  WidgetAPITests.swift
//  WidgetAPITests
//
//  Created by Philip Blackwell on 7/10/2015.
//  Copyright © 2015 Stripy Sock Pty. Ltd. All rights reserved.
//

import XCTest
@testable import WidgetAPI

class WidgetAPITests: XCTestCase {
    
    func testExample() {
        let s = SuperSpecificWidget(surfaceTemperature: 3.5, inferredCoreTemperature: 3)
        XCTAssertEqual(s.inferredCoreTemperature, 3)

        let v = VagueWidget(temperature: 0)
        XCTAssertEqual(v.temperature, 0)
        
        let w = SpecificWidget(calibratedTemperature: 300.123, movingAverageTemperature: 298)
        XCTAssertEqual(w.movingAverageTemperature, 298)
    }

}
