//
//  BadgeWithBlueBackground.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct BadgeWithBlueBackground: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            VStack {
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Text("Aarón Espasandín")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("UI Designer")
                    .foregroundColor(Color.secondary)
                Capsule()
                    .fill(Color.green)
                    .frame(height: 44)
                    .overlay(
                        Text("Sign up")
                            .foregroundColor(Color.white)
                            .bold()
                    )
            }
            .padding()
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
        
    }
}

struct BadgeWithBlueBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeWithBlueBackground()
    }
}
