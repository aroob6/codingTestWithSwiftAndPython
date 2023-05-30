import sys
def DFS(L, sum):
    if L == n and sum == f:
        for i in p:
            print(i, end=" ")
        sys.exit(0)
    else:
        for i in range(1,n+1):
            if num[i] == 0:
                num[i] = 1
                p[L] = i
                DFS(L+1, sum+(p[L]*b[L])) # 여기 아래 부분은 백하고 온 후 실행
                num[i] = 0

if __name__ == "__main__":
    n = 4
    f = 16
    num = [0] * (n+1)
    p = [0] * n
    b = [0] * n

    for i in range(n):
        if i == 0 or i == n-1:
            b[i] = 1
        else:
            b[i] = 3
    DFS(0, 0)



