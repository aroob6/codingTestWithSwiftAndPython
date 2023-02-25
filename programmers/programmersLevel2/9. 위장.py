'''
경우의 수를 계산하는 문제
headgear - 2개
1. 안입음 2.1번째만 3.2번째만
eyewear - 1게
1.안입음 2.1번째만

즉, 3 * 2 = 6
6 - 1 = 5 (둘다 안입을때 제외)
'''

def solution(clothes):
    hashMap = {}
    for name, type in clothes:
        hashMap[type] = hashMap.get(type, 0) + 1
    
    answer = 1 
    for type in hashMap:
        answer *= (hashMap[type] + 1)
    
    # 두개 다 안입는 경우 제외 
    return answer - 1

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))