import sys
def solution(n, arr):
    total = sum(arr)
    def DFS(index, sum):
        if sum > total // 2: # 두 부분집합의 합이 같으려면 총 합 //2 를 넘으면 안됨, 리턴으로 시간복잡도 줄임
            return 
        if index == n:
            if sum == (total-sum):
                print("YES")
                sys.exit(0)
        else:
            DFS(index+1, sum+arr[index])
            DFS(index+1, sum)
    DFS(0, 0)
    return "NO"

print(solution(6, [1,3,5,6,7,10]))