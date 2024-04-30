import Foundation

func solution(_ dots:[[Int]]) -> Int {
  var width = 0
  var height = 0

for i in 1..<dots.count {
  let num1 = dots[0][0]
  let num2 = dots[0][1]

  if dots[i][0] == num1  {
    width = abs(dots[i][1] - num2)
  }

  if dots[i][1] == num2 {
    height = abs(dots[i][0] - num1)
  }
}

  return width * height
}