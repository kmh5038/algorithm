import Foundation

func solution(_ s:String) -> String {
     var charCounts: [Character: Int] = [:] 
     var result = ""
    
    for char in s {
        charCounts[char, default: 0] += 1
    }
 
    for (char, count) in charCounts {
        if count == 1 {
            result.append(char)
        }
    }
    return String(result.sorted())
}