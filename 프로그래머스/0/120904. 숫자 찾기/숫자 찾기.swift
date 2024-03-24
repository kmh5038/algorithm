import Foundation

func solution(_ num: Int, _ k: Int) -> Int {
    let numString = String(num)
    
    for (index, char) in numString.enumerated() {
        if let digit = Int(String(char)), digit == k {
            return index + 1 
        }
    }
    
    return -1
}