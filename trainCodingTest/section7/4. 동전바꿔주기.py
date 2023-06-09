def DFS(L, sum):
    global res
    if sum > t:
        return
    if L == k:
        if sum == t:
            res += 1
    else:
        for i in range(pn[L][1]+1):
            DFS(L+1,sum+(pn[L][0]*i))

if __name__ == "__main__":
    t = 20
    k = 3
    pn = [
        [5,3],
        [10,2],
        [1,5]
    ]
    ch = [0] * k 
    res = 0

    DFS(0,0)
    print(res)