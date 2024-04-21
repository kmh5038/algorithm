import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    var result = ""
    var carry = 0 
    
    var i = bin1.count - 1
    var j = bin2.count - 1
    
    
    while i >= 0 || j >= 0 || carry > 0 {
        var sum = carry 
        
        if i >= 0 {
            sum += Int(String(bin1[bin1.index(bin1.startIndex, offsetBy: i)]))!
            i -= 1
        }
        
        if j >= 0 {
            sum += Int(String(bin2[bin2.index(bin2.startIndex, offsetBy: j)]))!
            j -= 1
        }
        
        result = String(sum % 2) + result 
        carry = sum / 2 
    }
    
    return result
}