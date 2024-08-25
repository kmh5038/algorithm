import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var first : Int = 0
    var last : Int = arr.count
    
    for index in 0..<query.count {
        if index % 2 == 0 {
            last = first + query[index]
        } else {
            first += query[index]
        }   
    }

    return Array(arr[first...last])
}