//
//  ContentView.swift
//  Course-WeSplitApp
//
//  Created by Patryk on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count: Int = 0

    
    var body: some View {
                
        Button("Tap Count \(count)") {
            count += 1
            print(count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

