//
//  TutorialsView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct TutorialsView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.purple)
                .ignoresSafeArea()
            VStack {
                Text("Tutorials")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .navigationTitle("Tutorials")
            }
            .padding()
            .frame(width: 250, height: 100)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }

    }
}

struct TutorialsView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialsView()
.previewInterfaceOrientation(.landscapeLeft)
    }
}
