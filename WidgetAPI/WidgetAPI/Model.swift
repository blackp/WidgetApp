//
//  Model.swift
//  WidgetAPI
//
//  Created by Philip Blackwell on 7/10/2015.
//  Copyright © 2015 Stripy Sock Pty. Ltd. All rights reserved.
//

import Foundation

public struct VagueWidget {
    public let temperature: Float
}

public struct SpecificWidget {
    public let calibratedTemperature: Float
    public let movingAverageTemperature: Float
}

public struct SuperSpecificWidget {
    public let surfaceTemperature: Float
    public let inferredCoreTemperature: Int?
}
