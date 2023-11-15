import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var result:[Int] = []
    if num%2 == 0 {
        for i in 0..<num {
            result.append((total/num)-(num/2)+i+1)
        }
    } else {
        for i in 0..<num {
            result.append((total/num)-(num/2)+i)
        }
    }
    return result
}
