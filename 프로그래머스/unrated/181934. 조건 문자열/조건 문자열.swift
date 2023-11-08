import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    var trueFalse: Bool = true
    var trueFalse2: Bool = true
    switch ineq {
    case ">"
        : trueFalse = n >= m
        case "<"
        : trueFalse =  n <= m
        default
        : break
    }
    
    switch eq {
        case "!"
        : trueFalse2 = n != m
        case "="
        : trueFalse2 = (n >= m) || (n <= m)
        default
        : break
    }
    
    
    return trueFalse == true && trueFalse2 == true ? 1 : 0
}
