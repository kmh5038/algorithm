func solution(_ arr:[Int], _ k:Int) -> [Int] {
    var ans : [Int] = []
    for i in arr {
        if !ans.contains(i) && ans.count < k {
            ans.append(i)
        }
    }
    while ans.count < k {
        ans.append(-1)
    }
    return ans
}