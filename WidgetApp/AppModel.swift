//
//  AppModel.swift
//  WidgetApp
//
//  Created by Philip Blackwell on 7/10/2015.
//  Copyright © 2015 Stripy Sock Pty. Ltd. All rights reserved.
//

import Foundation

import WidgetAPI

protocol Widget {
    var temperature: Float { get }
}

struct MockWidget {
    let temperature: Float
}

extension MockWidget: Widget {
    
}

extension SuperSpecificWidget: Widget {
    var temperature: Float {
        get {
            return surfaceTemperature
        }
    }
}

extension SpecificWidget: Widget {
    var temperature: Float {
        get {
            return calibratedTemperature
        }
    }
}

extension VagueWidget: Widget {
    
}
