//
//  WebLinksView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct WebLinksView: View {
    var body: some View {
//        Link("My Portfolio", destination: URL(string: "https://aaronespasa.com")!)
        Link(destination: URL(string: "https://aaronespasa.com")!) {
            Image(systemName: "link")
                .frame(width: 32, height: 32, alignment: .center)
                .background(Color.blue)
                .mask(Circle())
                .foregroundColor(.white)
        }
    }
}

struct WebLinksView_Previews: PreviewProvider {
    static var previews: some View {
        WebLinksView()
    }
}
