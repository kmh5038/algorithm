import Foundation

func solution(_ order:[String]) -> Int {
    var price: [Int] = []
    for i in order {
        if i.contains("cafelatte") {
            price.append(5000)
        } else {
            price.append(4500)
        }
    }
    return price.reduce(0, +)
}