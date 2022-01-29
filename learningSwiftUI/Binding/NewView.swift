//
//  NewView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct NewView: View {
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .padding()
            .onTapGesture {
                withAnimation(.spring()) {
                    // This line of code changes the original variable
                    show.toggle()
                }
            }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView(show: .constant(true))
    }
}
