//
//  RecapBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//
/// Sheets() vs transitions() vs animations() WHich method is better?
///

import SwiftUI

struct RecapBootcamp: View {
    
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("Button") {
                    
                    withAnimation {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // MARK: -  SHEET
            //            .fullScreenCover(isPresented: $showNewScreen, content: {
            //                NewScreen()
            //            })
            
            //            .sheet(isPresented: $showNewScreen, content: {
            //                NewScreen()
            //            })
            
            // MARK: - METHOD 2 - TRANSITION
            
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            
            // MARK: - METHOD 2 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
        }
    }
}

#Preview {
    RecapBootcamp()
    //NewScreen()
}



struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading, content: {
                Color.purple
                    .ignoresSafeArea()
                
                VStack {
                    Button(action: {
                       //presentationMode.wrappedValue.dismiss()
                        showNewScreen.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .padding()
                    })
                }
        })
    }
}
