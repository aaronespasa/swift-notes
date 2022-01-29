//
//  LazyGridView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct LazyGridView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [
                GridItem(.adaptive(minimum: 110), spacing: 16),
                GridItem(.fixed(30), spacing: 16),
                GridItem(.fixed(80), spacing: 16),
            ], spacing: 16) {
                ForEach(0 ..< 12) { item in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: 200)
                }
            }
            .padding()
        }
        .frame(height: 400)
    }
}

struct LazyGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridView()
    }
}
