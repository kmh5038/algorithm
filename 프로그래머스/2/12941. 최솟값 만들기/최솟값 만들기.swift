import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var answer: Int = 0
    let acs = B.sorted(by: <)
    let desc = A.sorted(by: >)

    for i in 0..<acs.count {
        answer += acs[i] * desc[i]
    }
    return answer
}