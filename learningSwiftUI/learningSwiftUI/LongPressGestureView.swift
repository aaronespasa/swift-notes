//
//  LongPressView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 27/1/22.
//

import SwiftUI

struct LongPressGestureView: View {
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        Image(systemName: "camera.fill")
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(show ? Color.black : Color.blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(Animation.spring(), value: press)
            .gesture(
                LongPressGesture(minimumDuration: 0.5).updating($press) { currentState, gestureState, transaction in
                    gestureState = currentState
                }
                .onEnded {value in
                    show.toggle()
                }
            )
    }
}

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureView()
    }
}
