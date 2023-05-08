def solution(n, arr):
    new_Arr = []
    bool_Arr = []

    for i in arr:
        original = str(i).upper()
        new_Arr.append(original)

    for i in new_Arr:
        if i == i[::-1]:
            bool_Arr.append("Yes")
        else:
            bool_Arr.append("No")

    return bool_Arr

print(solution(5, ["level","moon","abcba","soon","gooG"]))