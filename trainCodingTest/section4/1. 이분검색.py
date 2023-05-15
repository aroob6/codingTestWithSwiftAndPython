# 이분검색 - 중간 값을 구해서 값 찾기 
def solution(n,m,arr):
    res = 0
    lt = 0
    rt = n-1

    arr.sort()
    while lt <= rt:
        mid = (lt+rt)//2
        
        if arr[mid] == m:
            res = mid + 1
            break
        elif arr[mid] > m:
            rt = mid - 1
        else:
            lt = mid + 1
    return res

print(solution(8,32,[23,87,65,12,57,32,99,81]))