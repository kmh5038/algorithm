import Foundation

func solution(_ my_string:String) -> String {
    let lowercase = my_string.lowercased()
    let sorted = String(lowercase.sorted())
    return sorted
}