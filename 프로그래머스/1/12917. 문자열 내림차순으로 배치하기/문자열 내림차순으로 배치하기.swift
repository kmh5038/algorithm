func solution(_ s:String) -> String {
  var lowcase = ""
  var uppercase = ""
  var result = ""

    for i in s {
      if i.isLowercase {
        lowcase.append(i)
      }
}

  for i in s {
    if i.isUppercase {
      uppercase.append(i)
    }
  }

  let sortedLowcase = String(lowcase.sorted(by: >))
  let sortedUppercase = String(uppercase.sorted(by: >))
  result = sortedLowcase + sortedUppercase

  return result
}