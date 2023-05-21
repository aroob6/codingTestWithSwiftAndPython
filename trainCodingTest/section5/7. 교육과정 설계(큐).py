from collections import deque

def solution(s,n,arr):
    res = []
    for i in range(n):
        q = deque(s)
        for j in range(len(arr[i])):
            while q:
                if q[0] == arr[i][j]:
                    q.popleft()
                else:
                    break
        if len(q) != 0:
            res.append("NO")
        else:
            res.append("YES")

    return res

print(solution("CBA",3,["CBDAGE", "FGCDAB", "CTSBDEA"]))
print(solution("AFC",1,["AFFDCCFF"]))
print(solution("POIUYTREW",9,[
    "ASDPFOGIHJUKYZTXRCEVWBNM",
    "QASWDFEGRHTCJVYK",
    "PBOVICXZSDUAYFTGRHEJWKL",
    "KJHDGAFQZWXECRVTBY",
    "WOPASFKGHDEF",
    "MPNBVCXZSAOFIGUHYJTKREW",
    "MZCTSBDEA",
    "NKJHDGAFQZWXECRVTBY",
    "OQASWDFEGRHTCJVYK"
]))
print(solution("MNBVCX",10,[
    "QWEMRNTBYVUASDFGCX",
    "RTYMUNIBOVACSXDQFWE",
    "DFGMKNJBLAVQCWXE",
    "RKJHDGAFQZWXECRVTBY",
    "QWERTYUMNBVASDFGCXAJK",
    "MPNBVCXZSAOFIGUHYJTKREW",
    "MQNBVUCXE",
    "NKJHDGAFQZWXECRVTBY",
    "OQASWDFEGRHTCJVYK",
    "QMTNBOVFDCGXP"
]))

# 강의답안
def solution1(s,n,arr):
    res = []
    for i in range(n):
        dq = deque(s)
        for x in arr[i]:
            if x in dq: # dq에 강의순서가 있는지
                if x != dq.popleft(): # 필수과목 맨 앞과 강의가 다르면
                    res.append("%d NO" %(i+1)) # 바로 NO출력 후 멈춤
                    break
        else:
            if len(dq) == 0: #dq가 아무것도 없으면 
                res.append("%d YES" %(i+1))
            else:
                res.append("%d NO" %(i+1))

    return res
print(solution1("CBA",3,["CBDAGE", "FGCDAB", "CTSBDEA"]))