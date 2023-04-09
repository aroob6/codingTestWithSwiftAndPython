def solution(number, k):
    answer = []

    for i in number:
        while answer and answer[-1] < i and k > 0:
            answer.pop()
            k -= 1
        answer.append(i)
    if k > 0:
        answer = answer[:-k]

    return ''.join(answer)

print(solution("1924", 2)) #94
print(solution("1231234", 3)) #3234
print(solution("4177252841", 4)) #775841