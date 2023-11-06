import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var str = my_string
    var strArr:[String] = []
    var result = ""
    let strIndex = str.index(str.startIndex, offsetBy: m-1)
    
    for i in 1...my_string.count {
        if i % m == 0 {
            strArr.append(String(str[...strIndex]))
            str.removeSubrange(...strIndex)
        }
    }
    for i in 0...strArr.count-1 {
       let char = strArr[i].index(strArr[i].startIndex, offsetBy: c-1)
        result += String(strArr[i][char])
    }
    return result
}