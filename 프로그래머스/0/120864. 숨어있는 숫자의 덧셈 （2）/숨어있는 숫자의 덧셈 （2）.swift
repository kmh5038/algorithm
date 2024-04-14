import Foundation

func solution(_ my_string:String) -> Int {
    var sum = 0
    var currentNumString = ""
    
    for char in my_string {
        if char.isNumber {
            currentNumString.append(char)
        } else {
            if !currentNumString.isEmpty {
                sum += Int(currentNumString) ?? 0
                currentNumString = ""
            }
        }
    }
    
    if !currentNumString.isEmpty {
        sum += Int(currentNumString) ?? 0
    }
    
    return sum
}