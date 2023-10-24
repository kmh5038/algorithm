import UIKit
import SwiftUI

// 동시성 프로그래밍 : 해당 시점에서 사용 가능한 코어를 하나 이상 사용해서 처리 속도를 높이거나, 중요하지 않은 작업을 중요도가 낮은 스레드에서 실행시키는 이점을 얻는다.

// 동시성 예제 01

// 1부터 100까지의 합을 구하는 비동기 함수
// async let을 사용하여 두 개의 비동기 작업을 동시에 실행하고 결과를 합하여 출력하는 함수를 작성해보세요.


struct ConcurrencyView1: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
                await doSomething()
            }
        }, label: {
            Text("Do Something")
        })
    }
    
    func sumFrom(_ s: Int, _ e: Int) async -> Int {
        var sum = 0
        for i in s...e {
            sum += i
        }
        return sum
    }
    
    func doSomething() async {
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        async let result1 = sumFrom(1, 50)
        async let result2 = sumFrom(51, 100)
        // 결과를 출력
        var a = await result1
        var b = await result2
        print("\(a + b)")
    }
}
    
// 동시성 예제 02

// 동시성 예제 01을 withTaskGroup 사용으로 변환해 보세요.

struct ConcurrencyView1: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
                await doSomething()
            }
        }, label: {
            Text("Do Something")
        })
    }
    
    func doSomething() async {
        var totalSum = 0
        
        await withTaskGroup(of: (Int, Int).self) { group in
            for i in 0...1 {
                group.addTask {
                    return ( i, await sumFrom(i * 50 + 1, i * 50 + 50) )
                }
            }
            
            for await (_, sum) in group {
                totalSum += sum
            }
            
        }
        
        print(totalSum)
        
    }
}


// 동시성 예제 03

// 비동기 함수를 호출하고 결과를 출력하는 코드를 작성해보세요.

func printResult() async {
    let result = await asyncFunction()
    print(result)
}

Task {
    await printResult()
}


// 동시성 예제 04

// 다음 코드는 두 개의 비동기 함수를 호출하고, 그 결과를 더해서 출력하는 코드입니다.
// 하지만 이 코드는 컴파일 에러가 발생합니다.
// 에러의 원인과 해결 방법을 설명하고, 올바른 코드를 작성해보세요.

func asyncAdd(_ x: Int, _ y: Int) async -> Int {
    return x + y
}

func asyncPrintSum(_ a: Int, _ b: Int) {
    let sum = await asyncAdd(a, b)
    print(sum)
}




// 액터 : ‘하나의 동시성 영역’ 안에서 유지되는 상태의 모임을 만들 수 있고, 이 Actor가 여러가지 명령을 수행할 수 있도록 설정할 수 있다.




// 액터 예제 01

// actor 를 사용하여 비동기적으로 두 개의 숫자를 곱하는 함수를 가지고 있는 액터를 만들어 보세요.

actor Multiplier {
    var factor: Int

    init(factor: Int) {
        self.factor = factor
    }

    func multiply(_ x: Int) -> Int {
        return x * factor
    }
}


// 액터 예제 02

// 다음 코드에서 actor 를 사용하여 Counter 클래스를 정의하고, increment 메서드를 구현하세요.
//(increment 메서드는 내부의 count 프로퍼티를 1 증가시킨다.)

actor Counter {
    var count = 0

    func increment() {
        count += 1
    }
}

Task {
    let counter = Counter()
    await counter.increment()
    await counter.increment()
    await counter.increment()
    print( await counter.count )
}


// 액터 예제 03

// actor 를 사용하여 비동기적으로 두 개의 문자열을 연결하는 함수를 정의하고 호출하는 액터를 작성하세요.

actor Concatenator {
    func concatenate(_ x: String, _ y: String) -> String {
        return x + y
    }
}

let concatenator = Concatenator()
Task {
    let result = await concatenator.concatenate("Hello", "World")
    print(result) // 출력 결과: HelloWorld
}

//
// 액터 예제 04

// 다음 기능들을 갖는 StringEx 액터를 정의하세요.
//
// 비동기적으로 문자열을 대문자로 변환하는 함수를 정의
// 비동기적으로 문자열을 소문자로 변환하는 함수를 정의
// 비동기적으로 문자열을 역순으로 변환하는 함수를 정의

actor StringEx {
    let x: String

    init(_ x: String) {
        self.x = x
    }

    func capitalize() -> String {
        x.uppercased()
    }

    func lowercase() -> String {
        x.lowercased()
    }

    func reverse() -> String {
        String( x.reversed() )
    }
}


// 액터 예제 06

// 다음 코드는 actor 를 사용하여 은행 계좌의 입출금을 관리하는 예제이다.
// 코드를 완성하여 입출금 기능을 구현하고, 잔액을 출력하세요.

enum BankError: Error {
    case negativeAmount
    case insufficientBalance
}

actor BankAccount {
    var balance: Double = 0

    // TODO: 입금 기능을 구현
    func deposit(_ amount: Double) -> Bool {
        if amount > 0 {
            self.balance += amount
            return true
        } else {
            return false
        }
    }

    // TODO: 출금 기능을 구현
    func withdraw(_ amount: Double) throws -> Double {
        if amount < 0 {
            throw BankError.negativeAmount
        }
        if amount > balance {
            throw BankError.insufficientBalance
        }
        self.balance -= amount
        return amount
    }
}

let account = BankAccount()

Task {
    // TODO: account 에 1000원을 입금
    await account.deposit(1000)

    // TODO: account 에서 500원을 출금
    try? await account.withdraw(500)

    // TODO: account 의 잔액을 출력
    print( await account.balance )
}

Task {
    // TODO: account 에 3000원을 입금
    await account.deposit(3000)

    // TODO: account 에서 6000원을 출금
    try? await account.withdraw(6000)

    // TODO: account 의 잔액을 출력
    print( await account.balance )
}



