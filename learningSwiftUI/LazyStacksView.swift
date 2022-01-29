//
//  LazyStacksView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct LazyStacksView: View {
    var body: some View {
        ScrollView {
            // The lazy stack is not going to render the rectangles that are
            // not in the view (we can also use LazyVGrid)
            LazyVStack {
                ForEach(0 ..< 20) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 100)
                    .shadow(radius: 100)
                }
            }
            .padding()
        }
    }
}

struct LazyStacksView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacksView()
    }
}
