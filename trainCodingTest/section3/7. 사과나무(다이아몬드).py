def solution(n, arr):
    res = 0
    s=e=n//2
    for i in range(n):
        for j in range(s, e+1):
            res += arr[i][j]
        if i < n//2:
            s -= 1
            e += 1
        else:
            s += 1
            e -= 1
    return res

print(solution(5,[
    [10,13,10,12,15],
    [12,39,30,23,11],
    [11,25,50,53,15],
    [19,27,29,37,27],
    [19,13,30,13,19]
]))