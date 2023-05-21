from collections import deque

def solution(n,k):
    q = list(range(1,n+1))
    dq = deque(q)
    res = 0

    while dq:
        print(dq)
        for _ in range(k-1):
            cur = dq.popleft()
            dq.append(cur)
        dq.popleft()
        if len(dq) == 1:
            res = dq[0]
            dq.popleft()

    return res
print(solution(8,3))