func solution(_ n:Int64) -> [Int] {
    let reversedString = String(n).reversed()
    return reversedString.compactMap { Int(String($0)) }
}