def DFS(x,y,h):
    ch[x][y] = 1
    for i in range(4):
        xx = x + dx[i]
        yy = y + dy[i]
        if 0<=xx<n and 0<=yy<n and ch[xx][yy] == 0 and map[xx][yy] > h:
            DFS(xx, yy, h)

if __name__ == "__main__":
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]
    n = 5
    map = [
    [6,8,2,6,2],
    [3,2,3,4,6], 
    [6,7,3,3,2], 
    [7,2,5,3,6], 
    [8,9,5,2,7]
    ]
    cnt = 0
    res = 0

    for h in range(100):
        ch = [[0]* n for _ in range(n)]
        cnt = 0
        for i in range(n):
            for j in range(n):
                if ch[i][j] == 0 and map[i][j] > h:
                    cnt += 1
                    DFS(i, j, h)
        res = max(res, cnt)
        if cnt == 0:
            break
    print(res)
