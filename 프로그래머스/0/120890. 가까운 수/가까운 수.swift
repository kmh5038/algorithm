import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var num = Int.max
    var result = 0

    for (index,value) in array.enumerated() {
        if num > abs(value - n) {
            num = abs(value - n)
            result = array[index]
        } else if num == abs(value - n) && value < result { 
            result = value
        }
    }
    return result
}