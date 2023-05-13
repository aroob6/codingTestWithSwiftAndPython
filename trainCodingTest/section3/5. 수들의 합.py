def solution(n, m, arr):
    lt = 0
    rt = 1
    sum = arr[0] # 초기값
    res = 0

    while True:
        if sum < m:
            if rt< n:
                sum += arr[rt]
                rt += 1
            else: # rt가 n이되면 탈출 
                break
        elif sum == m:
            res += 1
            sum -= arr[lt]
            lt += 1
        else: # sum > m 
            sum -= arr[lt]
            lt += 1

    return res



print(solution(8,3, [1,2,1,3,1,1,1,2]))