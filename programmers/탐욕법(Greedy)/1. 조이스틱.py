'''
상▲ - 다음 알파벳
하▼ - 이전 알파벳 (A에서 아래쪽으로 이동하면 Z로)
좌◀ - 커서를 왼쪽으로 이동 (첫 번째 위치에서 왼쪽으로 이동하면 마지막 문자에 커서)
우▶ - 커서를 오른쪽으로 이동 (마지막 위치에서 오른쪽으로 이동하면 첫 번째 문자에 커서)

'''

def solution(name):
    answer = 0
    minMove = len(name) - 1

    for i, chr in enumerate(name):
        answer += min(ord(chr) - ord("A"), ord("Z") - ord(chr) + 1)

        next = i + 1
        while next < len(name) and name[next] == "A":
            next += 1
        
        minMove = min([minMove, 2 * i + len(name) - next, i + 2 * (len(name) - next)])

    answer += minMove
    return answer


print(solution("JEROEN")) #56
print(solution("JAN")) #23