/*
짝수 vs 홀수

문제 설명
정수 리스트 `num_list`가 주어집니다. 가장 첫 번째 원소를 1번 원소라고 할 때, 홀수 번째 원소들의 합과 짝수 번째 원소들의 합 중
큰 값을 return 하도록 solution 함수를 완성해주세요. 두 값이 같을 경우 그 값을 return
합니다.
*/


import UIKit

func solution(_ num_list:[Int]) -> Int {
    var odd = 0
    var even = 0
    for i in 0..<num_list.count {
        if i % 2 == 0 {
            odd += num_list[i]
        } else if i % 2 == 1 {
            even += num_list[i]
        }
    }
    if odd == even {
        return odd
    }
    return odd > even ? odd : even
}

let a = [4,4,6,6,7,7]
let b = [-1, 2, 5, 6, 3]

print(solution(a))
print(solution(b))

/*
문제 풀이

1. 홀수,짝수를 저장해줄 변수 선언한다.
2. for문을 사용해 배열의 인덱스 수 만큼 반복문 순회한다.
3. for문 안에서 홀수,짝수를 구문해주는 if문을 작성하고 해당하는 수를 각 변수에 중첩해서 더해준다.
4. 합산이 더 큰 변수를 리턴해주고, 합산의 값이 같다면 그 값을 리턴한다.
*/
