def solution(people, limit):
    answer = 0
    people.sort()

    first = 0
    last = len(people) - 1

    while first <= last:
        answer += 1
        if people[last] + people[first] <= limit:
            first += 1
        last -= 1
    return answer

print(solution([70, 50, 80, 50], 100)) # 3
# print(solution([70, 80, 50], 100)) # 3