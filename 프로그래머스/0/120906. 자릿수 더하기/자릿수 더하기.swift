import Foundation

func solution(_ n:Int) -> Int {
     var number = n
    var sum = 0

    while number > 0 {
        sum += number % 10
        number /= 10
    }

    return sum
}