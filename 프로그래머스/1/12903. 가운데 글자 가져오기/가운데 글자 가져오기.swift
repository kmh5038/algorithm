func solution(_ s:String) -> String {
   let middleIdx = s.count / 2
  var result = ""
  
  if s.count % 2 == 1 { 
    result = "\(s[s.index(s.startIndex, offsetBy: middleIdx)])"
  } else { 
    result = "\(s[s.index(s.startIndex, offsetBy: middleIdx-1)])" + "\(s[s.index(s.startIndex, offsetBy: middleIdx)])"
  }
    return result
}