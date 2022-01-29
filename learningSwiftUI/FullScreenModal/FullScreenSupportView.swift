//
//  FullScreenSupportView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct FullScreenSupportView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("Close Modal")
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
}

struct FullScreenSupportView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenSupportView()
    }
}
