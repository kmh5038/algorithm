import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var my_string = Array(my_string)
    my_string.replaceSubrange(s...e, with: Array(my_string[s...e].reversed()))
    return String(my_string)
}

