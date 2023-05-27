def solution(n):
    ch = [0] * (n+1)
    def DFS(x):
        if x == n+1:
            for i in range(1,n+1):
                if ch[i] == 1:
                    print (i, end=" ")
            print()
        else:
            ch[x] = 1
            DFS(x+1)
            ch[x] = 0
            DFS(x+1)
    DFS(1)
    return "끝"

print(solution(3))