import Foundation

func solution(_ number:String) -> Int {
    var num = 0
    for i in number {
        if let number = Int(String(i)) {
            num += number
        } 
    }
    return num % 9
}