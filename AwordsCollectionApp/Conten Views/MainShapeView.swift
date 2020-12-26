//
//  ContentView.swift
//  AwordsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct MainShapeView: View {
    @State private var showShape = false
    
    var body: some View {
        VStack {
            Button(action: { withAnimation { showShape.toggle() }}) {
                HStack {
                    Text(showShape ? "Hide Shape" : "Show Shape")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(showShape ? 2 : 1)
                        .rotationEffect(.degrees(showShape ? 0 : 180))
                }
            }
            
            Spacer()
            
            if showShape {
                StartView(width: 250, height: 250)
                    .animation(.default)
                    .transition(.transition)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct MainShapeView_Previews: PreviewProvider {
    static var previews: some View {
        MainShapeView()
    }
}
