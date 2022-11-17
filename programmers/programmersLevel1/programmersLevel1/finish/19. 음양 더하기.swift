import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var res = 0
    for i in 0 ..< signs.count {
        res += signs[i] ? absolutes[i] : -absolutes[i]
//        if signs[i] { //양수
//            res += absolutes[i]
//        } else {
//            res -= absolutes[i]
//        }
    }
    return res
}

print(solution([1, 7, 12], [true, false, false]))

