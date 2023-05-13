def solution(n, arr):
    res = 0
    up=left=down=right=1
    arr.insert(0,[0]*n)
    arr.append([0]*n)

    for i in arr:
        i.insert(0,0)
        i.append(0)

    for i in range(1,n+1):
        for j in range(1,n+1):
            if arr[i][j] > arr[i-up][j] and arr[i][j] > arr[i][j-left] and arr[i][j] > arr[i+down][j] and arr[i][j] > arr[i][j+right]:
                res += 1

    return res

print(solution(5,[
    [5,3,7,2,3],
    [3,7,1,6,1],
    [7,2,5,3,4],
    [4,3,6,4,1],
    [8,7,3,5,2]
]))

# 강의답안 all 함수 
def solution1(n, arr):
    res = 0
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]
    arr.insert(0,[0]*n)
    arr.append([0]*n)

    for i in arr:
        i.insert(0,0)
        i.append(0)

    for i in range(1,n+1):
        for j in range(1,n+1):
            if all(arr[i][j]>arr[i+dx[k]][j+dy[k]] for k in range(4)): 
                res += 1

    return res

print(solution1(5,[
    [5,3,7,2,3],
    [3,7,1,6,1],
    [7,2,5,3,4],
    [4,3,6,4,1],
    [8,7,3,5,2]
]))