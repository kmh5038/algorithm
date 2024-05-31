import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var res:Int = 0
    
    for i in 1...count {
        res += price * i
    }
    return res - money > 0 ? Int64(res - money) : 0
}