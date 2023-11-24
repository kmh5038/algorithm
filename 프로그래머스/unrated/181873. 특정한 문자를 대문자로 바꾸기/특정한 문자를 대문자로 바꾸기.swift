import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    var result = ""
    for i in my_string {
        if String(i) == alp {
           let upper =  i.uppercased()
            result += upper
        } else {
            result += String(i)
        }
    }
    return result
}
