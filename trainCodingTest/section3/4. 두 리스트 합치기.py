# 강의 답안
# sort() 사용 시 시간복잡도 8log8
def solution(n, arr, m, arr1):
    new_arr = []
    p1=p2=0

    while p1 < n and p2 < m:
        if arr[p1] <= arr1[p2]:
            new_arr.append(arr[p1])
            p1 += 1
        else:
            new_arr.append(arr1[p2])
            p2 += 1

    if p1 < n:
        new_arr = new_arr + arr[p1:]

    if p2 < m:
        new_arr = new_arr + arr1[p2:]

    return new_arr

print(solution(3, [1,3,5], 5, [2,3,6,7,9]))