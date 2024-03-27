import Foundation

func solution(_ order:Int) -> Int {
    return String(order).filter { "369".contains($0) }.count
}