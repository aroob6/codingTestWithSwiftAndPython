import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a%b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    let numA = gcd(n, m)
    let numB = n * m / numA

    return [numA, numB]
}
func solution(_ n:Int, _ m:Int) -> [Int] {
    var numA = 0
    for index in 1...n {
        if n % index == 0  && m % index == 0 {
            numA = index
        }
    }
    return [numA ,(n * m)/numA ]
}
print(solution(3, 12))
