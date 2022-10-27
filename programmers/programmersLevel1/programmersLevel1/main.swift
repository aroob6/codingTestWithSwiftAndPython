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

//문자열 내림차순으로 배치하기
//func solution(_ s:String) -> String {
////    return String(s.sorted { $0 > $1 })
//    var res = s.map{$0}
//    return String(res.sorted(by: >))
//}
//
//print(solution("Zbcdefg"))

//문자열 다루기 기본
//func solution(_ s:String) -> Bool {
////    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
//    if s.count == 4 || s.count == 6 {
//        guard let _ = Int(s) else {
//            return false
//        }
//    }
//    else {
//        return false
//    }
//    return true
//}

//약수의 개수와 덧셈
//func solution(_ left:Int, _ right:Int) -> Int {
//    //    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
//    var res = 0
//    for i in left ... right {
//        var cnt = 0
//        for j in 1 ... i {
//            if i % j == 0 {
//                cnt += 1
//            }
//        }
//
//        res = cnt % 2 == 0 ? res + i : res - i
//    }
//
//    return res
//}

//행렬의 덧셈
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
////    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
//    var sum:[[Int]] = []
//    for i in 0 ..< arr1.count {
//        sum.append([])
//        for j in 0 ..< arr1[i].count {
//            sum[i].append(arr1[i][j] + arr2[i][j])
//        }
//    }
//    return sum
//}
//print(solution([[1,2],[2,3]], [[3,4],[5,6]]))

//부족한 금액 계산하기
//func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//    var answer:Int64 = -1
//    var sum = 0
//
//    for i in 1 ... count { sum += price * i }
//
//    answer = Int64(money) - Int64(sum)
//
//    return answer > 0 ? 0 : -answer
//}
//
//print(solution(3, 20, 4))

//직사각형 별찍기
//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
////for _ in 0..<b {
////    print(Array(repeating: "*", count: a).joined())
////}
//
//for _ in 0 ..< b {
//    for _ in 0 ..< a {
//        print("*", terminator: "")
//    }
//    print("")
//}

//최대공약수와 최소공배수 - 검색해서 찾아봄
//func gcd(_ a: Int, _ b: Int) -> Int {
//    return b == 0 ? a : gcd(b, a%b)
//}
//
//func solution(_ n:Int, _ m:Int) -> [Int] {
//    let numA = gcd(n, m)
//    let numB = n * m / numA
//
//    return [numA, numB]
//}
//func solution(_ n:Int, _ m:Int) -> [Int] {
//    var numA = 0
//    for index in 1...n {
//        if n % index == 0  && m % index == 0 {
//            numA = index
//        }
//    }
//    return [numA ,(n * m)/numA ]
//}
//print(solution(3, 12))

//이상한 문자 만들기
//func solution(_ s:String) -> String {
////    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
////       return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
//    var res = ""
//    var cnt = 0
//
//    for i in s {
//        if cnt % 2 == 0 {
//            res += i.uppercased()
//        }
//        else {
//            res += i.lowercased()
//        }
//        cnt += 1
//
//        if i == " " {
//            cnt = 0
//        }
//    }
//
//    return res
//}
//print(solution("try hello world"))

// 3진법 뒤집기
//func solution(_ n:Int) -> Int {
//    return Int(String(String(n, radix: 3).reversed()), radix: 3)!
//}
//print(solution(125))

//예산
//func solution(_ d:[Int], _ budget:Int) -> Int {
////    var budget = budget
////
////    return d.sorted().filter{
////        budget = budget - $0
////        return budget >= 0
////    }.count
//
//    var cnt = 0
//    var sum = 0
//
//    for i in d.sorted() {
//        sum += i
//
//        if sum == budget {
//            cnt += 1
//            break
//        }
//        else if sum > budget { break }
//        else { cnt += 1 }
//    }
//
//    return cnt
//}
//
//print(solution([1,3,2,5,4], 9))
//print(solution([2,2,3,3], 10))

//시저 암호
//func solution(_ s:String, _ n:Int) -> String {
////    return s.map {
////        var code = Int($0.asciiValue!)
////        switch code {
////        case 65...90:
////            code = (code + n - 65) % 26 + 65
////        case 97...122:
////            code = (code + n - 97) % 26 + 97
////        default:
////            break
////        }
////        return String(UnicodeScalar(UInt8(code)))
////    }.joined()
//    return s.map {
//        var code = Int($0.asciiValue!)
//        switch code {
//        case 65 ... 90:
//            code = (code + n) % 26 + 52
//        case 97 ... 122:
//            code = (code + n) % 26 + 78
//        default:
//            break
//        }
//        return String(UnicodeScalar(UInt8(code)))
//    }.joined()
//}
//
//print(solution("AB", 1))
//print(solution("z", 1))
//print(solution("a B z", 4))

//[1차] 비밀지도
//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
////    return (0..<n).map { String(String(arr1[$0]|arr2[$0]|2<<(n - 1), radix: 2).map { $0 == "1" ? "#" : " " }[1...n]) }
//    var answer: [String] = []
//
//    for i in 0 ..< n {
//        let arr1Num = arr1[i]
//        let arr2Num = arr2[i]
//        var res = String(arr1Num | arr2Num, radix: 2)
//        var resString = ""
//
//        if n != res.count {
//            for _ in 0 ..< (n-res.count) {
//                res.insert("0", at: res.startIndex)
//            }
//        }
//
//        for i in res {
//            if i == "0" {
//                resString += " "
//            }
//            else {
//                resString += "#"
//            }
//        }
//
//        answer.append(resString)
//    }
//
//    return answer
//}
//
//print(solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]))
//print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))

//최소 직사각형
//func solution(_ sizes:[[Int]]) -> Int {
////    let sorted = sizes.map{$0.sorted()}
////    return sorted.map{$0[0]}.max()! * sorted.map{$0[1]}.max()!
//
//    let arr = sizes.map{$0.sorted()}.flatMap{$0}
//    var width = 0
//    var height = 0
//
//    for i in 0 ..< arr.count {
//        if i % 2 == 0 {
//            width = max(width, arr[i])
//        }
//        else {
//            height = max(height, arr[i])
//        }
//    }
//
//    return width * height
//}
//
//print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))

//문자열 내 마음대로 정렬하기
//func solution(_ strings:[String], _ n:Int) -> [String] {
////    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
//    let index = strings[0].index(strings[0].startIndex, offsetBy: n)
//
//    let res = strings.sorted { s1, s2 in
//        if s1[index] == s2[index] {
//            return s1 < s2
//        }
//        else {
//            return s1[index] < s2[index]
//        }
//    }
//    return res
//}
//
//print(solution(["sun", "bed", "car"], 1))
//print(solution(["abce", "abcd", "cdx"], 2))

//K번째 수 
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    return commands.map{ (key) in
//        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
//    }
    return commands.map { arr in
        let i = arr[0] - 1
        let j = arr[1] - 1
        let k = arr[2] - 1
        let slice = array[i...j].sorted()

        return slice[k]
    }
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
