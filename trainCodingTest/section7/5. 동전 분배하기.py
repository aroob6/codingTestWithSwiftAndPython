def DFS(L):
    global m, res
    if L == n:
        min_minus = max(m) - min(m)
        if res > min_minus:
            tmp = set() #총액이 다르도록 set()
            for x in m:
                tmp.add(x)
            if len(tmp) == 3: #3이면 각자 총액이 다름 
                res = min_minus 
    else:
        for i in range(3):
            m[i] += arr[L]
            DFS(L+1)
            m[i] -= arr[L]
    return

if __name__ == "__main__":
    n = 7
    arr = [8, 9, 11, 12, 23, 15, 17]
    m = [0] * 3
    res = 2147000000

    DFS(0)
    print(res)
