//
//  CalculatorButton.swift
//  CalculatorApp
//
//  Created by Leonard McCook-Carr on 11/17/22.
//

import SwiftUI

struct CalculatorButton: View {
    @EnvironmentObject var calculator: Calculator
    var label: String
    var color: Color
    
    var body: some View {
        Button(action: {
            // Inform model of button press
            calculator.buttonPressed(label: label)
        }, label: {
            ZStack {
                Circle()
                  .fill(color)
                
                Text(label)
                    .font(.title)
            }
        })
        // White color text for the button
        .accentColor(.white)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100,
                                  height: 100))
            .environmentObject(Calculator())
    }
}
