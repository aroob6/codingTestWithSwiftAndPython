def solution(n,m,arr):
    # n: 세로, m: 가로
    answer = 0
    def dfs(x,y):
        print(x,y,arr)
        if x <= -1 or x >= n or y <= -1 or y >=m:
            return False

        if arr[x][y] == 0:
            arr[x][y] = 1
            dfs(x-1,y) #상
            dfs(x+1,y) #하
            dfs(x,y-1) #좌
            dfs(x,y+1) #우
            return True
        return False

    for i in range(n):
        for j in range(m):
            print("")
            if dfs(i,j) == True:
                answer += 1
    return answer

print(solution(4,5,[[0,0,1,1,0], [0,0,0,1,1], [1,1,1,1,1], [0,0,0,0,0]]))
    
    