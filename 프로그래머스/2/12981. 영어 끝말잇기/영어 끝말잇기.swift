import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var index:Int = 0
    var lastChar:Character = Array(words[0])[words[0].count-1]
    var list:[String] = [words[0]]
    for i in 1...words.count-1 {
        if Array(words[i])[0] == lastChar && !list.contains(words[i]) {
            lastChar = Array(words[i])[words[i].count-1]
            list.append(words[i])
        } else {
            index = i
            break
        }
    }
                        
    var result:[Int] = []
    
    if index == 0 {
        result = [0,0]
    } else if (index+1)%n == 0 {
        result = [n, (index+1)/n]
    } else {
        result = [(index+1)%n, ((index+1)/n)+1]
    }

    return result
}