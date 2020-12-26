//
//  BodyView.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct BodyView: View {
    
    private let bodyColor = Color(red: 148 / 255, green: 229 / 255, blue: 1)
    
    let point: Point
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: point.firstPointValue,
                                  y: point.firstPointValue))
            path.addLine(to: CGPoint(x: point.fourthPointValue,
                                     y: point.firstPointValue))
            path.addLine(to: CGPoint(x: point.fourthPointValue,
                                     y: point.thirdPointValue))
            path.addLine(to: CGPoint(x: point.secondPointValue,
                                     y: point.fifthPointValue))
            path.addLine(to: CGPoint(x: point.firstPointValue,
                                     y: point.thirdPointValue))
            path.addLine(to: CGPoint(x: point.firstPointValue,
                                     y: point.firstPointValue))
        }
        .fill(bodyColor)
        .overlay(
            Path { path in
                path.move(to: CGPoint(x: point.fourthPointValue,
                                      y: point.thirdPointValue))
                path.addLine(to: CGPoint(x: point.secondPointValue,
                                         y: point.fifthPointValue))
                path.addLine(to: CGPoint(x: point.firstPointValue,
                                         y: point.thirdPointValue))
            }
            .stroke(
                bodyColor,
                style: StrokeStyle(lineWidth: 8, lineJoin: .round)
            )
        )
        
        Path { path in
            path.move(to: CGPoint(x: point.firstPointValue,
                                  y: point.firstPointValue))
            path.addLine(to: CGPoint(x: point.fourthPointValue,
                                     y: point.firstPointValue))
            path.addLine(to: CGPoint(x: point.fourthPointValue,
                                     y: point.fourthPointValue))
            path.addLine(to: CGPoint(x: point.secondPointValue,
                                     y: point.sixthPointValue))
            path.addLine(to: CGPoint(x: point.firstPointValue,
                                     y: point.fourthPointValue))
            path.addLine(to: CGPoint(x: point.firstPointValue,
                                     y: point.firstPointValue))
        }
        .stroke(
            Color.black,
            style: StrokeStyle(lineWidth: 8,
                               lineCap: .round,
                               lineJoin: .round)
        )
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView(point: Point(size: 200))
    }
}
