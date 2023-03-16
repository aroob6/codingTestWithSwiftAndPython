'''
ord() - 유니코드 정수 반환
'''
def solution(n):
    answer = 0
    x = ord(n[0]) - ord('a') + 1
    y = int(n[1])

    steps = [(2,1), (2,-1), (-2,1), (-2,-1), (1,2), (1,-2), (-1,2), (-1,-2)]

    for step in steps:
        next_x = step[0] + x
        next_y = step[1] + y

        if next_x >= 1 and next_x <=8 and next_y >= 1 and next_y <=8:
            answer += 1

    return answer

print(solution("a1"))
print(solution("c2"))