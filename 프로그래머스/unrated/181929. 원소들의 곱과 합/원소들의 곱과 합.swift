import Foundation

func solution(_ num_list:[Int]) -> Int {
    let resultA = num_list.reduce(1, *)
    let resultB = ( num_list.reduce(0, +) ) * ( num_list.reduce(0, +) )
    
    return resultA < resultB ? 1 : 0
}