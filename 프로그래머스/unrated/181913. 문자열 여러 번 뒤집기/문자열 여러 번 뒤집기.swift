import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    
    var arrStr = Array(my_string)
    
    for i in queries {
         
        arrStr.replaceSubrange(i[0]...i[1], with: arrStr[i[0]...i[1]].reversed())
        
    }
    return String(arrStr)
}
