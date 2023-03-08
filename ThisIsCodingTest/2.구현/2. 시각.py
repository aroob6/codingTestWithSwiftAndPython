def solution(n):
    answer = 0

    for i in range(n+1): #시
        for j in range(60): #분
            for k in range(60): #초
                if "3" in  str(i) + str(j) + str(k): # 3이 tr(i) + str(j) + str(k) 있으면 
                    answer += 1

    return answer

print(solution(5))