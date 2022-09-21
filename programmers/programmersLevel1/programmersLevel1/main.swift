//
//  main.swift
//  programmersLevel1
//
//  Created by bora on 2022/09/14.
//

import Foundation

// 나머지가 1이 되는 수 찾기
//func solution(_ n:Int) -> Int {
//    for i in 1 ..< n {
//        if n % i == 1 {
//            return i
//        }
//    }
//     return 0
//}

// 짝수와 홀수
//func solution(_ num:Int) -> String {
//    if num == 0 {
//        return "Even"
//    }
//    else if num % 2 == 0 {
//        return "Even"
//    }
//
//    return "Odd"
//}

//자릿수 더하기
//func solution(_ n:Int) -> Int
//{
//    var answer:Int = 0
//
//    _ = String(n).map {
//        answer += Int(String($0))!
//    }
//
//    return answer
//}

//약수의 합
//func solution(_ n:Int) -> Int {
//    var sum = 0
//    if n == 0 {
//        return 0
//    }
//    else {
//        for i in 1 ... n {
//            if n % i == 0 {
//                sum += i
//            }
//        }
//        return sum
//    }
//}

//평균 구하기
//func solution(_ arr:[Int]) -> Double {
//    var sum = 0
//    var avg = 0.0
//
//    for i in arr {
//        sum += i
//    }
//
//    avg = Double(sum) / Double(arr.count)
//
//    return avg
//}
//print(solution([1,2,3]))

//정수 제곱근 판별
//func solution(_ n:Int64) -> Int64 {
//    let sqrtN = Int64(sqrt(Double(n)))
//
//    if (sqrtN * sqrtN) == n {
//        return (sqrtN + 1) * (sqrtN + 1)
//    }
//
//    return -1
//}

//자연수 뒤집어 배열로 만들기
//func solution(_ n:Int64) -> [Int] {
//    var res: [Int] = []
//
//    _ = String(n).map {
//        res.append(Int(String($0))!)
//    }
//
//    return res.reversed()
//}

//정수 내림차순
//func solution(_ n:Int64) -> Int64 {
//    var res = ""
//    _ = String(n).sorted(by: >).map{ res.append($0)}
//    return Int64(res)!
//}

//문자열 내 p와 y의 개수
//func solution(_ s:String) -> Bool
//{
//    var ans:Bool = false
//    var cntP = 0
//    var cntY = 0
//
//    _ = s.lowercased().map{
//        if  String($0) == "p" {
//            cntP += 1
//        }
//        if String($0) == "y" {
//            cntY += 1
//        }
//    }
//
//    ans = cntP == cntY ? true : false
//
//    return ans
//}
//let a = readLine()!
//print(solution(a))

//하샤드 수
//func solution(_ x:Int) -> Bool {
//    var hap = 0
//    _ = String(x).map {
//        hap += Int(String($0))!
//    }
//
//    return x % hap == 0 ? true : false
//}

//문자열을 정수로 바꾸기
//func solution(_ s:String) -> Int {
//    return Int(s)!
//}

//x만큼 간격이 있는 n개의 숫자
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    var num = Int64(x)
//    var arr: [Int64] = []
//
//    for _ in 0 ..< n {
//        arr.append(num)
//        num += Int64(x)
//    }
//
//    return arr
//}

//콜라츠 추측
//func solution(_ num:Int) -> Int {
//    var cnt = 0
//    var n = num
//
//    if num == 1 {
//        return 0
//    }
//
////    while n != 1 {
////        if cnt > 500 {
////            return -1
////        }
////
////        if n % 2 == 0 {
////            n = n / 2
////        }
////        else {
////            n = n * 3 + 1
////        }
////        cnt += 1
////    }
////
////    return cnt
//    while n != 1 && cnt <= 500 {
//        if n % 2 == 0 {
//            n = n / 2
//        }
//        else {
//            n = n * 3 + 1
//        }
//        cnt += 1
//    }
//
//    return n == 1 ? cnt : -1
//}

//두 정수 사이의 합
//func solution(_ a:Int, _ b:Int) -> Int64 {
////    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
//
//    var sum = 0
//    if a < b {
//        for i in a ... b {
//            sum += i
//        }
//    } else if a > b {
//        for i in b ... a {
//            sum += i
//        }
//    }
//    else {
//        return Int64(a)
//    }
//    return Int64(sum)
//}

//서울에서 김서방 찾기
func solution(_ seoul:[String]) -> String {
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
//    for i in 0 ..< seoul.count {
//        if seoul[i] == "Kim" {
//            return "김서방은 \(i)에 있다"
//        }
//    }
//    return ""
}
print(solution(["Jane", "Kim"]))

