//
//  ExtractedSubviewsBootcamp.swift
//  StateWrapper
//
//  Created by Manyuchi, Carrington C on 2024/08/23.
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.mint.ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractedSubviewsBootcamp()
}


struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
