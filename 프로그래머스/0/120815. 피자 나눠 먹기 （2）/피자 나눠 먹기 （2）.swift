import Foundation
//최대공약수 gcd 함수
func gcd(_ a:Int, _ b:Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}
//최소공배수 lcm 함수
func lcm(_ a:Int, _ b:Int) -> Int {
    return a*b / gcd(a,b)
}

func solution(_ n:Int) -> Int {
    return lcm(n,6) / 6
}