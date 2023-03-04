def solution(n,k):
    answer = 0
    
    while n != 1:
        if n % k == 0:
            n /= k
        else:
            n -= 1
        answer += 1

    return answer

print(solution(17,4))
print(solution(25,3))
print(solution(27,3))