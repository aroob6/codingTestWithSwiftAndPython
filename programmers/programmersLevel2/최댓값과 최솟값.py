''' 
map()을 사용하여 값을 str -> int 로 변경
list()를 통해 list로 변경
'''
def solution(s):
    arr = list(map(int, s.split())) 
    answer = str(min(arr)) + " " + str(max(arr))
    return answer

print(solution("-1 -2 -3 -4"))
