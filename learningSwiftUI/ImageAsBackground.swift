//
//  ImageAsBackground.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct ImageAsBackground: View {
    var body: some View {
        VStack {
            Text("Color literal")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.565, saturation: 0.939, brightness: 1.0)/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 300, height: 200)
        .background(
            Image("gradient")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .cornerRadius(20)
        .shadow(
            color: Color.blue.opacity(0.3),
            radius: 20,
            x: 0.0,
            y: 10.0
        )
        .shadow(
            color: Color.blue.opacity(0.2),
            radius: 5,
            x: 0.0,
            y: 2
        )
        .overlay(
            Image(systemName: "xmark")
                .foregroundColor(.white)
                .frame(width: 32, height: 32)
                .background(Circle().stroke().foregroundColor(.white))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        )
        
    }
}

struct ImageAsBackground_Previews: PreviewProvider {
    static var previews: some View {
        ImageAsBackground()
    }
}
