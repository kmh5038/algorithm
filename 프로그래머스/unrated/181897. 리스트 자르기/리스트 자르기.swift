import Foundation

func solution(_ n:Int, _ slicer:[Int], _ num_list:[Int]) -> [Int] {
    var result = Array<Int>()
    switch n {
        case 1
        : result.append(contentsOf: num_list[0...slicer[1]])
        case 2
        : result.append(contentsOf: num_list[slicer[0]...])
        case 3
        : result.append(contentsOf: num_list[slicer[0]...slicer[1]])
        case 4
        : result.append(contentsOf: stride(from: slicer[0], through: slicer[1], by: slicer[2]).map { num_list[$0] })
        default
        : break
    }
    return result
}