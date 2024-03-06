import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var modifiedString = ""

    for char in myString {
        if char == "A" {
            modifiedString.append("B")
        } else {
            modifiedString.append("A")
        }
    }
    
    if modifiedString.contains(pat) {
        return 1
    } else {
        return 0
    }
}