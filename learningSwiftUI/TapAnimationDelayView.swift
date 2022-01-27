//
//  TapAnimationDelayView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 27/1/22.
//

import SwiftUI

struct TapAnimationDelayView: View {
    struct CustomColor {
        static let intenseBlue = Color("intenseBlue")
        static let violet = Color("violet")
    }
    
    @State var tap = false
    
    var body: some View {
        VStack {
            Text("View more")
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [CustomColor.violet, CustomColor.intenseBlue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(
            color: CustomColor.intenseBlue.opacity(tap ? 0.6 : 0.3),
            radius: tap ? 20 : 10,
            x: 0,
            y: tap ? 10 : 20
        )
        .scaleEffect(tap ? 1.2 : 1)
        .onTapGesture {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.6)){
                tap = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.spring(response: 0.4, dampingFraction: 0.6)){
                    tap = false
                }
            }
        }
    }
}

struct TapAnimationDelayView_Previews: PreviewProvider {
    static var previews: some View {
        TapAnimationDelayView()
    }
}
