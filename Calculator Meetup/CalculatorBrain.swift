//
//  CalculatorBrain.swift
//  Calculator Meetup
//
//  Created by Arno de Jonge on 12/06/2017.
//  Copyright © 2017 Arno de Jonge. All rights reserved.
//

//Performs calculations

import Foundation


struct CalculatorBrain {
    
    private var accumulator: Double?
    
    private enum Operation {
        case constant(Double)
        case unaryOperation( (Double) -> Double)
    }
    
    private var operations: Dictionary <String, Operation> = [
        "π": Operation.constant(Double.pi),
        "e": Operation.constant(M_E),
        "√": Operation.unaryOperation(sqrt),
        "cos": Operation.unaryOperation(cos)
    ]
    
    mutating func performOperation(_ symbol: String){
        if let operation = operations[symbol] {
            switch operation {
            case .constant(let value):
                accumulator = value
            case .unaryOperation:
                break
            default:
                break
            }
        }
    }
    
    mutating func setOperand(_ operand: Double){
        accumulator = operand
    }
    
    var result: Double? {
        get{
            return accumulator
        }
    }
    
    
}
