//
//  TestImageResizingView.swift
//  Moonshot
//
//  Created by Rodrigo on 16-07-24.
//

import SwiftUI

struct TestImageResizingView: View {
    var body: some View {
        Image(.example)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    TestImageResizingView()
}
