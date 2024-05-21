import Foundation

func solution(_ s:String) -> Bool {
  var countP = 0
  var countY = 0
  
  for letter in s.lowercased() {
    if letter == "p" {
      countP += 1
    } else if letter == "y" {
      countY += 1
    }
  }
  
  return countP == countY
}