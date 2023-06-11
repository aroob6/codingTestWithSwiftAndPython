def DFS(L, P):
    global cnt
    if L==n:
        cnt+=1
        for j in range(P):
            print(chr(res[j]+64), end='')
        print()
    else:
        for i in range(1, 27):
            if code[L]==i:
                res[P]=i
                DFS(L+1, P+1)
            elif i>=10 and code[L]==i//10 and code[L+1]==i%10:
                res[P]=i
                DFS(L+2, P+1)

if __name__ == "__main__":
    code=["2","5","1","1","4"]
    n=len(code)
    code.insert(n, -1) #마지막 자리가 3이상이면 인덱스 에러남 i//10일때 2가 아니기 때문에
    res=[0]*(n+3)
    cnt=0
    DFS(0, 0)
    print(cnt)