import Foundation

func solution(_ babbling:[String]) -> Int {
let possibleCombinations = ["aya", "ye", "woo", "ma"]
    var count = 0

    for phrase in babbling {
        var remainingPhrase = phrase

        while !remainingPhrase.isEmpty {
            var found = false

            for combination in possibleCombinations {
                if remainingPhrase.hasPrefix(combination) {
                    remainingPhrase.removeFirst(combination.count)
                    found = true
                    break
                }
            }
            if !found {
                break
            }
        }
        if remainingPhrase.isEmpty {
            count += 1
        }
    }

    return count
}