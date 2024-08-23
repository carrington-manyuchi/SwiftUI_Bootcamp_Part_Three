//
//  ExtractedFunctionsBotcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
// Keeping our views nice and neat

import SwiftUI

struct ExtractedFunctionsBotcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 50)
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBotcamp()
}
