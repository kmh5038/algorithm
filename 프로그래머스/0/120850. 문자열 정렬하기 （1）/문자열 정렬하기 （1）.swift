import Foundation

func solution(_ my_string:String) -> [Int] {
    var result: [Int] = []
    for i in my_string {
        if let num = Int(String(i)) {
            result.append(num)
        }
    }
    return result.sorted()
}