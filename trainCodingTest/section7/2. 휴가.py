def DFS(L, sum):
    global max
    if L == n+1:
        if max < sum:
            max = sum
    else:
        if L + arr[L][0] <= n+1:
            DFS(L+arr[L][0], sum+arr[L][1])
        DFS(L+1, sum)

if __name__ == "__main__":
    # n = 7
    # arr = [
    #     [4, 20],
    #     [2, 10],
    #     [3, 15],
    #     [3, 20], 
    #     [2, 30], 
    #     [2, 20], 
    #     [1, 10]
    # ]

    n = 7
    arr = [
        [0, 0],
        [3, 40],
        [2, 15],
        [3, 50],
        [3, 25],
        [2, 20],
        [2, 30],
        [1, 10]
    ]
    max = 0

    DFS(1,0)
    print(max)