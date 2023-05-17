# 키가 작은 순서대로 정렬
# 뒤에있는 애들보다 몸무게가 커야함 
def solution(n,arr):
    arr.sort()
    res = n
    i = 1

    while i<n:
        main = arr[i-1]
        for j in range(i,n):
            if main[1] < arr[j][1]:
                res -= 1
                break
        i+=1
            
    return res

print(solution(5,[
    [172,67],
    [183,65],
    [180,70],
    [170,72],
    [181,60]
]))
print(solution(10,[
    [177, 107],
    [205, 88],
    [179, 65],
    [165, 104],
    [180, 50],
    [166, 116],
    [199, 119],
    [171, 70],
    [176, 51],
    [207, 101]
]))
print(solution(15,[
    [192, 117],
    [190, 110],
    [184, 98],
    [212, 91],
    [177, 89],
    [218, 78],
    [152, 106],
    [182, 64],
    [193, 88],
    [198, 71],
    [216, 111],
    [155, 101],
    [181, 92],
    [173, 77],
    [215, 97]
]))

# 강의답안 
# 키가 큰 선수부터 정렬을 하고 몸무게만 비교 
def solution1(n,arr):
    arr.sort(reverse=True)
    largest = 0
    cnt = 0

    for i in range(n):
        if arr[i][1]>largest:
            largest = arr[i][1]
            cnt += 1
            
    return cnt 

print()
print(solution1(5,[
    [172,67],
    [183,65],
    [180,70],
    [170,72],
    [181,60]
]))

print(solution1(10,[
    [177, 107],
    [205, 88],
    [179, 65],
    [165, 104],
    [180, 50],
    [166, 116],
    [199, 119],
    [171, 70],
    [176, 51],
    [207, 101]
]))

print(solution1(15,[
    [192, 117],
    [190, 110],
    [184, 98],
    [212, 91],
    [177, 89],
    [218, 78],
    [152, 106],
    [182, 64],
    [193, 88],
    [198, 71],
    [216, 111],
    [155, 101],
    [181, 92],
    [173, 77],
    [215, 97]
]))