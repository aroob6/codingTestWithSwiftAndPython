# def DFS(L, sum1):
#     global res
#     if L == n:
#         if m == sum(list1):
#             if res > len(list1):
#                 res = len(list1)
#     else:
#         for i in range(n):
#             list1[L] = arr[i]
#             DFS(L+1,sum1+arr[L])

#     return 0

# if __name__ == "__main__":
#     n = 3
#     arr = [1, 2, 5]
#     m = 15
#     list1 = [0] * n
#     res = 100
#     arr.sort(reverse=True)
#     DFS(0, 0)
#     print(res)

#강의 답안
def DFS(L, sum1):
    global res
    if L > res: #결과 레벨보다 넘으면 종료 (볼 필요 없음)
        return
    if sum1 > m:
        return
    if sum1 == m:
        if L < res:
            res = L
    else:
        for i in range(n):
            DFS(L+1,sum1+arr[i])

    return 0

if __name__ == "__main__":
    n = 3
    arr = [1, 2, 5]
    m = 15
    res = 2147000000
    arr.sort(reverse=True)
    DFS(0, 0)
    print(res)

# n = 12
# arr = [1, 5, 10, 15, 20, 25, 30, 50, 70, 65, 90, 100]
# m = 290
