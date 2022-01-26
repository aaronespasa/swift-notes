//
//  AnimationModifierView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 26/1/22.
//

import SwiftUI

struct AnimationModifierView: View {
    @State var show = false
    @State var privRectOffset = 0
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.5 : 0.2)
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.4, dampingFraction: 0.6))
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .foregroundColor(.white)
                .shadow(radius: 40)
                .padding()
                .animation(.timingCurve(0.2, 0.8, 0.2, 1.0, duration: 0.8))
        }
        .onTapGesture {
            withAnimation(.linear(duration: 0.8)) {
                show.toggle()
            }
        }
    }
}

struct AnimationModifierView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationModifierView()
    }
}
