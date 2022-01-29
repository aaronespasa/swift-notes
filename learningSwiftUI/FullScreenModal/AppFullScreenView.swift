//
//  AppFullScreenView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct AppFullScreenView: View {
    @State var showModal = false
    
    var body: some View {
        Text("Show Modal")
            .fullScreenCover(isPresented: $showModal, content: {
                FullScreenSupportView()
            })
            .onTapGesture {
                showModal = true
            }
    }
}

struct AppFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AppFullScreenView()
    }
}
