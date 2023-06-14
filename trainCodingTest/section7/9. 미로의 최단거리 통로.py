from collections import deque
def solution(arr):
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]
    dis = [[0]*7 for _ in range(7)]

    Q = deque()
    Q.append((0,0))

    arr[0][0] = 1 # 방문하면 1로 

    while Q:
        tmp = Q.popleft()

        for i in range(4):
            x = tmp[0] + dx[i]
            y = tmp[1] + dy[i]

            if 0<=x<=6 and 0<=y<=6 and arr[x][y] == 0:
                arr[x][y] = 1
                dis[x][y] = dis[tmp[0]][tmp[1]] + 1
                Q.append((x,y))
    if dis[6][6] == 0:
        return -1
    else:
        return dis[6][6]

print(solution([
    [0,0,0,0,0,0,0], 
    [0,1,1,1,1,1,0], 
    [0,0,0,1,0,0,0], 
    [1,1,0,1,0,1,1], 
    [1,1,0,1,0,0,0], 
    [1,0,0,0,1,0,0], 
    [1,0,1,0,0,0,0]
]))