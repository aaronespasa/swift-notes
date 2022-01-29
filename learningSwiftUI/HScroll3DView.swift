//
//  HScroll3DView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct HScroll3DView: View {
    struct CustomColor {
        static let intenseBlue = Color("intenseBlue")
        static let violet = Color("violet")
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 30)
                            .fill(LinearGradient(gradient: Gradient(colors: [CustomColor.intenseBlue, CustomColor.violet]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .rotation3DEffect(
                                Angle(degrees: Double(geometry.frame(in: .global).minX - 16) / -20),
                                axis: (x: 0.0, y: 1.0, z: 0.0),
                                anchor: .center,
                                anchorZ: 0.0,
                                perspective: 1.0
                            )
                    }
                    .frame(width: 300, height: 300)
                }
            }
            .padding()
        }
    }
}

struct HScroll3DView_Previews: PreviewProvider {
    static var previews: some View {
        HScroll3DView()
    }
}
