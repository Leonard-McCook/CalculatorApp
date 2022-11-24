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
    
    // Selects the appropriate function based on the label of buttom pressed
    func buttonPressed(label: String) {
        
        if label == "CE" {
            displayValue = "0"
            reset()
            
        } else if label == "=" {
            equalsClicked()
            
        } else if label == "." {
            decimalClicked()
            
        } else if let value = Double(label) {
            numberpressed(value: value)
        } else {
            operatorPressed(op: Operator())
        }
    }
    // Resets the state of the calculator
    func reset() {
        currentOP = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
    }
    
    func equalsClicked() {
        
    }
    
    func decimalClicked() {
        
    }
    
    func numberpressed(value: Double) {
        
    }
    
    func operatorPressed(op: Operator) {
        
    }
}
