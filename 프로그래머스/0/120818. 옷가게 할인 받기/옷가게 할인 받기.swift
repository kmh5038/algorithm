import Foundation

func solution(_ price: Int) -> Int {
   var result = price

    if price >= 500000 {
        result = Int(Double(price) * 0.8)
    } else if price >= 300000 {
        result = Int(Double(price) * 0.9)
    } else if price >= 100000 {
        result = Int(Double(price) * 0.95)
    }

    return result
}
