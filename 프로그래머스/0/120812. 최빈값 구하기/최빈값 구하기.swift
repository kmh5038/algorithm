import Foundation

func solution(_ array:[Int]) -> Int {
    var maximum = 0
    var result = 0
    var myArray = [Int](repeating: 0, count: 1000) 
    
    for i in array {
        myArray[i] += 1 
    }
   
    for i in 0..<myArray.count{
        if maximum < myArray[i] { 
            maximum = myArray[i] 
            result = i 
        } else if maximum == myArray[i]{
            result = -1 
        }
    }
    
    return result
}