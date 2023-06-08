def DFS(L,sum):
    global res
    if L==n:
        if 0 < sum <= s: #양수 음수 대칭이므로 양수만 봄
            res.add(sum)
    else:
        DFS(L+1, sum+arr[L]) #오른쪽 추
        DFS(L+1, sum-arr[L]) #왼쪽 추
        DFS(L+1, sum) # 추 안넣음 

if __name__ == "__main__":
    n = 3
    arr = [1,5,7]
    s = sum(arr)
    res = set()
    DFS(0,0)
    print(s-len(res))