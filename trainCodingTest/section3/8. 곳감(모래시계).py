def solution(n,arr,m,arr1):
    def leftMove(moveArr):
        temp = moveArr[0]
        for i in range(1,len(moveArr)):
            moveArr[i-1] = moveArr[i]
        moveArr[len(moveArr) -1] = temp
        return moveArr
    
    def rigntMove(moveArr):
        temp = moveArr[len(moveArr) -1]
        for i in reversed(range(1, len(moveArr))):
            moveArr[i] = moveArr[i-1]
        moveArr[0] = temp
        return moveArr
    res = 0

    for i in range(m):
        hang = arr1[i][0]-1
        loc = arr1[i][1]
        move = arr1[i][2]

        if loc == 0:
            for _ in range(move):
                arr[hang] = leftMove(arr[hang])
        else:
            for _ in range(move):
                arr[hang] = rigntMove(arr[hang])

    s=0
    e=n

    for i in range(n):
        for j in range(s,e):
            res += arr[i][j]
        if i < n//2:
            s += 1
            e -= 1
        else:
            s -= 1
            e += 1

    return res

print(solution(
    5,
    [
    [10,13,10,12,15],
    [12,39,30,23,11],
    [11,25,50,53,15],
    [19,27,29,37,27],
    [19,13,30,13,19]
    ],
    3,
    [
    # 첫 번째 수는 행번호, 
    # 두 번째 수는 방향인데 0이면 왼쪽, 1이면 오른쪽이고, 
    # 세 번째 수는 회 전하는 격자의 수
    [2,0,3], 
    [5,1,2],
    [3,1,4]
    ]
))

#강의답
def solution1(n,arr,m,arr1): 
    arr = list(arr)
    for i in range(m):
        hang = arr1[i][0]-1
        loc = arr1[i][1]
        move = arr1[i][2]

        if loc == 0:
            for _ in range(move):
                arr[hang].append(arr[hang].pop(0))
        else:
            for _ in range(move):
                arr[hang].insert(0, arr[hang].pop())
    
    res=s=0
    e=n-1

    for i in range(n):
        for j in range(s,e+1):
            res += arr[i][j]
        if i < n//2:
            s += 1
            e -= 1
        else:
            s -= 1
            e += 1

    return res

print(solution1(
    5,
    [
    [10,13,10,12,15],
    [12,39,30,23,11],
    [11,25,50,53,15],
    [19,27,29,37,27],
    [19,13,30,13,19]
    ],
    3,
    [
    [2,0,3], 
    [5,1,2],
    [3,1,4]
    ]
))