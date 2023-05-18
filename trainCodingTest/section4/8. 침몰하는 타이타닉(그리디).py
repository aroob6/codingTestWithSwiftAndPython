from collections import deque
def solution(n,m,arr):
    arr.sort()
    print(arr)
    res = 0 
    while arr:
        if len(arr) == 1: # 마지막으로 한명 남았을 때 처리 
            res += 1
            break
        if arr[0] + arr[-1] > m:
            arr.pop()
            res += 1
        else:
            arr.pop(0)
            arr.pop()
            res += 1
            
    return res

print(solution(5,140,[90,50,70,100,60]))

def solution1(n,m,arr):
    arr.sort()
    arr = deque(arr)
    res = 0 
    while arr:
        if len(arr) == 1: # 마지막으로 한명 남았을 때 처리 
            res += 1
            break
        if arr[0] + arr[-1] > m:
            arr.pop()
            res += 1
        else:
            arr.popleft()
            arr.pop()
            res += 1
            
    return res

print(solution1(5,140,[90,50,70,100,60]))