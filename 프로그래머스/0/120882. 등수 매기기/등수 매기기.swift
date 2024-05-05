import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var avg: [Int] = []
    var answer: [Int] = []
    
    for i in score {
        avg.append(i[0] + i[1])
    }
    
    for j in avg {
        answer.append(avg.filter { $0 > j }.count + 1)
    }
    
    return answer
}