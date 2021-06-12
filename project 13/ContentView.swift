//
//  ContentView.swift
//  project 13
//
//  Created by Anisha Lamichhane on 5/4/21.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount: CGFloat = 0 {
        didSet {
            print("The new value is \(blurAmount)")
        }
    }
       
    
    var body: some View {
        VStack {
        Text("Hello, world!")
            .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 1...100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
