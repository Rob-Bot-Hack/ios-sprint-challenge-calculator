//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Ben Gohlke on 5/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

enum OperatorType: String {
    case addition = "+"
    case subtract = "-"
    case divide = "÷"
    case multiple = "×"
}

class CalculatorBrain {
    var operand1String = ""
    var operand2String = ""
    var operatorType: OperatorType?
    
    func addOperandDigit(_ digit: String) -> String {
        if operatorType != nil {
            operand2String += digit
            return operand2String
        } else {
            operand1String += digit
            return operand1String
        }
    }
    
    func setOperator(_ operatorString: String) {
        if let signs = OperatorType(rawValue: operatorString) {
          return  operatorType = signs
        }
    }

    func calculateIfPossible() -> String? {
        guard let operand1 = Double(operand1String) else {return nil}
        guard let operand2 = Double(operand2String) else {return nil}
        guard let operatorType = operatorType else { return nil }
        switch operatorType {
        case.addition:
            return "\(operand1 + operand2)"
        case.subtract:
            return "\(operand1 - operand2)"
        case.multiple:
            return "\(operand1 * operand2)"
        case.divide:
            return "\(operand1 / operand2 )"
        }
    }
}
