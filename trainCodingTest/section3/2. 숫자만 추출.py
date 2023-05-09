def solution(string):
    def isPrime(n):
        cnt = 0
        for i in range(1, n+1):
            if n % i == 0:
                cnt += 1
        return cnt

    string = str(string)
    str_num = ""
    num = 0
    res = []

    for chr in string:
        if chr.isdigit():
            str_num += chr

    num = int(str_num)

    res.append(num)
    res.append(isPrime(num))
    return res

# 강의 답안 
def solution1(string):
    def isPrime(n):
        cnt = 0
        for i in range(1, n+1):
            if n % i == 0:
                cnt += 1
        return cnt

    string = str(string)
    str_num = ""
    num = 0
    res = []

    for chr in string:
        if chr.isdecimal():
            num = num * 10 + int(chr) #문자를 숫자로 바꾸는 방법 

    res.append(num)
    res.append(isPrime(num))
    return res

print(solution("g0en2Ts8eSoft"))
print(solution("t0e0a1c2h0er"))

print(solution1("g0en2Ts8eSoft"))
print(solution1("t0e0a1c2h0er"))