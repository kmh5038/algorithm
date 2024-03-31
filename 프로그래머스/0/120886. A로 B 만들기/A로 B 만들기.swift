import Foundation

func solution(_ before:String, _ after:String) -> Int {
    let sortedBefore = before.sorted()
    let sortedAfter = after.sorted()
    
    return sortedBefore == sortedAfter ? 1 : 0
}