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
        let dropsPoints = [
            [
                point.firstPointValue, point.seventhPointValue,
                point.firstPointValue, point.eighthPointValue
            ],
            [
                point.secondPointValue, point.ninthPointValue,
                point.secondPointValue, point.tenthPointValue
            ],
            [
                point.fourthPointValue, point.seventhPointValue,
                point.fourthPointValue, point.eighthPointValue
            ],
            [
                point.eleventhPointValue, point.twelfthPointValue,
                point.eleventhPointValue, point.fourteenthPointValue
            ],
            [
                point.thirteenthPointValue, point.twelfthPointValue,
                point.thirteenthPointValue, point.fourteenthPointValue
            ]
        ]
        
        ForEach(0..<dropsPoints.count) { dropPointsIndex in
            let dropPoints = dropsPoints[dropPointsIndex]
            Path { path in
                path.move(to: CGPoint(x: dropPoints[0],
                                      y: dropPoints[1]))
                path.addLine(to: CGPoint(x: dropPoints[2],
                                         y: dropPoints[3]))
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
