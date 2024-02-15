import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    var totalArr1 = arr1.reduce(0, +)
    var totalArr2 = arr2.reduce(0, +)
    
    if arr1.count > arr2.count {
        return 1
    } else if arr1.count < arr2.count {
        return -1
    }
    
    if totalArr1 < totalArr2 {
        return -1
    } else if totalArr1 > totalArr2 {
        return  1
    } else {
        return 0
    }

}