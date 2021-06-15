//
//  ContentView.swift
//  project 13
//
//  Created by Anisha Lamichhane on 5/4/21.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
    @State private var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
        }
        .onAppear(perform: loadImage)
    }
    
    func loadImage() {
        guard let inputImage = UIImage(named: "Example") else { return}
        let beginImage = CIImage(image: inputImage)
//        we’ll create the context and filter
//        contexts handle converting that processed data into a CGImage we can work with.
        let context = CIContext()
        let currentFilter = CIFilter.twirlDistortion()
        
        
        currentFilter.inputImage = beginImage
        currentFilter.radius = 200
    
        // get a CIImage from our filter or exit if that fails
        guard let outputImage  = currentFilter.outputImage else { return }
        
        // attempt to get a CGImage from our CIImage
        if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
            // convert that to a UIImage
            let uiImage = UIImage(cgImage: cgimg)
            // and convert that to a SwiftUI image
            image = Image(uiImage: uiImage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
