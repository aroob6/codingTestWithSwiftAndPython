def DFS(L):
    global cnt
    if L == m:
        for i in range(m):
            print(res[i], end=" ")
        print()
        cnt += 1
    else:
        for i in range(1,n+1):
            if num[i] == 0:
                num[i] = 1
                res[L] = i
                DFS(L+1) # 여기 아래 부분은 백하고 온 후 실행
                num[i] = 0

if __name__ == "__main__":
    n = 3
    m = 2
    num = [0] * (n+1)
    res = [0] * m
    cnt = 0
    DFS(0)
    print(cnt)