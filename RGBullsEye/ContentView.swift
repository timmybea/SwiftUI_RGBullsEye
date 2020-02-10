//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Tim Beals on 2020-01-03.
//  Copyright © 2020 Roobi Creative. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    Text(/*@START_MENU_TOKEN@*/"Match this color"/*@END_MENU_TOKEN@*/)
                }
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    Text("R: 127 G: 127 B: 127")
                }
            }
            .padding(.horizontal, 20)
            Button(action: {}) {
                Text("Hit Me!")
            }
            Slider(value: .constant(0.5))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5).previewLayout(.fixed(width: 400, height: 400))
    }
}
