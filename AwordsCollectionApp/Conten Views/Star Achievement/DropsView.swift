//
//  DropsView.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct DropsView: View {
    
    let point: Point
    
    var body: some View {
        let dropCGPoints = [
            [
                CGPoint(x: point.firstPointValue,
                        y: point.seventhPointValue),
                CGPoint(x: point.firstPointValue,
                        y: point.eighthPointValue)
            ],
            [
                CGPoint(x: point.secondPointValue,
                        y: point.ninthPointValue),
                CGPoint(x: point.secondPointValue,
                        y: point.tenthPointValue)
            ],
            [
                CGPoint(x: point.fourthPointValue,
                        y: point.seventhPointValue),
                CGPoint(x: point.fourthPointValue,
                        y: point.eighthPointValue)
            ],
            [
                CGPoint(x: point.eleventhPointValue,
                        y: point.twelfthPointValue),
                CGPoint(x: point.eleventhPointValue,
                        y: point.fourteenthPointValue)
            ],
            [
                CGPoint(x: point.thirteenthPointValue,
                        y: point.twelfthPointValue),
                CGPoint(x: point.thirteenthPointValue,
                        y: point.fourteenthPointValue)
            ]
        ]
        
        ForEach(0..<dropCGPoints.count) { dropCGPointsIndex in
            let cgPoints = dropCGPoints[dropCGPointsIndex]
            Path { path in
                path.move(to: cgPoints.first!)
                path.addLine(to: cgPoints.last!)
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
        }        
    }
}

struct DropsView_Previews: PreviewProvider {
    static var previews: some View {
        DropsView(point: Point(size: 200))
    }
}
