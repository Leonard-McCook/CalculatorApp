//
//  Calculator.swift
//  CalculatorApp
//
//  Created by Leonard McCook-Carr on 11/21/22.
//

import Foundation

class Calculator: ObservableObject {
    
  // Used to update the UI
    @Published var displayValue = "0"
    
    // Store thwe current operator
    var currentOP: Operator?
    
    // Cureent number selected
    var currentNumber: Double? = 0
    
    // Previous number selected
    var previousNumber: Double?
    
    // Flag for equal press
    var equaled = false
    
    // How many decimal places have been typed
    var decimalPlace = 0
}
