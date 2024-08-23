//
//  SheetsBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
/// Sheets are a segue that pops up from the bottom infront of our current screen so that we can present a new screen on top.
/// Basically a transition from one screen to another - presents a new screen as a pop up
///  By default sheets have a really nice UI and they look very professional in apps

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Button")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white)
                        .cornerRadius(10)
                })
                .fullScreenCover(isPresented: $showSheet,content: {
                    SecondScreen()
                })
                
//                .sheet(isPresented: $showSheet, content: {
//                    SecondScreen()
//                })

                
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}



struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
            Color.red
                .ignoresSafeArea(.all)
            VStack {
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding(20)
                        .cornerRadius(10)
                })
            }
        })
    }
}
