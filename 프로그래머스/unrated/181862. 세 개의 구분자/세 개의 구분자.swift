import Foundation

func solution(_ myStr:String) -> [String] {
    var emptyArr:[String] = []
    var emptyStr = ""
    
    for i in myStr {
        if i == "a" || i == "b" || i == "c" {
            if !emptyStr.isEmpty {
                emptyArr.append(emptyStr)
                emptyStr = ""
            }
        } else {
            emptyStr.append(i)
        }
    }
    if !emptyStr.isEmpty {
        emptyArr.append(emptyStr)
    }
    
    if emptyArr.isEmpty {
         emptyArr.append("EMPTY")
    }
    return emptyArr
}
