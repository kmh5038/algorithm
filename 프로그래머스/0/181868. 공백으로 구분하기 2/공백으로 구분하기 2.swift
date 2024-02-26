import Foundation

func solution(_ my_string:String) -> [String] {
   let result = my_string.components(separatedBy: " ").filter { !$0.isEmpty }
    
    return result
}