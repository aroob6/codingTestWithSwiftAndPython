def solution(n):
    res = ""
    def DFS(x):
        if x == 0:
            return
        else:
            DFS(x//2)
            print(x%2, end=' ')
            
    return DFS(n)

print(solution(11))