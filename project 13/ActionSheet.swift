//
//  ActionSheet.swift
//  project 13
//
//  Created by Anisha Lamichhane on 6/14/21.
//

import SwiftUI
import UIKit


struct ActionSheet: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        NavigationView {
            Text("Hello World")
                .frame(width: 300, height: 300, alignment: .center)
                .background(backgroundColor)
                .onTapGesture{
                    self.showingActionSheet.toggle()
                }
              /*
                .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                        .default(Text("Red")) { self.backgroundColor = .red },
                        .default(Text("Green")) { self.backgroundColor = .green },
                        .default(Text("Blue")) { self.backgroundColor = .blue },
                        .cancel()
                    ])

                }
             */
        }
    }
    
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheet()
    }
}
