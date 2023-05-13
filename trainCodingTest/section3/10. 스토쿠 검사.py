def solution(arr):
    def check(arr):
        for i in range(9):
            check_row = [0]*10
            check_colum = [0]*10
            for j in range(9):
                check_row[arr[i][j]]=1
                check_colum[arr[j][i]]=1
            if sum(check_row)!=9 or sum(check_colum)!=9:
                return False
        for i in range(3): # 그룹 3*3
            for j in range(3): # 그룹 3*3
                check_3 = [0]*10
                for k in range(3): # 안의 값 돌리는 중 
                    for s in range(3):
                        check_3[arr[i*3+k][j*3+s]]=1
                if sum(check_3)!=9:
                    return False
        return True

    if check(arr):
        return "YES"
    else:
        return "NO"

print(solution([
    [1,4,3,6,2,8,5,7,9],
    [5,7,2,1,3,9,4,6,8],
    [9,8,6,7,5,4,2,3,1],
    [3,9,1,5,4,2,7,8,6],
    [4,6,8,9,1,7,3,5,2],
    [7,2,5,8,6,3,9,1,4],
    [2,3,7,4,8,1,6,9,5],
    [6,1,9,2,7,5,8,4,3],
    [8,5,4,3,9,6,1,2,7]
]))