import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var emptyStr = ""
    for i in index_list {
       let index = my_string.index(my_string.startIndex, offsetBy: i)
        emptyStr.append(my_string[index])
    }
    return emptyStr
}
