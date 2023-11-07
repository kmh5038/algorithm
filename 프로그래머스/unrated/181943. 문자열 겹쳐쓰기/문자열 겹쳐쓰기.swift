import Foundation

func solution(_ my_string:String, _ overwrite_string:String, _ s:Int) -> String {
    
    let str1 = my_string.prefix(s)
    let str2 = my_string.suffix(my_string.count - overwrite_string.count - s)
    
    
    return str1 + overwrite_string + str2
}