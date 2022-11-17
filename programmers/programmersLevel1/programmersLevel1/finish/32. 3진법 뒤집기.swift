import Foundation

func solution(_ s:String) -> String {
    func solution(_ n:Int) -> Int {
        return Int(String(String(n, radix: 3).reversed()), radix: 3)!
    }
    print(solution(125))
