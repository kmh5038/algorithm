import Foundation

func solution(_ arr: [Int], _ k: Int) -> [Int] {
    var resultArray = [Int]()

    for num in arr {
        let transformedNum = (k % 2 == 1) ? num * k : num + k
        resultArray.append(transformedNum)
    }

    return resultArray
}