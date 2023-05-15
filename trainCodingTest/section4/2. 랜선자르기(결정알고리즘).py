# 결정알고리즘 -> 이분검색으로 품
# 특징: 답이 특정 범위안에 있다고 알수있음

# 범위잡기 0 ~ 802 -> 중간값 401
# 401로는 11개 못만듦
# 다시 범위잡기 0 ~ 400 -> 중간값 200

def solution(k,n,arr):
    def Count(len):
        cnt = 0
        for i in arr:
            cnt += i // len
        return cnt

    res = 0
    lt = 1
    rt = max(arr)
    
    while lt <= rt:
        mid = (lt+rt) // 2

        if Count(mid) >= n:
            res = mid
            lt = mid + 1
        else:
            rt = mid - 1

    return res

print(solution(4,11,[802,743,457,539]))