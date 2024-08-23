func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    let max = tangerine.max()!
    var numlist = Array(repeating: 0, count: max + 1)

    for i in tangerine {
        numlist[i] += 1
    }
    
    numlist.sort(by: >)
    
    var answer = 0
    var count = 0
    let howmany = numlist.count
    
    for i in 0..<howmany {
        if( count < k ) {
            count += numlist[i]
            answer += 1
        }
    }
    return answer
}