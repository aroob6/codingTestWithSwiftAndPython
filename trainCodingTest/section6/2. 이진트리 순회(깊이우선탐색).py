'''
깊이우선탐색 
전위 - 부모 왼 오
중위 - 왼 부모 오
후위 - 왼 오 부모 
'''
def DFS(n):
    if n > 7:
        return
    else:
        #전위순회
        # print(n, end='')
        # DFS(n*2)
        # DFS(n*2+1)
        #중위순회
        # DFS(n*2)
        # print(n, end='')
        # DFS(n*2+1)
        #후위순회
        DFS(n*2)
        DFS(n*2+1)
        print(n, end='')
        
print(DFS(1))