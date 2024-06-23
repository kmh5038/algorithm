func solution(_ s: String, _ n: Int) -> String {
    var asciiStr = String() 

    for char in s { 
        if char == " " { 
            asciiStr.append(" ") 
            continue
        } else { 
            if char.asciiValue! >= 97 && char.asciiValue! <= 122 { 
                let lowerAscii = Character("a").asciiValue! 
                var value = char.asciiValue! - lowerAscii + UInt8(n)
                var character = String()

                if value > 25 { 
                    value -= 26
                }

                character = String(UnicodeScalar(lowerAscii + value)) 
                asciiStr.append(character) 

                character = "" 
                value = 0 

            } else if char.asciiValue! >= 65 && char.asciiValue! <= 90 { 
                let upperAscii = Character("A").asciiValue!
                var value = char.asciiValue! - upperAscii + UInt8(n)
                var character = String()

                if value > 25 {
                    value -= 26
                }

                character = String(UnicodeScalar(upperAscii + value))
                asciiStr.append(character)

                character = ""
                value = 0
            }
        }
    }

    return asciiStr
}