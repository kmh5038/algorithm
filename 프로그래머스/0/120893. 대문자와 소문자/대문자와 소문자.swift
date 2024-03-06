import Foundation

func solution(_ my_string:String) -> String {
    let convertedString = my_string.map { char in
        if char.isUppercase {
            return char.lowercased()
        } else {
             return char.uppercased()
        }
    }.joined()

    return convertedString
}