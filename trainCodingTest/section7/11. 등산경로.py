def DFS(x,y):
    global cnt
    if x == end_x and y == end_y:
        cnt+=1
    else:
        for i in range(4):
            xx = x + dx[i]
            yy = y + dy[i]
            if 0<=xx<n and 0<=yy<n and ch[xx][yy] == 0 and arr[xx][yy] > arr[x][y]:
                ch[xx][yy]=1
                DFS(xx,yy)
                ch[xx][yy]=0

if __name__ == "__main__":
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]

    n = 5
    arr = [
      [2, 23, 92, 78, 93], 
      [59, 50, 48, 90, 80],
      [30, 53, 70, 75, 96], 
      [94, 91, 82, 89, 93], 
      [97, 98, 95, 96, 100]  
    ]
    ch = [[0]*n for _ in range(n)]

    start = 2147000000
    end = -2147000000
    start_x = 0
    start_y = 0
    end_x = 0
    end_y = 0
    cnt = 0

    for i in range(n):
        for j in range(n):
            if start > arr[i][j]:
                start = arr[i][j]
                start_x = i
                start_y = j
            if end < arr[i][j]:
                end = arr[i][j]
                end_x = i
                end_y = j

    ch[start_x][start_y] = 0
    DFS(start_x,start_y)
    print(cnt)
    
