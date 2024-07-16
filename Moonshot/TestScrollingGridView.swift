//
//  TestScrollingGridView.swift
//  Moonshot
//
//  Created by Rodrigo on 16-07-24.
//

import SwiftUI

struct TestScrollingGridView: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    TestScrollingGridView()
}
