//
//  ToolbarView.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct ToolbarView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Image(systemName: "person")
                        Spacer()
                        HStack {
                            Image(systemName: "ellipsis")
                            Divider()
                            Image(systemName: "person")
                                .foregroundColor(Color.white)
                                .frame(width: 32, height: 32)
                                .background(Color.blue)
                                .mask(Circle())
                        }
                    }
                }
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
