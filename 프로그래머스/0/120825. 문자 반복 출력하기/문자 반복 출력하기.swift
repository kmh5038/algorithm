import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
     var result = ""

    for i in my_string {
        for _ in 1...n {
            result.append(i)
        }
    }
    return result
}