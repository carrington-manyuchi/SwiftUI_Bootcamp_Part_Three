//
//  BindingBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                    .font(.title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBootcamp()
}

struct ButtonView: View {
    @Binding var  backgroundColor: Color
    @State var buttonColor: Color = Color.red
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .mint
            buttonColor = .yellow
            title = " This is new title"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
