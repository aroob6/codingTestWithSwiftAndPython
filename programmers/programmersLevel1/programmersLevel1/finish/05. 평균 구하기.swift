import Foundation

func solution(_ arr:[Int]) -> Double {
    var sum = 0
    var avg = 0.0

    for i in arr {
        sum += i
    }

    avg = Double(sum) / Double(arr.count)

    return avg
}
print(solution([1,2,3]))
