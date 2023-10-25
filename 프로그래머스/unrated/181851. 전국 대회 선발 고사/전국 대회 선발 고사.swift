import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var emptyArr:[(Int, Int)] = []
    var result:[Int] = []
    for i in 0..<rank.count {
        if attendance[i] == true {
            emptyArr.append((rank[i], i))
        }
    }
         emptyArr.sort(by: <)
        result = emptyArr.map { $0.1 }
    return (result[0] * 10000) + (result[1] * 100) + result[2]
}