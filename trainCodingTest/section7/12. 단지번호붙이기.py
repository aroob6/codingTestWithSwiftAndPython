def DFS(x,y):
    global cnt
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]

    map[x][y] = 0
    cnt += 1
    for i in range(4):
        xx = x + dx[i]
        yy = y + dy[i]
        if 0<= xx < n and 0<= yy < n and map[xx][yy]==1:
            DFS(xx,yy)

if __name__ == "__main__":
    n = 7
    map = [
    [0,1,1,0,1,0,0],
    [0,1,1,0,1,0,1],
    [1,1,1,0,1,0,1],
    [0,0,0,0,1,1,1],
    [0,1,0,0,0,0,0],
    [0,1,1,1,1,1,0],
    [0,1,1,1,0,0,0]
    ]
    # n = 10
    # map = [
    # [0,1,1,1,0,1,1,1,1,0],
    # [0,1,0,1,1,1,0,0,1,0],
    # [1,1,1,0,0,0,1,1,1,1],
    # [1,1,0,0,1,1,0,1,0,1],
    # [0,1,1,0,1,0,0,0,0,0],
    # [0,0,1,1,1,1,0,0,0,0],
    # [1,0,1,1,0,1,0,1,0,1],
    # [1,0,0,1,0,1,0,1,1,1],
    # [1,1,0,1,1,1,1,1,1,0],
    # [0,1,1,1,0,1,0,1,1,1]
    # ]
    cnt = 0
    res = []

    for i in range(n):
        for j in range(n):
            if map[i][j] == 1:
                cnt = 0
                DFS(i,j)
                res.append(cnt)
    
    print(len(res))
    res.sort()
    for x in res:
        print(x)

from collections import deque
def solution(n, map):
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]
    cnt = 0
    res = []
    Q = deque()

    for i in range(n):
        for j in range(n):
            if map[i][j] == 1:
                map[i][j] = 0
                Q.append((i,j))
                cnt=1
                while Q:
                    tmp = Q.popleft()
                    for k in range(4):
                        x = tmp[0] + dx[k]
                        y = tmp[1] + dy[k]

                        if x<0 or x>=n or y<0 or y>=n or map[x][y]==0:
                            continue
                        map[x][y] = 0
                        Q.append((x,y))
                        cnt+=1
                res.append(cnt)
    print(len(res))
    res.sort()
    for x in res:
        print(x)     
    return 

print(solution(7, [
    [0,1,1,0,1,0,0],
    [0,1,1,0,1,0,1],
    [1,1,1,0,1,0,1],
    [0,0,0,0,1,1,1],
    [0,1,0,0,0,0,0],
    [0,1,1,1,1,1,0],
    [0,1,1,1,0,0,0]
]))