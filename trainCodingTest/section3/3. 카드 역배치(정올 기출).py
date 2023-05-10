def solution(arr):
    card = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

    for i in arr:
        first = i[0] - 1
        last = i[1]
        reverse = card[first:last]
        card[first:last] = reverse[::-1]

    return card

print(solution([
    [5,10],
    [9,13],
    [1,2],
    [3,4],
    [5,6],
    [1,2],
    [3,4],
    [5,6],
    [1,20],
    [1,20]
]))

#강의 답안
def solution1(arr):
    card = list(range(21)) # 0~20까지 리스트 생성

    for i in arr:
        s, e = i[0], i[1]
        for j in range((e-s+1)//2):
            card[s+j], card[e-j] = card[e-j], card[s+j] #스왑

    card.pop(0) # 앞에 0제거
    return card

print(solution1([
    [5,10],
    [9,13],
    [1,2],
    [3,4],
    [5,6],
    [1,2],
    [3,4],
    [5,6],
    [1,20],
    [1,20]
]))