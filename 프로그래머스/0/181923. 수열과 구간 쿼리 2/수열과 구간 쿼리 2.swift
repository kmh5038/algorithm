import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for query in queries {
        let (start, end, target) = (query[0], query[1], query[2])
        
        let subArray = Array(arr[start...end])
        
        let sortedArray = subArray.sorted()
        
        if let index = sortedArray.firstIndex(where: { $0 > target }) {
            result.append(sortedArray[index])
        } else {
            result.append(-1)
        }
    }
    
    return result
}