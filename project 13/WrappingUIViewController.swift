//
//  WrappingUIViewController.swift
//  project 13
//
//  Created by Anisha Lamichhane on 6/15/21.
//

import SwiftUI

struct WrappingUIViewController: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                self.showingImagePicker = true
            }
            
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker()
        }
    }
}

struct WrappingUIViewController_Previews: PreviewProvider {
    static var previews: some View {
        WrappingUIViewController()
    }
}
