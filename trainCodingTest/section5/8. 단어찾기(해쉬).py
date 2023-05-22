def solution(n,arr):
    answer = arr[:n]
    write = arr[n:]
    res = ""

    for i in answer:
        if i in write:
            continue
        else:
            res = i

    return res

print(solution(5, [
    "big", "good", "sky", "blue", "mouse", "sky", "good", "mouse", "big"
]))
print(solution(16, [
    "good",
    "sad",
    "difficult",
    "student",
    "kind",
    "teacher",
    "big",
    "good",
    "sky",
    "blue",
    "baseball",
    "dkfkjgk",
    "mouse",
    "back",
    "tom",
    "dkfjkqhgk",
    "sky",
    "good",
    "mouse",
    "big",
    "blue",
    "dkfkjgk",
    "tom",
    "dkfjkqhgk",
    "student",
    "teacher",
    "back",
    "good",
    "sad",
    "difficult",
    "kind",
]))

# 강의답안
def solution1(n,arr):
    p = dict()
    res = ""

    for i in range(n):
        p[arr[i]] = 1

    for i in range(5, len(arr)):
        p[arr[i]] = 0

    for key, val in p.items():
        if val == 1:
            res = key
    return res

print(solution1(5, [
    "big", "good", "sky", "blue", "mouse", "sky", "good", "mouse", "big"
]))