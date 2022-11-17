import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    return (0..<n).map { String(String(arr1[$0]|arr2[$0]|2<<(n - 1), radix: 2).map { $0 == "1" ? "#" : " " }[1...n]) }
    var answer: [String] = []

    for i in 0 ..< n {
        let arr1Num = arr1[i]
        let arr2Num = arr2[i]
        var res = String(arr1Num | arr2Num, radix: 2)
        var resString = ""

        if n != res.count {
            for _ in 0 ..< (n-res.count) {
                res.insert("0", at: res.startIndex)
            }
        }

        for i in res {
            if i == "0" {
                resString += " "
            }
            else {
                resString += "#"
            }
        }

        answer.append(resString)
    }

    return answer
}

print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
