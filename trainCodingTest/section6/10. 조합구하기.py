def DFS(L,s):
    global cnt
    if L == m:
        for i in range(m):
            print(res[i], end=" ")
        print()
        cnt += 1
    else:
        for i in range(s,n+1):
            res[L] = i
            DFS(L+1,i+1)
            
if __name__ == "__main__":
    n = 4
    m = 2
    res = [0] * m
    cnt = 0
    DFS(0,1)
    print(cnt)
