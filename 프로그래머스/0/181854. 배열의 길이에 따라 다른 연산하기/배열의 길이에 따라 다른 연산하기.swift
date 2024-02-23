import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
     var result = arr

    for i in 0..<arr.count {
        if arr.count % 2 == 1 && i % 2 == 0 {
            result[i] += n
        } else if arr.count % 2 == 0 && i % 2 == 1 {
            result[i] += n
        }
    }
    
    return result
}