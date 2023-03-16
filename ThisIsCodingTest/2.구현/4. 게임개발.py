'''
공백 n,m
캐릭터 좌표 (a,b)
방향 d 0:북 1:동 2:남 3:서
n개 육지: 0, 바다: 1
'''
def solution(n,m,a,b,d,arr):
    # 북동남서
    x = [-1,0,1,0]
    y = [0,1,0,-1]
    d = d
    # 왼쪽으로 회전
    def turn_left():
        nonlocal d
        d -= 1
        if d == -1: #북에서 -1하면 -1이니까 그럼 서쪽임 그럼 3을 넣음 
            d = 3
    
    # 현재 캐릭터 위치 1로 표시 
    arr[a][b] = 1
    answer = 1
    turn_time = 0

    while True:
        turn_left()
        nx = a + x[d]
        ny = b + y[d]

        # 가보지 않은 칸이면
        if arr[nx][ny] == 0:
            arr[nx][ny] = 1
            a = nx
            b = ny
            answer += 1
            turn_time = 0
            continue
        # 가본 칸이나 바다면 회전
        else:
            turn_time += 1
        
        # 네번 회전 했으면 
        if turn_time == 4:
            nx = a - x[d]
            ny = b - y[d]

            # 뒤로 갈수있으면
            if arr[nx][ny] == 0:
                a = nx
                b = ny
            else: # 뒤가 바다면
                break
            turn_time = 0
        
    return answer

print(solution(4,4,1,1,0,[[1,1,1,1],[1,0,0,1],[1,1,0,1],[1,1,1,1]]))