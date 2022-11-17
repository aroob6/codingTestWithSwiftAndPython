import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one = [1, 2, 3, 4, 5]
    let two = [2, 1, 2, 3, 2, 4, 2, 5]
    let three = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var i = 0
    var res: [Int:Int] = [:]

    _ = answers.map { ans in
        res[1] = ans == one[i%one.count] ? (res[1] ?? 0) + 1 : (res[1] ?? 0) + 0
        res[2] = ans == two[i%two.count] ? (res[2] ?? 0) + 1 : (res[2] ?? 0) + 0
        res[3] = ans == three[i%three.count] ? (res[3] ?? 0) + 1 : (res[3] ?? 0) + 0

        i += 1
    }

    let max = res.values.max()
    print(res.filter{$0.value == max})
    return res.filter{$0.value == max}.keys.sorted()
}

//func solution(_ answers:[Int]) -> [Int] {
//    let answer = (
//        a: [1, 2, 3, 4, 5], // index % 5
//        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
//        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
//    )
//    var point = [1:0, 2:0, 3:0]
//
//    for (i, v) in answers.enumerated() {
//        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
//        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
//        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
//    }
//
//    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
//}

//print(solution([1,2,3,4,5]))
