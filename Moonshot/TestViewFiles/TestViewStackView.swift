//
//  TestViewStackView.swift
//  Moonshot
//
//  Created by Rodrigo on 16-07-24.
//

import SwiftUI

struct TestViewStackView: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is the label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
                .font(.largeTitle)
            }
            .navigationTitle("SwiftUI")
            
            // NavegationLink in a List
            List(0..<100) { row in
                NavigationLink("row \(row)") {
                    Text("Detail \(row)")
                }
            }
        }
    }
}

#Preview {
    TestViewStackView()
}
