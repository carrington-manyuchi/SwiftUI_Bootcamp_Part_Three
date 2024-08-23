//
//  ANimationTimingBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ANimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0),
                           value: isAnimating)
            
//                .animation(.spring(), value: isAnimating)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100, alignment: .center)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    ANimationTimingBootcamp()
}
