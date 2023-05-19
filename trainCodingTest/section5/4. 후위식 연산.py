def solution(s):
    s = str(s)
    stack = []

    for x in s:
        print(stack)
        if x.isdecimal():
            stack.append(int(x))
        else:
            num1 = stack.pop()
            num2 = stack.pop()
            num3 = 0
            if x == "+":
                num3 = num2 + num1
            elif x == "-":
                num3 = num2 - num1
            elif x == "*":
                num3 = num2 * num1
            elif x == "/":
                num3 = num2 / num1
            stack.append(num3)
    return stack[0]

print(solution("352+*9-"))