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
//func solution(_ seoul:[String]) -> String {
//    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
////    for i in 0 ..< seoul.count {
////        if seoul[i] == "Kim" {
////            return "김서방은 \(i)에 있다"
////        }
////    }
////    return ""
//}
//print(solution(["Jane", "Kim"]))

//핸드폰 번호 가리기
//func solution(_ phone_number:String) -> String {
////    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//    var res = ""
//    for _ in 0 ..< phone_number.count - 4 {
//        res += "*"
//    }
//    res += phone_number.suffix(4)
//
//    return res
//}

//나누어 떨어지는 숫자 배열
//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    var res: [Int] = []
//    _ = arr.map{
//        if $0 % divisor == 0 {
//            res.append($0)
//        }
//    }
//    return res.isEmpty ? [-1] : res.sorted()
//
////    let array = arr.sorted().filter{ $0 % divisor == 0 }
////       return  array == [] ? [-1] : array
//}
//
//print(solution([3,2,6], 10))

//제일 작은 수 제거하기
//func solution(_ arr:[Int]) -> [Int] {
//    var res = arr
//    let index = res.firstIndex(of: res.min()!)
//    res.remove(at: index!)
//
//    return res.isEmpty ? [-1] : res
//
////    let min = arr.sorted(by: <)[0]
////        return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
//}

//음양 더하기
//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//    var res = 0
//    for i in 0 ..< signs.count {
//        res += signs[i] ? absolutes[i] : -absolutes[i]
////        if signs[i] { //양수
////            res += absolutes[i]
////        } else {
////            res -= absolutes[i]
////        }
//    }
//    return res
//}
//
//print(solution([1, 7, 12], [true, false, false]))

//수박수박수박수박수박수?
//func solution(_ n:Int) -> String {
//    var res = ""
//    for i in 0 ..< n {
//        res += i % 2 == 0 ? "수" : "박"
//    }
//    return res
//
////    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
////    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
//}

//가운데 글자 가져오기
//func solution(_ s:String) -> String {
////    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
//    if s.count % 2 == 0 { //짝수
//        return "\(s[s.index(s.startIndex, offsetBy: s.count/2 - 1)])\(s[s.index(s.startIndex, offsetBy: s.count / 2)])"
//    }
//    else {
//        return "\(s[s.index(s.startIndex, offsetBy: s.count / 2)])"
//    }
//}
//
//print(solution("1234"))\

//없는 숫자 더하기
//func solution(_ numbers:[Int]) -> Int {
////    return (0...9).filter { !numbers.contains($0) }.reduce(0, +)
//    var res = 0
//    for i in 0 ..< 10 {
//        if !numbers.contains(i)  {
//            res += i
//        }
//    }
//    return res
//}

//내적
//func solution(_ a:[Int], _ b:[Int]) -> Int {
////    return zip(a, b).map(*).reduce(0, +)
//    var res = 0
//    
//    for i in 0 ..< a.count {
//        res += (a[i] * b[i])
//    }
//    return res
//}

