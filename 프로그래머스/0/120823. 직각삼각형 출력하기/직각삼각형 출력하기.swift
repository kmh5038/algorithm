import Foundation

if let n = readLine().flatMap({ Int($0) }) {
    for i in 1...n {
        print(String(repeating: "*", count: i))
    }
}
