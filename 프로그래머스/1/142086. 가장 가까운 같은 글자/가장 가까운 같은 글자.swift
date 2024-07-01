import Foundation

func solution(_ s:String) -> [Int] {
    var answer: [Int] = []
    let elements = s.map { String($0) }
    
    for i in 0..<elements.count {        
        var index = i 
        var isExist = false 
        
        while (index > 0) {
            index -= 1
            
            if elements[index] == elements[i] {
                answer.append(i - index) 
                isExist = true
                break
            }
        }
        
        if isExist == false {
            answer.append(-1)
        }
    }
    
    return answer
}