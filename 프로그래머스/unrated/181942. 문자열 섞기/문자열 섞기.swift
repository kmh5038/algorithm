import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    let str1Index = str1.map { $0 }
    let str2Index = str2.map { $0 }
    
    var result = ""
    
    for i in str1Index.indices {
        result += String(str1Index[i]) + String(str2Index[i])
    }
    return result
}