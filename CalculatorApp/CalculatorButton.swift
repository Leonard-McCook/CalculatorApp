//
//  CalculatorButton.swift
//  CalculatorApp
//
//  Created by Leonard McCook-Carr on 11/17/22.
//

import SwiftUI

struct CalculatorButton: View {
    var label: String
    var color: Color
    
    var body: some View {
        Button(action: {}, label: {
            ZStack {
                Circle()
                    .fill(color)
            }
        })
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100,
                                  height: 100))
    }
}
