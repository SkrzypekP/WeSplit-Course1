//
//  ContentView.swift
//  Course-WeSplitApp
//
//  Created by Patryk on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    let clients = ["Januszex", "Mirex", "Polex"]
    @State private var selectedClient = "Januszex"
    
    var body: some View {
        NavigationView{
            Form{
                Picker("Select your Client", selection: $selectedClient) {
                    ForEach(clients, id: \.self){
                        Text($0)
                    }
                }
            }
            .navigationTitle("Clients database")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
