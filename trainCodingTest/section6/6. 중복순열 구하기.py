def DFS(L):
    global cnt
    if L == m:
        for i in range(m):
            print(res[i], end=" ")
        print()
        cnt += 1
    else:
        for i in range(1,n+1):
            res[L] = i
            DFS(L+1)

if __name__ == "__main__":
    n = 3
    m = 2
    res = [0] * n
    cnt = 0
    DFS(0)
    print(cnt)