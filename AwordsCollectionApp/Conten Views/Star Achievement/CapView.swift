//
//  CapView.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct CapView: View {
    
    let point: Point
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: point.fifteenthPointValue,
                                  y: point.sixteenthPointValue))
            path.addLine(to: CGPoint(x: point.seventeenthPointValue,
                                     y: point.eighteenthPointValue))
            path.addLine(to: CGPoint(x: point.nineteenthPointValue,
                                     y: point.twentiethPointValue))
        }
        .stroke(
            Color.black,
            style: StrokeStyle(lineWidth: 8,
                               lineCap: .round,
                               lineJoin: .round)
        )
    }
}

struct CapView_Previews: PreviewProvider {
    static var previews: some View {
        CapView(point: Point(size: 200))
    }
}
