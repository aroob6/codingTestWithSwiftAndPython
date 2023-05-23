import heapq as hq

def solution():
    a = []
    while True:
        n = int(input())
        if n == -1:
            break
        if n == 0:
            if len(a) == 0:
                print(-1)
            else:
                print(hq.heappop(a))
        else:
            hq.heappush(a, n)
            
    return "종료"

print(solution())