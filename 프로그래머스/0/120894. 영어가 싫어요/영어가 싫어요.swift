import Foundation

func solution(_ numbers:String) -> Int64 {
    let wordToNumber: [String: String] = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    
    var converted = numbers
    for (word, number) in wordToNumber {
        converted = converted.replacingOccurrences(of: word, with: number)
    }
    
    return Int64(converted)!
}