import Foundation

func solution(_ my_string:String) -> String {
    var result = ""
    
    for i in my_string {
        if !result.contains(i) {
            result.append(i)
        }
    }
    return result
}
