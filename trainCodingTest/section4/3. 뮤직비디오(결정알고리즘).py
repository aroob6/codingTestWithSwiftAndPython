# 강의 답
def solution(n,m,arr):
    def Count(amount):
        cnt = 1
        sum = 0
        for x in arr:
            if sum+x > amount: #sum+x가 mid값 보다 크면
                cnt += 1 # 개수 증가
                sum = x # sum을 x로 초기화 
            else:
                sum += x
        return cnt

    res = 0
    lt = 1
    rt = sum(arr)

    while lt <= rt:
        mid = (lt+rt) // 2

        if mid >= max(arr) and Count(mid) <= m: #최소를 구함 
            res = mid
            rt = mid -1 
        else:
            lt = mid + 1

    return res

print(solution(9,3,[1,2,3,4,5,6,7,8,9]))