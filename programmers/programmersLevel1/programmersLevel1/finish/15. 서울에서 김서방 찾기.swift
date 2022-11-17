import Foundation

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
