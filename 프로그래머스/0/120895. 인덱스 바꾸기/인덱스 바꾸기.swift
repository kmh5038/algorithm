import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var result = ""
    var characters = Array(my_string)
    
    characters.swapAt(num1, num2)
    result = String(characters)
    
    return result
}