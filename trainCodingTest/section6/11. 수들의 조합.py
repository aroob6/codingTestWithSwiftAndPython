import itertools as it
# def DFS(L,s,sum):
#     global cnt
#     if L == k and sum % m == 0:
#         cnt += 1
#     else:
#         for i in range(s,n):
#             DFS(L+1, i+1, sum+arr[i])

# if __name__ == "__main__":
#     n = 5
#     k = 3
#     arr = [2,4,5,8,12]
#     m = 6
#     cnt = 0
#     DFS(0,0,0)
#     print(cnt)

def solution(n,k,arr,m):
    cnt = 0

    for x in it.combinations(arr,k):
        if sum(x)%m == 0:
            cnt += 1

    return cnt

print(solution(5,3,[2,4,5,8,12],6))