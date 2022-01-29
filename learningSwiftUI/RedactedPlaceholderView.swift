//
//  RedactedPlaceholderView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct RedactedPlaceholderView: View {
    struct CustomColor {
        static let intenseBlue = Color("intenseBlue")
        static let violet = Color("violet")
    }
    @State var isLoading = true
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [CustomColor.intenseBlue, CustomColor.violet]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            CardView()
                .redacted(reason: isLoading ? .placeholder : .init())
                .onAppear {
                    // The following code will be the API loading
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isLoading = false
                    }
                }
        }
    }
}

struct RedactedPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedPlaceholderView()
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image("studio")
                .resizable().aspectRatio(contentMode: .fit)
                .mask(Circle())
                .frame(width: 44, height: 44)
            Text("Designing fluid interfaces")
                .font(.title2).bold()
            Text("By Aaron Espasandin".uppercased())
                .font(.footnote).bold()
                .foregroundColor(.secondary)
            Text("Discover the techniques used to create the fluid gestural interface of iPhone X. Learn how to design with gestures and motion that feel intuitive and natural, making your app a delight to use.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(Color.white)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 40)
        .padding()
    }
}
