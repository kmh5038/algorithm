import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var commonCount = 0
    
 
    for element in s1 {
        if s2.contains(element) {
            commonCount += 1
        }
    }
    

    return commonCount
}