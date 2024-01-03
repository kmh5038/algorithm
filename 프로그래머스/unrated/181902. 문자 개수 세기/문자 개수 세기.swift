import Foundation

func solution(_ my_string: String) -> [Int] {
    
    var counts = Array(repeating: 0, count: 26 * 2)
    
    
    for char in my_string {
        if let asciiValue = char.asciiValue {
            
            if (65...90).contains(asciiValue) {
                let index = Int(asciiValue - 65)
                counts[index] += 1
            }
            
            else if (97...122).contains(asciiValue) {
                let index = Int(asciiValue - 97) + 26
                counts[index] += 1
            }
        }
    }
    
    return counts
}