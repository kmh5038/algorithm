import Foundation

func gcd(a: Int, b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(a: b, b: a % b)
}

func solution(_ a:Int, _ b:Int) -> Int {
    var bNum = b / gcd(a: a, b: b)
    var temp = bNum
    var result: [Int] = []
    
    while temp != 1 {
        for i in 2... {
            if temp % i == 0 {
                result.append(i)
                temp = temp / i
                break
            }
        }
    }
    return result.allSatisfy { $0 == 2 || $0 == 5 } ? 1 : 2
}