def recursive_func(i):
    if i == 10:
        return
    print(i, "번째 재귀함수에서", i+1,"번째 재귀 함수를 호출")
    recursive_func(i+1)
    print(i, "재귀함수 종료")

recursive_func(1)