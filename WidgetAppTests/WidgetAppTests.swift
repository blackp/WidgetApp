//
//  WidgetAppTests.swift
//  WidgetAppTests
//
//  Created by Philip Blackwell on 7/10/2015.
//  Copyright © 2015 Stripy Sock Pty. Ltd. All rights reserved.
//

import XCTest
@testable import WidgetApp
@testable import WidgetAPI

class WidgetAppTests: XCTestCase {
    
    func testAppExample() {
        let v = VagueWidget(temperature: 0)
        XCTAssertEqual(v.temperature, 0)
        
        let w: Widget = SpecificWidget(calibratedTemperature: 300.123, movingAverageTemperature: 298)
        XCTAssertEqual(w.temperature, 300.123)
    }
    
}
