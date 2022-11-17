import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    if n == 0 {
        return 0
    }
    else {
        for i in 1 ... n {
            if n % i == 0 {
                sum += i
            }
        }
        return sum
    }
}
