import Foundation

func solution(_ binomial: String) -> Int {
    let components = binomial.components(separatedBy: " ")
    let operand1 = Int(components[0])!
    let operand2 = Int(components[2])!
    let op = components[1]
    
    var result: Int
    switch op {
        case "+":
            result = operand1 + operand2
        case "-":
            result = operand1 - operand2
        case "*":
            result = operand1 * operand2
        default:
            fatalError("Invalid operator")
    }
    
    return result
}