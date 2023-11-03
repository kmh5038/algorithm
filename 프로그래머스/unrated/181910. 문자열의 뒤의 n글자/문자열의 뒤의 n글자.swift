import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var result = ""
    var index = my_string.index(my_string.endIndex, offsetBy: -n)
    result = String(my_string[index...])
    
    return result
}