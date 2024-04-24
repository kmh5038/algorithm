import Foundation

func solution(_ my_string:String) -> Int {
    let components = my_string.components(separatedBy: " ")
    
    var numbers: [Int] = []
    var operators: [Character] = []

    for component in components {
        if let number = Int(component) {
            numbers.append(number)
        } else {
            operators.append(component.first!)
        }
    }

    var result = numbers[0]
    
    for i in 0..<operators.count {
        let op = operators[i]
        let nextNumber = numbers[i+1]
        
        if op == "+" {
            result += nextNumber
        } else if op == "-" {
            result -= nextNumber
        }
    }
    
    return result
}