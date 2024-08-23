//
//  ConditionalBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20, content: {
            
            Button("is Loading: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
           
//            Button(action: {
//                showCircle.toggle()
//            }, label: {
//                Text("Circle Button: \(showCircle.description)")
//            })
//            
//            Button(action: {
//                showRectangle.toggle()
//            }, label: {
//                Text("Rectangle Button: \(showRectangle.description)")
//            })
//            
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 80, height: 80, alignment: .center)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 80, height: 80, alignment: .center)
//            } 
//            
//            if showCircle && showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 80, alignment: .center)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 80, alignment: .center)
//            }
//            
//            Spacer()
        })
    }
}

#Preview {
    ConditionalBootcamp()
}
