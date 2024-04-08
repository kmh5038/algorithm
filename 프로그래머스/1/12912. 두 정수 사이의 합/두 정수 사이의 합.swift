func solution(_ a:Int, _ b:Int) -> Int64 {
    let sum = (a + b) * (abs(b - a) + 1) / 2
    return Int64(sum)
}