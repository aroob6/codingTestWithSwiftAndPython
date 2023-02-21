'''
약수로 시도해봤으나 실패
전체너비(갈색 + 노란색) = (노란색 가로 + 2) * (노란색 세로 + 2)
'''
def solution(brown, yellow):
    answer = []
    for i in range(1, yellow+1) :
        if yellow % i == 0 : # 24, 12, 8, 6, 4, 3, 2, 1
            x, y = int(yellow/i), i # 6, 4
            if (x+2) * (y+2) == brown + yellow : # 8 * 6 = brown + yellow    
                answer.append(x+2)
                answer.append(y+2)
                
                return sorted(answer, reverse = True)
    
    return answer
print(solution(10,2)) #[4,3]
print(solution(8,1)) #[3,3]
print(solution(24,24)) #[8,6]