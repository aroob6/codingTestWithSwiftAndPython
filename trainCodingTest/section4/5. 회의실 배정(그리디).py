# 그리디 -> 단계에서 가장 좋은거 -> 정렬
# 그리디는 거의 정렬을 동반함

def solution(n,arr):
    arr.sort(key=lambda x: [x[1],x[0]])
    res = 0
    et = 0

    for i in range(len(arr)):
        if arr[i][0] >= et:
            et = arr[i][1]
            res += 1

    return res

print(solution(5,[
    [1,4],
    [2,3],
    [3,5],
    [4,6],
    [5,7]
]))