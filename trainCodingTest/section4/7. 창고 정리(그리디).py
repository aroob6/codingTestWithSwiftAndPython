def solution(l,arr,m):
    arr.sort()
    for _ in range(m):
        print(arr)
        arr[0] += 1
        arr[l-1] -= 1
        arr.sort()

    return arr[l-1] - arr[0]

print(solution(10,[69,42,68,76,40,87,14,65,76,81],50))