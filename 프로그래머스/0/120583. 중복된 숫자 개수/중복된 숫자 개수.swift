import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
     let count = array.filter { $0 == n }.count
    return count
}