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
                .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
//                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.565, saturation: 0.939, brightness: 1.0)/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 300, height: 200)
        .background(
            Image("gradient")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .cornerRadius(20)
        
    }
}

struct ImageAsBackground_Previews: PreviewProvider {
    static var previews: some View {
        ImageAsBackground()
    }
}
