func solution(_ arr:[Int]) -> Int {
    
    var arr1 = arr  
    var divideCount = 0 
    var stackArr = [Int]() 
    
    var i = 2  
    while i <= arr1.max()!{       
        for j in arr1{             
            if j % i == 0 {
                divideCount += 1    
            }
        }
        if divideCount >= 2 {         
            stackArr.append(i)        
            for p in 0..<arr1.count {  
                if arr1[p] % i == 0 {
                    arr1[p] = arr1[p] / i
                }
            }
            i = 2     
            
        }
        else{
            i += 1  
        }
    
        divideCount = 0  
    }
    
    let a = arr1 + stackArr 
    
    return a.reduce(1, *)  
}