import Foundation

func solution(_ myString:String) -> String {
    var result = ""

    for i in myString {
        if i < "l" {
            result.append("l")
        } else {
            result.append(i)
        }
    }
    
    return result
}