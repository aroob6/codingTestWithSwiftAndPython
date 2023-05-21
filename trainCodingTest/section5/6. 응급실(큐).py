from collections import deque

def solution(n,m,arr):
    new_list = []

    for index, value in enumerate(arr):
        new_list.append((index,value))

    dq = deque(new_list)
    find = new_list[m]
    bye = 0
    res = 0

    while True:
        for i in range(1, len(dq)):
            if dq[0][1] < dq[i][1]:
                cur = dq.popleft()
                dq.append(cur)
                break
        else:
            bye = dq.popleft()
            res += 1
            if find == bye:
                break

    return res

# print(solution(5,2,[60,50,70,80,90]))
# print(solution(6,0,[60,60,90,60,60,60]))
# print(solution(15,5,[63, 53, 87, 91, 83, 72, 83, 92, 63, 68, 88, 74, 51, 82, 89]))
# print(solution(100,25,[70, 81, 58, 71, 62, 68, 92, 63, 50, 53, 53, 61, 77, 96, 67, 60, 74, 54, 91, 81, 65, 65, 82, 50, 95, 98, 87, 93, 70, 72, 90, 62, 64, 99, 74, 73, 67, 95, 71, 82, 61, 96, 57, 84, 84, 91, 52, 50, 88, 90, 77, 54, 50, 70, 52, 99, 99, 83, 72, 57, 78, 61, 54, 59, 58, 78, 79, 75, 84, 78, 95, 61, 61, 50, 90, 76, 51, 55, 64, 99, 50, 72, 61, 77, 72, 93, 62, 87, 76, 57, 62, 74, 94, 71, 98, 84, 63, 74, 73, 68]))

# 강의답안 
def solution1(n,m,arr):
    Q = [(pos,val) for pos, val in enumerate(arr)]
    Q = deque(Q)
    cnt = 0

    while True:
        cur = Q.popleft() #맨 앞사람 꺼냄
        if any(cur[1] < x[1] for x in Q): # 뒷사람보다 위험도 큰지 확인
            Q.append(cur) #뒷 사람이 위험도 크면 뒤로보냄
        else: #제일 위험도 높으면
            cnt += 1 
            if cur[0] == m: #같은 몇번째인지 확인 
                break
    return cnt

print(solution1(5,2,[60,50,70,80,90]))