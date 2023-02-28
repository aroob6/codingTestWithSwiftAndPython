
def solution(arr,n,m):
    answer = 0
    
    for i in range(n):
        minValue = min(arr[i])
        answer = max(answer,minValue)
    
    return answer

print(solution([[3,1,2],[4,1,4],[2,2,2]],3,3))
print(solution([[7,3,1,8,],[3,3,3,4]],2,4))