def DFS(v):
    global cnt
    if v == n:
        for x in path:
            print(x, end=' ')
        print()
        cnt += 1
    else:
        for i in range(1, n+1):
            if g[v][i] == 1 and ch[i] == 0:
                ch[i] = i
                path.append(i)
                DFS(i)
                ch[i] = 0
                path.pop()

if __name__ == "__main__":
    n = 5
    m = 9
    arr = [
        [1,2], 
        [1,3], 
        [1,4], 
        [2,1], 
        [2,3], 
        [2,5], 
        [3,4], 
        [4,2], 
        [4,5]
    ]

    g = [[0]*(n+1) for _ in range(n+1)]
    ch = [0] * (n+1)
    cnt = 0
    path = []

    for i in range(0,len(arr)):
        row = col = 0
        for j in range(0,len(arr[i])):
            if j == 0:
                row = arr[i][j]
            elif j == 1:
                col = arr[i][j]
        g[row][col] = 1

    ch[1] = 1
    path.append(1)
    DFS(1)
    print(cnt)