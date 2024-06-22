func solution(_ a:Int, _ b:Int) -> String {
    
    let week: [String] = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    let month: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var day: Int = b
    
    for i in 0..<a-1 {
        day += month[i]
    }

    return week[(day+4)%7]
}