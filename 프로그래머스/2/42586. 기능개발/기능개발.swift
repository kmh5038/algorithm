import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var progresses = progresses
    let speeds = speeds

    var temp = 0
    var result = [Int]()

    while true {
        var count = 0

        for j in 0..<speeds.count {
            progresses[j] += speeds[j]
        }

        for _ in 0..<progresses.count {
            if progresses[count] < 100 {
                break
            }
            count += 1
        }

        if temp != count {
            result.append(count-temp)
            temp = count
        }

        if result.reduce(0, +) == progresses.count {
            break
        }
    }

    return result
}