from collections import deque

def solution(n, map):
    dx=[-1, -1, 0, 1, 1, 1, 0, -1]
    dy=[0, 1, 1, 1, 0, -1, -1, -1]
    cnt = 0
    Q = deque()

    for i in range(n):
        for j in range(n):
            if map[i][j] == 1:
                map[i][j]=0
                Q.append((i,j))
                while Q:
                    tmp = Q.popleft()
                    for k in range(len(dx)):
                        x = tmp[0] + dx[k]
                        y = tmp[1] + dy[k]

                        if x<0 or x>=n or y<0 or y>=n or map[x][y]==0:
                            continue
                        map[x][y]=0
                        Q.append((x,y))
                cnt+=1

    return cnt

print(solution(7, [
    [1,1,0,0,0,1,0], 
    [0,1,1,0,1,1,0], 
    [0,1,0,0,0,0,0], 
    [0,0,0,1,0,1,1], 
    [1,1,0,1,1,0,0], 
    [1,0,0,0,1,0,0], 
    [1,0,1,0,1,0,0]
]))