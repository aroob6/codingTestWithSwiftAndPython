import sys
def solution(c,n,arr):
    total = sum(arr)
    def DFS(index, sum, tsum):
        global res 
        if sum + (total-tsum) < res: #현재까지 더한 sum이랑 적용할 sum이 res보다 작으면 확인안함 
            print(index, sum, tsum)
            return
        if sum > c:
            return
        if index == n:
            if sum > res:
                res = sum
        else:
            DFS(index+1, sum+arr[index], tsum+arr[index])
            DFS(index+1, sum, tsum+arr[index])
    DFS(0, 0, 0)
    return res

if __name__ == "__main__":
    res = -2147000000 
    print(solution(259,5,[81,58,42,33,61]))