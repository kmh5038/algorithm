import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    if str2.range(of: str1) != nil {
        return 1 
    } else {
        return 0 
    }
}