import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//    var clearPeople: Double = Double(stages.count)
//    var cnt: Double = 0
    var fail: [Int:Double] = [:]
//    for i in 1 ... N {
//        for j in 0 ..< stages.count {
//            if i == stages[j] {
//                cnt += 1
//            }
//        }
//
//        fail[i] = cnt/clearPeople
//        clearPeople -= cnt
//        cnt = 0
//    }

    for i in 1 ... N {
        let clearPeople = stages.filter{$0 >= i}.count
        let clearCnt = clearPeople - stages.filter{$0 > i}.count
        fail[i] = Double(clearCnt)/Double(clearPeople)
    }

    return fail.sorted(by: <).sorted(by: {$0.value > $1.value}).map{$0.key}
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))
