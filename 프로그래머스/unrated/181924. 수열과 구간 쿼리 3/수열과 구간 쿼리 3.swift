
import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var array = arr
        for j in queries {
            array.swapAt(j[0], j[1])
        }
    return array
}
