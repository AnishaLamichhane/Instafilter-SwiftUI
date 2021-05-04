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
            print("New blur amount is \(blurAmount)")
        }
    }
    
    
    var body: some View {
        let blur = Binding<CGFloat>(
            get: {
                self.blurAmount
            },
            set: {
                self.blurAmount = $0
                print("New blur amount is \(blurAmount)")
            }
        )
        VStack {
        Text("Hello, world!")
            .blur(radius: blurAmount)
            Slider(value: blur, in: 0...20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
