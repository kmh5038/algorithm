import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var result = numlist.sorted { i, j in
        var num1 = abs(i - n)
        var num2 = abs(j - n)
                                 
        if num1 == num2 { return j < i }
        return num1 < num2
    }
    return result
}