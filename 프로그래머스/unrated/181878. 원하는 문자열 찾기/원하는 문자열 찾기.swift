import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    let lowercasedMyString = myString.lowercased()
    let lowercasedPat = pat.lowercased()

    
    return lowercasedMyString.contains(lowercasedPat) ? 1 : 0
}