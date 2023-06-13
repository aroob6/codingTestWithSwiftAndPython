from collections import deque
def solution(s,e):
    MAX = 10000
    ch = [0] * (MAX+1)
    dis = [0] * (MAX+1)
    ch[s] = 1
    dis[s] = 0

    dQ = deque()
    dQ.append(s)

    while dQ:
        now = dQ.popleft()
        if now == e:
            break
        for next in (now-1, now+1, now+5):
            if 0 < next <= MAX:
                if ch[next] == 0: #가지 않은 곳 
                    dQ.append(next)
                    ch[next] = 1
                    dis[next] = dis[now] +1

    return dis[e]
print(solution(5,14))
