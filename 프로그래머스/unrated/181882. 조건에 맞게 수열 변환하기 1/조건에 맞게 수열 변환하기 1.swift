import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var intArr:[Int] = []
    
    for i in arr {
        if i >= 50 && i % 2 == 0 {
            intArr.append(i / 2)
        } else if i < 50 && i % 2 == 1{
            intArr.append(i * 2)
        } else {
            intArr.append(i)
        }
    }
    return intArr
}