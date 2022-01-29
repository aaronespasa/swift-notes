//
//  BindingView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct BindingView: View {
    @State var show = true
    
    var body: some View {
        ZStack {
            Text("View transition")
                .padding()
                .background(Capsule().stroke())
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
            
            if show {
                NewView(show: $show)
                    .transition(.move(edge: .trailing))
                    .zIndex(1.0)
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
