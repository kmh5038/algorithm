import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var mutableStr = my_str
    
    var result:[String] = []
    
    let cutCount = mutableStr.count / n

    for i in 1...cutCount {
        
        let cut = mutableStr.prefix(n)
        
        let index = mutableStr.index(mutableStr.startIndex, offsetBy: n-1)
        
        result.append(String(cut))
        
        mutableStr.removeSubrange(mutableStr.startIndex...index)
    }
    
    if mutableStr.isEmpty {
        
    } else {
        result.append(mutableStr)
    }

    return result
}