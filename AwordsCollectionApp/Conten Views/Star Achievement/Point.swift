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
        firstPointValue = size * 0.25 //50
        secondPointValue = size * 0.5 // 100
        thirdPointValue = size * 0.65
        fourthPointValue = size * 0.75 // 150
        fifthPointValue = size * 0.775
        sixthPointValue = size * 0.875
        seventhPointValue = size * 0.825 //165
        eighthPointValue = size * 0.85// 170
        ninthPointValue = size * 0.95 // 190
        tenthPointValue = size * 0.975 // 195
        eleventhPointValue = size * 0.625//125
        twelfthPointValue = size * 0.9 // 180
        thirteenthPointValue = size * 0.375 // 75
        fourteenthPointValue = size * 0.925 // 185
        fifteenthPointValue = size * 0.325 // 65
        sixteenthPointValue = size * 0.2 // 40
        seventeenthPointValue = size * 0.5 // 100
        eighteenthPointValue = size * 0.075 // 15
        nineteenthPointValue = size * 0.675 // 135
        twentiethPointValue = size * 0.2 // 40
    }
}
