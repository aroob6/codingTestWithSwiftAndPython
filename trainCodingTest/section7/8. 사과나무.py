from collections import deque
def solution(n, arr):
    dx = [-1,0,1,0]
    dy = [0,1,0,-1]

    ch = [[0]*n for _ in range(n)]
    sum = 0
    Q = deque()
    ch[n//2][n//2] = 1
    sum += arr[n//2][n//2]
    Q.append((n//2,n//2))
    L=0

    while True:
        if L == n//2:
            break
        size = len(Q)
        for _ in range(size):
            tmp = Q.popleft()
            for j in range(4): #상하좌우
                x = tmp[0]+dx[j]
                y = tmp[1]+dy[j]
                if ch[x][y] == 0:
                    sum += arr[x][y]
                    ch[x][y] = 1
                    Q.append((x,y))
        L+=1

    return sum

print(solution(5, [
    [10, 13, 10, 12, 15],
    [12, 39, 30, 23, 11],
    [11, 25, 50, 53, 15], 
    [19, 27, 29, 37, 27],
    [19, 13, 30, 13, 19]
]))