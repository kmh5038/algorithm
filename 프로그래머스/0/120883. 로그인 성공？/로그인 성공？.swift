import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0]
    let pw = id_pw[1]

    for member in db {
        if member[0] == id {
            if member[1] == pw {
                return "login"
            } else {
                return "wrong pw"
            }
        }
    }

    return "fail"
}