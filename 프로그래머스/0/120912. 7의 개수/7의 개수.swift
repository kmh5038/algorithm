import Foundation

func solution(_ array:[Int]) -> Int {
    var countOfSeven = 0
    for num in array {
        let str = String(num)
        countOfSeven += str.filter { $0 == "7" }.count
    }
    
    return countOfSeven
}