'''
L - 왼쪽 한칸 이동
R - 오른쪽 한칸 이동
U - 위로 한칸 이동
D - 아래로 한칸 이동 
'''

def solution(n, arr):
    x,y = 1, 1

    for i in arr:
        if i == "L":
            if y > 1:
                y -= 1
        elif i == "R":
            y += 1
        elif i == "U":
            if x > 1:
                x -= 1
        elif i == "D":
            x += 1
    return x, y

print(solution(5,["R", "R", "R", "U", "D", "D"]))