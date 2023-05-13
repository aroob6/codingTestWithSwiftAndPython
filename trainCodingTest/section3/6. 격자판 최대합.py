def solution(n,arr):
    res = 0

    # 행, 열 
    for i in range(n):
        sum1=sum2=0
        for j in range(n):
            sum1 += arr[i][j]
            sum2 += arr[j][i]
        if sum1 > res:
            res = sum1
        if sum2 > res:
            res = sum2
    
    # 대각선 
    sum1=sum2=0
    for i in range(n):
        sum1 += arr[i][i]
        sum2 += arr[i][n-i-1]
        if sum1 > res:
            res = sum1
        if sum2 > res:
            res = sum2

    return res

print(solution(5,[
    [10,13,10,12,15],
    [12,39,30,23,11],
    [11,25,50,53,15],
    [19,27,29,37,27],
    [19,13,30,13,19]
]))