'''
capitalize() - 첫글자를 대문자로 만들어주는 함수
'''

def solution(s):
    arr = s.split(' ') # 공백문자가 여러 개일 경우가 있음 split() 안됨 
    for i in range(len(arr)):
        arr[i] = arr[i].capitalize()
    answer = ' '.join(arr)
    return answer

print(solution("for case and"))