def solution(n, arr):
    seq = [0] * n
    
    for i in range(n):
        for j in range(n):
            print(i, j, arr,seq)
            if arr[i] == 0 and seq[j] == 0: # 내 자리 찾으면 넣기
                seq[j] = i+1
                break
            elif seq[j] == 0: #자리 찾을 때까지 실행
                arr[i] -= 1

    print(seq)
    return 0 

print(solution(8,[5,3,4,0,2,1,1,0]))