//
//  ContentView.swift
//  Course-WeSplitApp
//
//  Created by Patryk on 28/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ammount: Double = 0
    @State private var people = 0
    @State private var tipPercentage = 20
    
    @FocusState private var ammountIsFocused: Bool
    
    let tipPercTable = [0, 10, 20, 25]
    
    var totalPerPerson: Double{
        let peopleCount = Double(people) + 2
        let money = (Double(ammount))*(Double(tipPercentage)/100) + Double(ammount)
            return money/peopleCount
    }
    
    var body: some View {
        NavigationView {
                Form {
                    Section {
                        TextField("Ammount: ", value: $ammount, format: .currency(code: Locale.current.currencyCode ?? "PLN"))
                                .keyboardType(.decimalPad)
                                .focused($ammountIsFocused)
                            
                        Picker("Number of people", selection: $people){
                            ForEach(2..<21) {
                                Text("\($0) people")
                            }
                        }
                        
                        
                    }
                    
                    Section {
                        Picker("Tip percentage", selection: $tipPercentage){
                            ForEach(tipPercTable, id: \.self){
                                Text($0, format: .percent)
                            }
                        }
                        .pickerStyle(.segmented)
                    } header: {
                        Text("How much tip do you wany to leave")
                    }
                    
                    Section {
                        Text("\(totalPerPerson) \(Locale.current.currencyCode ?? "PLN") per person")
                    }
                    
                .navigationTitle("We split")
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer ()
                        Button("Done") {
                            ammountIsFocused = false
                        }
                    }
                }
                }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
}
