func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    
    var result: [Int] = []
    var dic: [String : Int] = [:]
    
    for i in 0...name.count - 1 {
        dic[name[i]] = yearning[i]
    }
    
    photo.forEach { picture in
        var score = 0
        picture.map { name in
            score += dic[name] ?? 0
        }
        result.append(score)
    }
    return result
}
