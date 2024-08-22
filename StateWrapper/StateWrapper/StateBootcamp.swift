//
//  StateBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.gray
    @State var myTitle: String  = "My Title"
    @State var count: Int = 5
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("\(myTitle)")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStackLayout(spacing: 20) {
                    Button(action: {
                        backgroundColor = .red
                        myTitle = "Button one was pressed."
                        count = 60
                    }, label: {
                        Text("Button One")
                    })
                    
                    Button("Button Two") {
                        backgroundColor = .green
                        myTitle = "Button two was pressed"
                        count = 85
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
