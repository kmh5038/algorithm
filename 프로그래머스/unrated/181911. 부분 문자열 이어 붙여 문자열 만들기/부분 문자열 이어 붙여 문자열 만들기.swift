import Foundation


func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var emptyStr = ""
    
    for (index,value) in parts.enumerated() {
        
            var start = my_strings[index].index(my_strings[index].startIndex, offsetBy: value[0])
            var end = my_strings[index].index(my_strings[index].startIndex, offsetBy: value[1])
            
            var result = my_strings[index][start...end]
            
            emptyStr += result
        
    }
    return emptyStr
}