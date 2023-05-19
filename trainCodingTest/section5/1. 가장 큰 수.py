def solution(num, m):
    num = list(map(int,str(num)))
    stack = []

    for x in num:
        while stack and m > 0 and stack[-1] < x: #stack 값이 있고 지워야하고 stack마지막 값이 자신보다 작을 때
            stack.pop()
            m -= 1
        stack.append(x)
    if m != 0: # 다 못지웠을 때 
        stack=stack[:-m]

    return ''.join(map(str, stack))

print(solution(5276823,3))