import Foundation

func solution(_ numbers:[Int]) -> Int {
   let sortedNumbers = numbers.sorted()
    let lastIndex = sortedNumbers.count - 1
    let maxProduct = max(sortedNumbers[0] * sortedNumbers[1], sortedNumbers[lastIndex] * sortedNumbers[lastIndex - 1])
    
    return maxProduct
}