import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
//    var budget = budget
//
//    return d.sorted().filter{
//        budget = budget - $0
//        return budget >= 0
//    }.count

    var cnt = 0
    var sum = 0

    for i in d.sorted() {
        sum += i

        if sum == budget {
            cnt += 1
            break
        }
        else if sum > budget { break }
        else { cnt += 1 }
    }

    return cnt
}

print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))
