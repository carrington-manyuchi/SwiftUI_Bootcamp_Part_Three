//
//  TransitionsBootcample.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom, content: {
            VStack {
                Button("Button") {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.opacity)
            }
                    
        })
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionsBootcamp()
}
