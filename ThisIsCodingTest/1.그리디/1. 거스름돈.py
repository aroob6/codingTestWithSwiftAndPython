def solution(n):
    answer = 0
    coin_type = [500,100,50,10]

    for coin in coin_type:
        answer += n // coin
        n %= coin
    return answer

print(solution(1260))