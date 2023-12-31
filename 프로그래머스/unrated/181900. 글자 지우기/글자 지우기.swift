import Foundation

func solution(_ my_string: String, _ indices: [Int]) -> String {
    var modifiedString = my_string
    
    for index in indices.sorted(by: >) {
        modifiedString.remove(at: modifiedString.index(modifiedString.startIndex, offsetBy: index))
    }
    
    return modifiedString
}
