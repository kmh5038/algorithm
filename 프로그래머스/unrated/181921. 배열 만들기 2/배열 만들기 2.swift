import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var emptyArr: [Int] = []
    
    
    for i in l...r {
        
        let strNum = String(i)
        var isTrue = true
        
        for j in strNum {
            if j != "5" && j != "0" {
                isTrue = false
            }
        }
        if isTrue {
            emptyArr.append(i)
        }
    }
    
    return emptyArr.isEmpty ? [-1] : emptyArr
}
