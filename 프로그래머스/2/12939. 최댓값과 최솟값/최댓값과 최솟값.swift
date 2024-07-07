func solution(_ s:String) -> String {
  let splitedString = s.split(separator: " ")
  var numberArray: [Int] = []
  
  for index in splitedString {
    guard let number = Int(index) else { return " " }
    numberArray.append(number)
  }
  
  return "\(numberArray.min()!) \(numberArray.max()!)"
}