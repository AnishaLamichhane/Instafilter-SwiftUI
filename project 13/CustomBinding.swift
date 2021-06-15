//
//  CustomBinding.swift
//  project 13
//
//  Created by Anisha Lamichhane on 6/14/21.
//

import SwiftUI

struct CustomBinding: View {
    @State private var blurAmount: CGFloat = 0
    var body: some View {
        
        let blur = Binding<CGFloat>(
            get:  {
                self.blurAmount
            },
        set: {
            self.blurAmount = $0
            print("New value is \(self.blurAmount)")
        }
        )
        
       return VStack {
        Text("Hello, world!")
            .blur(radius: blurAmount)
            
            Slider(value: blur, in: 1...100)
        }
       
    }
}

struct CustomBinding_Previews: PreviewProvider {
    static var previews: some View {
        CustomBinding()
    }
}
