import Foundation

func solution(_ money:Int) -> [Int] {
    let americanoPrice = 5500

    let cups = money / americanoPrice

    let remainingMoney = money % americanoPrice

    return [cups, remainingMoney]

}