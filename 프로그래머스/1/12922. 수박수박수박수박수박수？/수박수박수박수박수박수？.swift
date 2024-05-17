func solution(_ n:Int) -> String {
    var result = ""
    
    for i in 0..<n {
        if i % 2 == 0 {
            result.append("수")
        }
        else {
            result.append("박")
        }
    }
    return result
}