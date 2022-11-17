import Foundation

func solution(_ s:String) -> String {
//    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
//       return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
    var res = ""
    var cnt = 0

    for i in s {
        if cnt % 2 == 0 {
            res += i.uppercased()
        }
        else {
            res += i.lowercased()
        }
        cnt += 1

        if i == " " {
            cnt = 0
        }
    }

    return res
}
print(solution("try hello world"))
