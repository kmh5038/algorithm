func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
     var dict = Dictionary<Int, Int>()
     
     [a, b, c, d].forEach {
         let count = dict[$0, default: 0]
         dict[$0] = count + 1
     }

    let sorted = dict.sorted(by: { $0.value > $1.value })
    
    switch sorted[0].value {
        case 1:
            return dict.sorted(by: { $0.key > $1.key }).last!.key
        case 2:
            let p = sorted[0].key
            let q = sorted[1].key
            
            if dict.count == 2 {
                return (p + q) * abs(p - q)
            } else {
                let r = sorted[2].key
                return q * r
            }
            
        case 3:
            let p = sorted[0].key
            let q = sorted[1].key
            return (10 * p + q) * (10 * p + q)
        case 4:
            return sorted[0].key * 1111
        default:
            return 0
        }
    }