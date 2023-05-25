from itertools import combinations
def solution(n,m,arr):
    home = []
    chicken = []
    res = 99999

    for i in range(n):
        for j in range(n):
            if arr[i][j] == 1:
                home.append((i+1,j+1))
            elif arr[i][j] == 2:
                chicken.append((i+1,j+1))

    for x in combinations(chicken,m):
        d = 0
        for h in home:
            d_min = 999
            for c in x:
                dx = abs(h[0]-c[0])
                dy = abs(h[1]-c[1])
                d_min = min(d_min, dx + dy)
            d += d_min
        res = min(res, d)
                
    return res

print(solution(5,3,[
    [0, 0, 1, 0, 0],
    [0, 0, 2, 0, 1],
    [0, 1, 2, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 0, 0, 0, 2]
]))

print(solution(5,2,[
    [0, 2, 0, 1, 0],
    [1, 0, 1, 0, 0],
    [0, 0, 0, 0, 0],
    [2, 0, 0, 1, 1],
    [2, 2, 0, 1, 2]
]))

print(solution(5,2,[
    [1, 2, 0, 0, 0],
    [1, 2, 0, 0, 0],
    [1, 2, 0, 0, 0],
    [1, 2, 0, 0, 0],
    [1, 2, 0, 0, 0],
]))

print(solution(5,1,[
    [1, 2, 0, 2, 1],
    [1, 2, 0, 2, 1],
    [1, 2, 0, 2, 1],
    [1, 2, 0, 2, 1],
    [1, 2, 0, 2, 1]
]))