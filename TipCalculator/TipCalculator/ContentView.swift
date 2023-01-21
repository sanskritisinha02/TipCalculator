//
//  ContentView.swift
//  TipCalculator
//
//  Created by Sanskriti Sinha on 21/01/23.
//

import SwiftUI

struct ContentView: View {
    @State var total = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            
            HStack {
                Text("$")
                TextField("Amount", text: $total)
            }
            
            HStack{
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            
            if let totalNum = Double(total){
                Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
            }
            else {
                Text("Please enter a numeric value.")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
