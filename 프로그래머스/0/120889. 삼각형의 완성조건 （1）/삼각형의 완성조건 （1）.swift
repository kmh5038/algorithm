import Foundation

func solution(_ sides:[Int]) -> Int {
    var sort = sides.sorted()
    
    if (sort[0] + sort[1]) > sort[2] {
        return 1
    } else {
        return 2
    }
}