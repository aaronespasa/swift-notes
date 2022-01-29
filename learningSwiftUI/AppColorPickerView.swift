//
//  AppColorPickerView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 29/1/22.
//

import SwiftUI

struct AppColorPickerView: View {
    @State var color = Color.blue
    @State var color2 = Color.purple
    
    var body: some View {
        VStack {
            ColorPicker("Color 1", selection: $color)
            ColorPicker("Color 2", selection: $color2, supportsOpacity: false)
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [
                        color, color2
                    ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
        }
        .padding()
    }
}

struct AppColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        AppColorPickerView()
    }
}
