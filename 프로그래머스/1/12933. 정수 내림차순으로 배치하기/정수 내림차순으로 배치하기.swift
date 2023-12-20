func solution(_ n:Int64) -> Int64 {
      let digits = String(n).compactMap { Int(String($0)) }.sorted(by: >)
    let sortedNumber = digits.reduce(0) { result, digit in
       return result * 10 + digit
    }
    return Int64(sortedNumber)
}