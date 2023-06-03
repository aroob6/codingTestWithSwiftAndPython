def solution(n,m,arr):
    g = [[0] * n for _ in range(n)]

    for i in range(0,len(arr)):
        row = col = weight = 0
        for j in range(0,len(arr[i])):
            if j == 0:
                row = arr[i][j] - 1
            elif j == 1:
                col = arr[i][j] - 1
            else:
                weight = arr[i][j]
        g[row][col] = weight

    return g

print(solution(6,9,[
    [1,2,7],
    [1,3,4], 
    [2,1,2], 
    [2,3,5], 
    [2,5,5], 
    [3,4,5], 
    [4,2,2],
    [4,5,5],
    [6,4,5]
]))