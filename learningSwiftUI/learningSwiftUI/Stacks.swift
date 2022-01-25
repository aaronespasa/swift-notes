//
//  Stacks.swift
//  learningSwiftUI
//
//  Created by Aarón Espasandín on 25/1/22.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        HStack {
            VStack {
                Text("VStack")
                    .font(.title)
                    .fontWeight(.bold)
                Text("(leading)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
            }
            .padding(.top)
            .frame(width: 125, height: 200, alignment: .top)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.544, brightness: 0.973)/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            VStack {
                Text("VStack")
                    .font(.title)
                    .fontWeight(.bold)
                Text("(trailing)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                HStack {
                    
                }
            }
            .padding(.top)
            .frame(width: 170, height: 150, alignment: .top)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 320, height: 300)
        .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.896)/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
