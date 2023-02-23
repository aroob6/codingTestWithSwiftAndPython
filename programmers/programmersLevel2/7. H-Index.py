def solution(citations):
    citations.sort(reverse=True)
    print(citations)
    l = len(citations)
    for i in range(l):
        if citations[i] <= l - i: # h번 이상 인용된 논문이 h편 이상이라는 조건
            return l - i
    return 0

print(solution([3, 0, 6, 1, 5])) # 3