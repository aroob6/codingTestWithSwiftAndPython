def solution(n, arr):
    new_Arr = []
    bool_Arr = []

    for i in arr:
        str_upper = str(i).upper()
        new_Arr.append(str_upper)

    for i in new_Arr:
        if i == i[::-1]:
            bool_Arr.append("Yes")
        else:
            bool_Arr.append("No")

    return bool_Arr

# 강의에서 권장하는 방법 
def solution1(n, arr):
    new_Arr = []
    bool_Arr = []

    for i in arr:
        str_upper = str(i).upper()
        new_Arr.append(str_upper)

    for i in new_Arr:
        for j in range(len(i)//2):
            if i[j]!=i[-1-j]:
                bool_Arr.append("No")
                break
        else:
            bool_Arr.append("Yes")
    
    return bool_Arr


print(solution(5, ["level","moon","abcba","soon","gooG"]))
print(solution1(5, ["level","moon","abcba","soon","gooG"]))