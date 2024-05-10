import Foundation

func solution(_ board:[[Int]]) -> Int {
    var copy = board
    for i in 0...board.count-1 {
        for j in 0...board.count-1 {
            if board[i][j] == 1 {
                if i != 0 && j != 0 {
                    if copy[i-1][j-1] != 1 {
                        copy[i-1][j-1] = 2
                    }
                }
                if i != 0 {
                    if copy[i-1][j] != 1 {
                        copy[i-1][j] = 2
                    }
                }
                if i != 0 && j+1 < board.count {
                    if copy[i-1][j+1] != 1 {
                        copy[i-1][j+1] = 2
                    }
                }
                if j != 0 {
                    if copy[i][j-1] != 1 {
                        copy[i][j-1] = 2
                    }
                }
                if j+1 < board.count {
                    if copy[i][j+1] != 1 {
                        copy[i][j+1] = 2
                    }
                }
                if i+1 < board.count && j != 0 {
                    if copy[i+1][j-1] != 1 {
                        copy[i+1][j-1] = 2
                    }
                }
                if i+1 < board.count {
                    if copy[i+1][j] != 1 {
                        copy[i+1][j] = 2
                    }
                }
                if i+1 < board.count && j+1 < board.count {
                    if copy[i+1][j+1] != 1 {
                        copy[i+1][j+1] = 2
                    }
                }
            }
        }
    }
    var result:Int = 0
    for i in 0...board.count-1 {
        result += copy[i].filter { $0==0 }.count
    }
    return result
}