import Foundation

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var strResult = String(a) + String(b)
    var intResult = 2 * a * b
    
    if let intValue = Int(strResult), intValue > intResult {
        return intValue
    } else {
        return intResult
    }
}
