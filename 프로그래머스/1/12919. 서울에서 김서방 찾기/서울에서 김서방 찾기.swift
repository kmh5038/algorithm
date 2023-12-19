func solution(_ seoul:[String]) -> String {
    var result = ""
    for (index,name) in seoul.enumerated() {
        if name == "Kim" {
            result = "김서방은 \(index)에 있다"
        }
    }
    return result
}