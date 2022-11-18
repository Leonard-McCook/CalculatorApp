//
//  CalculatorRow.swift
//  CalculatorApp
//
//  Created by Leonard McCook-Carr on 11/17/22.
//

import SwiftUI

let colummCount = 4

struct CalculatorRow: View {
    var labels = ["", "", "", ""]
    var colors: [Color] = [.gray, .gray, .gray, .orange]
    
    var body: some View {
        // Display a calculator button for each column
        
        HStack(spacing: 10) {
            // Select from the labels and colors
            ForEach(0..<columnCount) { index in
                CalculatorButton(label:
                    labels[index], color:
                    colors[index])
                
            }
        }
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(labels: ["1", "2", "3", "+"])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
