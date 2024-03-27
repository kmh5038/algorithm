import Foundation

func solution(_ order:Int) -> Int {
    var strOrder = String(order)
    var result = 0
    for i in strOrder {
        if i == "3" || i == "6" || i == "9" {
            result += 1
        }
    }
    return result
}