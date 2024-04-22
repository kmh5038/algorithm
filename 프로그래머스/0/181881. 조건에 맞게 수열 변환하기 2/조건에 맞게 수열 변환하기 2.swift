import Foundation

func solution(_ arr: [Int]) -> Int {
    var currentArr = arr 
    var count = 0 
    var previousArr: [Int] = []
    
    repeat {
        var newArr:[Int] = []
      
        for num in currentArr {
            if num >= 50 && num % 2 == 0 { 
                newArr.append(num / 2)
            } else if num < 50 && num % 2 == 1 {
                newArr.append(num * 2 + 1)
            } else { 
                newArr.append(num)
            }
        }
        
        count += 1 
        previousArr = currentArr 
        currentArr = newArr 
    } while currentArr != previousArr 
    
    return count - 1
}