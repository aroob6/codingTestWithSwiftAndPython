import Foundation

func solution(_ s:String) -> String {
//    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
    if s.count % 2 == 0 { //짝수
        return "\(s[s.index(s.startIndex, offsetBy: s.count/2 - 1)])\(s[s.index(s.startIndex, offsetBy: s.count / 2)])"
    }
    else {
        return "\(s[s.index(s.startIndex, offsetBy: s.count / 2)])"
    }
}

print(solution("1234"))
