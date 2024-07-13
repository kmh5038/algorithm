def solution(n, arr1, arr2):
    answer, arr1_, arr2_ = [], [], []

    for i, j in zip(arr1, arr2):
        arr1_.append(format(i, 'b').zfill(n))
        arr2_.append(format(j, 'b').zfill(n))
    
    for i in range(n):
        code = ''
        for j in range(n):
            if arr1_[i][j] == '1' or arr2_[i][j] == '1':
                code += '#'
            else:
                code += ' '
        answer.append(code)
    return answer
