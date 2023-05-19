def solution(string):
    stack = []
    res = 0

    for i in range(len(string)):
        if string[i] == "(":
            stack.append(string[i])
        else: # ")"일 때  
            stack.pop()
            if string[i-1] == "(": # 레이저임 
                res += len(stack)
            else: # 막대 끝임 
                res += 1
    return res

print(solution("()(((()())(())()))(())"))
print(solution("(((()(()()))(())()))(()())"))