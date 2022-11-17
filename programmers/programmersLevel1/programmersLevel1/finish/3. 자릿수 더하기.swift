import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    _ = String(n).map {
        answer += Int(String($0))!
    }

    return answer
}
