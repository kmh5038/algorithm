/*
순서 바꾸기

문제 설명
 
정수 리스트 `num_list`와 정수 `n`이 주어질 때, `num_list`를 `n` 번째 원소 이후의 원소들과
`n`번째까지의 원소들로나눠 `n` 번째 원소 이후의 원소들을 `n` 번째까지의 원소들 앞에 붙인 리스트를 return하도록
solution 함수를 완성해주세요
*/

import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var emptyArr: [Int] = []
    for i in 0..<num_list.count {
        if i > n-1 {
            emptyArr.append(num_list[i])
        }
     }
    for i in 0..<num_list.count {
        if i <= n-1 {
            emptyArr.append(num_list[i])
        }
    }
    return emptyArr
    }

// 더 효율적인 코드

import Foundation

func solution1(_ num_list:[Int], _ n:Int) -> [Int] {
    var arr = [Int]()
    if num_list.count == n{
        arr = num_list
    }else{
        arr += num_list[n...num_list.count-1] + num_list[0...n-1]
    }
    return arr
}

/*
문제 풀이

1. 순서가 바뀐 배열 인덱스를 받을 빈 배열을 만들어준다.
2. n번째 이후 인덱스들을 골라내서, 빈 배열에 넣어준다.
3. n번째까지의 인덱스들을 골라내서, n번째 이후 인덱스들 뒤에 추가해준다.
4. 완성된 빈 배열을 return 해준다.

1. 배열의 인덱스 수와 n값이 같을때는 이후의 인덱스라는것이 없기에 그대로 출력한다
2. 배열의 인덱스 부분에 범위 연산자를 사용하여 n 이후 + n 이전 순서로 붙여서 할당해준다.
*/
