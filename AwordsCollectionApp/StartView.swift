//
//  StartView.swift
//  AwordsCollectionApp
//
//  Created by Dmitry Shcherbakov on 26.12.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    private let mainColor = Color(red: 148 / 255, green: 229 / 255, blue: 1)
    
    
    var body: some View {

        GeometryReader { geometry in
            Path { path in
                path.move(to: CGPoint(x: 65, y: 40))
                path.addLine(to: CGPoint(x: 100, y: 15))
                
                path.addLine(to: CGPoint(x: 135, y: 40))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8,
                                   lineCap: .round,
                                   lineJoin: .round)
            )
            
            // внутреннее заполнение
            Path { path in
                path.move(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 150, y: 50))
                path.addLine(to: CGPoint(x: 150, y: 130))
                path.addLine(to: CGPoint(x: 100, y: 155))
                path.addLine(to: CGPoint(x: 50, y: 130))
                path.addLine(to: CGPoint(x: 50, y: 50))
            }
            .fill(mainColor)
            .overlay(
                // скругление
                Path { path in
                    path.move(to: CGPoint(x: 150, y: 130))
                    path.addLine(to: CGPoint(x: 100, y: 155))
                    path.addLine(to: CGPoint(x: 50, y: 130))
                    
                }
                .stroke(mainColor,
                        style: StrokeStyle(lineWidth: 8,
                                   lineCap: .round,
                                   lineJoin: .round)
            ))
             
            Path { path in
                path.move(to: CGPoint(x: 50, y: 50))
                path.addLine(to: CGPoint(x: 150, y: 50))
                path.addLine(to: CGPoint(x: 150, y: 150))
                path.addLine(to: CGPoint(x: 100, y: 175))
                path.addLine(to: CGPoint(x: 50, y: 150))
                path.addLine(to: CGPoint(x: 50, y: 50))
            }

            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8,
                                   lineCap: .round,
                                   lineJoin: .round)
            )
            
            
            
            Path { path in
                path.move(to: CGPoint(x: 50, y: 165))
                path.addLine(to: CGPoint(x: 50, y: 170))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 100, y: 190))
                path.addLine(to: CGPoint(x: 100, y: 195))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 150, y: 165))
                path.addLine(to: CGPoint(x: 150, y: 170))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
            
            
            Path { path in
                path.move(to: CGPoint(x: 125, y: 180))
                path.addLine(to: CGPoint(x: 125, y: 185))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
            
            Path { path in
                path.move(to: CGPoint(x: 75, y: 180))
                path.addLine(to: CGPoint(x: 75, y: 185))
            }
            .stroke(
                Color.black,
                style: StrokeStyle(lineWidth: 8, lineCap: .round)
            )
            
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 75, y: 75)
                        .foregroundColor(.white)
            

        }
        .frame(width: 200, height: 200)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
