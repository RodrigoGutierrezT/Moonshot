//
//  TestScrollView.swift
//  Moonshot
//
//  Created by Rodrigo on 16-07-24.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct TestScrollView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText(text: "Item \($0)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    TestScrollView()
}
