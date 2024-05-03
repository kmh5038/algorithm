import Foundation

func solution(_ chicken:Int) -> Int {
    var chickenCount:Int = chicken
    var service:Int = 0
    
    while chickenCount/10 > 0 {
        service += chickenCount/10
        chickenCount = chickenCount/10 + chickenCount%10
    }
    return service
}