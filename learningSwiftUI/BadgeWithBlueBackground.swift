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
            AnimateBackground()
                .ignoresSafeArea(.all)
                .blur(radius: 50)
                .scaleEffect(1.5)
            VStack {
                Image("studio")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                Text("Aaron Espasandin")
                    // list of fonts: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography/
                    .font(.custom("Lobster-Regular", size: 32))
                    .fontWeight(.bold)
                    //.lineSpacing(10.0)
                    //.lineLimit(1)
                    //.multilineTextAlignment(.center)
                Text("Computer Vision Engineer")
                    .foregroundColor(Color.secondary)
                Divider()
                Capsule()
                    .fill(Color.blue)
                    .frame(height: 44)
                    .overlay(
                        Text("Follow")
                            .foregroundColor(Color.white)
                            .bold()
                    )
            }
            .padding()
            .frame(width: 300, height: 250)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
        
    }
}

struct AnimateBackground: View {
    @State var start = UnitPoint(x: 0, y: -2)
    @State var end = UnitPoint(x: 4, y: 0)
    
    let timer = Timer.publish(every: 1, on: .main, in: .default).autoconnect()
    let colors = [Color.blue, Color.purple, Color.pink]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
            .animation(
                Animation.easeInOut(duration: 3).repeatForever(),
                value: start
            )
            .onReceive(timer, perform: { _ in
                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y: 2)
                self.start = UnitPoint(x: -4, y: 20)
                self.start = UnitPoint(x: 4, y: 0)
            })
        
    }
    
}

struct BadgeWithBlueBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeWithBlueBackground()
    }
}
