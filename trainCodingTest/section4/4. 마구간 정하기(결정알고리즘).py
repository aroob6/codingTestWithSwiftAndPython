def solution(n,c,arr):
    def Count(mid):
        cnt = 1
        ep = arr[0]
        for i in range(1,n):
            if arr[i] - ep >= mid:
                cnt += 1
                ep = arr[i]
        return cnt
    
    arr.sort()
    res = 0
    lt = 1
    rt = arr[-1]

    while lt <= rt:
        mid = (lt+rt) // 2
        if  Count(mid) >= c:
            res = mid
            lt = mid + 1
        else:
            rt = mid - 1

    return res

print(solution(5,3,[1,2,8,4,9]))