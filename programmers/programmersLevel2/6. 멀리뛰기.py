'''
def solution(n):
    if n < 3:
        return n
    else:
        return solution(n-1) + solution(n-2)
'''
def solution(n): #3
    if n < 3:
        return n
    a = [1,2]
    for i in range(2, n):
        a.append((a[i-1] + a[i-2]) % 1234567)
    return a[-1]

print(solution(4)) # 5 [1,1,1,1] [1,1,2] [1,2,1] [2,1,1] [2,2]
# print(solution(3)) # 3 [1,1,1] [1,2] [2,1]
# print(solution(2)) # 2 [1,1] [2] 
# print(solution(1)) # 1 [1]

def jumpCase(num):
    a, b = 1, 2
    for _ in range(2,num):
        a, b = b, a+b
    return b

print(jumpCase(1))