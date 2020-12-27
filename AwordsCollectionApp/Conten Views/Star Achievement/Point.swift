//
//  Point.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct Point {
    
    let firstPointValue: CGFloat
    let secondPointValue: CGFloat
    let thirdPointValue: CGFloat
    let fourthPointValue: CGFloat
    let fifthPointValue: CGFloat
    let sixthPointValue: CGFloat
    let seventhPointValue: CGFloat
    let eighthPointValue: CGFloat
    let ninthPointValue: CGFloat
    let tenthPointValue: CGFloat
    let eleventhPointValue: CGFloat
    let twelfthPointValue: CGFloat
    let thirteenthPointValue: CGFloat
    let fourteenthPointValue: CGFloat
    let fifteenthPointValue: CGFloat
    let sixteenthPointValue: CGFloat
    let seventeenthPointValue: CGFloat
    let eighteenthPointValue: CGFloat
    let nineteenthPointValue: CGFloat
    let twentiethPointValue: CGFloat
    
    init(size: CGFloat) {
        firstPointValue = size * 0.25
        secondPointValue = size * 0.5
        thirdPointValue = size * 0.65
        fourthPointValue = size * 0.75
        fifthPointValue = size * 0.775
        sixthPointValue = size * 0.875
        seventhPointValue = size * 0.825
        eighthPointValue = size * 0.85
        ninthPointValue = size * 0.95
        tenthPointValue = size * 0.975
        eleventhPointValue = size * 0.625
        twelfthPointValue = size * 0.9
        thirteenthPointValue = size * 0.375
        fourteenthPointValue = size * 0.925
        fifteenthPointValue = size * 0.325
        sixteenthPointValue = size * 0.2
        seventeenthPointValue = size * 0.5
        eighteenthPointValue = size * 0.075
        nineteenthPointValue = size * 0.675
        twentiethPointValue = size * 0.2
    }
}
