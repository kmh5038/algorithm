import Foundation

func solution(_ n:Int) -> Int {
    let pizza = 7
    
    let result = (n + pizza - 1) / pizza
    
    return result
}