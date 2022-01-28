//
//  WithAnimationView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct WithAnimationView: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color(hue: 0.749, saturation: 1.0, brightness: 1.0))
        .cornerRadius(30)
        .shadow(color: Color(hue: 0.749, saturation: 1.0, brightness: 1.0, opacity: 0.5), radius: 20)
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }

}

struct WithAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        WithAnimationView()
    }
}
