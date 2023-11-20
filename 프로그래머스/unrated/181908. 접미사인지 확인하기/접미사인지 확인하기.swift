import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var result = 0
    var strArr:[String] = []
    
    
    for i in my_string.indices {
        strArr.append(String(my_string.suffix(from: i)))
    }
    
    if strArr.contains(is_suffix) {
        result = 1
    }
    return result
}