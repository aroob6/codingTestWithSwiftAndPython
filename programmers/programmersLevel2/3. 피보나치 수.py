# 재귀함수 사용 시 시간 초과
'''
def solution(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return solution(n-1) + solution(n-2)
'''
'''
def solution(num):
    a, b = 0, 1
    for i in range(num):
        a, b = b, (a+b) % 1234567
    return a
'''

def solution(n):
    a = [0,1]
    for i in range(2, n+1):
        a.append((a[i-1] + a[i-2]) % 1234567)
    return a[-1]

print(solution(3))
