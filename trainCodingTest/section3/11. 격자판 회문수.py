def solution(arr):
    res = 0
    for i in range(3): # 열 0~4 / 1~5 / 2~6
        for j in range(7): # 행 0~6
            tmp = arr[j][i:i+5] # 5자리 자르기 arr[0][0:5] / arr[0][1:6]
            if tmp == tmp[::-1]:
                res += 1
            for k in range(5//2): #회문 문자열 검사 5자리 2로 나누기
                if arr[i+k][j]!=arr[i+5-k-1][j]: # arr[0][0] != arr[4][0]
                    break
            else:
                 res += 1
    return res

print(solution([
    [2,4,1,5,3,2,6],
    [3,5,1,8,7,1,7],
    [8,3,2,7,1,3,8],
    [6,1,2,3,2,1,1],
    [1,3,1,3,5,3,2],
    [1,1,2,5,6,5,2],
    [1,2,2,2,2,1,5]
]))

arr = [2,4,1,5,3,2,6]
print(arr[0:5])
