import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(b, a % b)
}

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var maxDenum = denum1 * num2 + denum2 * num1
    var maxNum = num1 * num2
    var gcdValue = gcd(maxDenum, maxNum)
    var result = [maxDenum / gcdValue, maxNum / gcdValue]
    
    return result
}
