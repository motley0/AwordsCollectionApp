//
//  StartView.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.height,
                           geometry.size.width)
            let point = Point(size: size)
            
            CapView(point: point)
            BodyView(point: point)
            DropsView(point: point)
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: point.firstPointValue,
                       height: point.firstPointValue)
                .offset(x: point.thirteenthPointValue,
                        y: point.thirteenthPointValue)
                .foregroundColor(.white)
        }
        .frame(width: width, height: height)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(width: 200, height: 200)
    }
}
