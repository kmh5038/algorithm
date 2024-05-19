func solution(_ phone_number:String) -> String {
    var numberArr = [Character]()
    var frontNumber: String = ""
    var lastNumber: String = ""

    for _ in phone_number {
        numberArr.append("*")
    }

    numberArr.removeSubrange(numberArr.count - 4..<numberArr.count)
    frontNumber = String(numberArr)

    lastNumber = String(phone_number.suffix(4))

    return frontNumber + lastNumber
}