from collections import deque

def solution(n,m,arr):
    def bfs(x,y):
        # dx = [-1,1,0,0] #좌 우 0 0
        # dy = [0,0,-1,1] #0 0 하 상

        #상하좌우
        direction = [(-1,0),(1,0), (0,1), (0,-1)]

        queue = deque()
        queue.append((x,y))
        
        while queue:
            x, y = queue.popleft()
            for i in range(4):
                # nx = x + dx[i]
                # ny = y + dy[i]

                nx = x + direction[i][0]
                ny = y + direction[i][1]

                if nx < 0 or ny < 0 or nx >=n or ny >=m :
                    continue
                if arr[nx][ny] == 0:
                    continue
        
                if arr[nx][ny] == 1:
                    arr[nx][ny] = arr[x][y] + 1 
                    queue.append((nx,ny))
        return arr[-1][-1] # [-1] 마지막 값 뽑기 
    return bfs(0,0)

print(solution(5,6,[[1,0,1,0,1,0], 
                    [1,1,1,1,1,1], 
                    [0,0,0,0,0,1], 
                    [1,1,1,1,1,1],
                    [1,1,1,1,1,1]]))
    
    