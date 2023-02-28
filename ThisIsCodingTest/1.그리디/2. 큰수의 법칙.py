def solution(arr,n,m,k):
    # n개, m번 더하고, k번 초과할수 없음
    # 6+6+6+5+6+6+6+5
    arr = list(arr)
    arr.sort(reverse=True)
    first = arr[0]
    second = arr[1]
    answer = 0

    # while True:
    #     for _ in range(k):
    #         if m == 0:
    #             break
    #         answer += first
    #         m -= 1
    #     if m == 0:
    #             break
    #     answer += second
    #     m -= 1

    count = int(m/(k+1)) * k
    count += m % (k+1)

    answer += (count) * first
    answer += (m-count) * second
    
    return answer

# print(solution([2,4,5,4,6],5,8,3)) #46
print(solution([3,4,3,3,3],5,7,2))