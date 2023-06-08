def DFS(L, sum, time):
    global res
    if time > m:
        return
    if L == n:
        if sum > res:
            res = sum
    else:
        DFS(L+1, sum+arr[L][0], time+arr[L][1])
        DFS(L+1, sum, time)

if __name__ == "__main__":
    # n = 5
    # m = 20
    # arr = [
    # [10, 5],
    # [25, 12],
    # [15, 8],
    # [6, 3],
    # [7, 4]
    # ]

    n = 9
    m = 50
    arr = [
    [12, 7],
    [16, 8],
    [20, 10],
    [30, 15],
    [10, 5],
    [25, 12],
    [15, 8],
    [6, 3],
    [7, 4]
    ]
    res = -2147000000
    DFS(0, 0, 0)
    print(res)
