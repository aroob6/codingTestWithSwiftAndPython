def solution(s):
    s = str(s)
    stack = []
    res = ""

    for x in s:
        if x.isdecimal():
            res += x
        else:
            if x == "(":
                stack.append(x)
            elif x in ("*","/"):
                while stack and (stack[-1] in ("*","/")):
                    res += stack.pop()
                stack.append(x)
            elif x in ("+","-"):
                while stack and stack[-1]!="(": # 괄호 안에 있는 +,-가 아니란 말 
                    res += stack.pop() # +,-가 우선순위가 낮으니 스택에 있는거 뺌 
                stack.append(x)
            elif x == ")":
                while stack and stack[-1]!="(":
                    res += stack.pop()
                stack.pop() # (도 없애줌 
    while stack:
        res += stack.pop()


    return res

print(solution("3+5*2/(7-2)"))
print(solution("3*(5+2)-9"))