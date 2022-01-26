//
//  TransitionView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 26/1/22.
//

import SwiftUI

struct TransitionView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Capsule().stroke())
            
            if show {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .transition(
                        //.slide
                        //.scale(scale: 0.1, anchor: .bottomTrailing)
                        .move(edge: .bottom)
                    )
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
