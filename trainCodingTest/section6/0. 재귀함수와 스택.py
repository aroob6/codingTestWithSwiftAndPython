'''
if x > 0:
    DFS(x-1)
    print(x) # 1,2,3
-> stack임 

DFS(3)실행 시 (매개변수(지역변수) x=3, 복귀주소 main-18) 들어감
DFS(2)로 오면 (매개변수(지역변수) x=2, 복귀주소 D(3)-6)
DFS(1)로 오면 (매개변수(지역변수) x=1, 복귀주소 D(2)-6)
DFS(0)로 오면 (매개변수(지역변수) x=0, 복귀주소 D(1)-6) 묶음을 스택프레임이라고 말함

DFS(0)종료되면 D(1)로 복귀 후 종료되면서 print문 실행 x=1
DFS(1)종료되면 D(2)로 복귀 후 종료되면서 print문 실행 x=2
DFS(2)종료되면 D(3)로 복귀 후 종료되면서 print문 실행 x=3
'''
def solution(n):
    def DFS(x):
        if x > 0:
            DFS(x-1)
            print(x) # 1,2,3
            
            # print(x) # 3,2,1
            # DFS(x-1)
    
    return DFS(n)

print(solution(3))