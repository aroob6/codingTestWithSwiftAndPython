import Foundation

func solution(_ s:String) -> Int {
//    var s = s
//            var answer = s.replacingOccurrences(of: "zero", with: "0")
//                .replacingOccurrences(of: "one", with: "1")
//                .replacingOccurrences(of: "two", with: "2")
//                .replacingOccurrences(of: "three", with: "3")
//                .replacingOccurrences(of: "four", with: "4")
//                .replacingOccurrences(of: "five", with: "5")
//                .replacingOccurrences(of: "six", with: "6")
//                .replacingOccurrences(of: "seven", with: "7")
//                .replacingOccurrences(of: "eight", with: "8")
//                .replacingOccurrences(of: "nine", with: "9")
//
//        return Int(answer)!
    if let resNum = Int(s) {
        return resNum
    }
    else {
        var res = ""
        var strNum = ""

        _ = s.map { ch in
            if let num = Int(String(ch)) {
                res += String(num)
            }
            else {
                strNum += String(ch)
            }

            switch strNum {
            case "zero":
                res += "0"
                strNum = ""
            case "one":
                res += "1"
                strNum = ""
            case "two":
                res += "2"
                strNum = ""
            case "three":
                res += "3"
                strNum = ""
            case "four":
                res += "4"
                strNum = ""
            case "five":
                res += "5"
                strNum = ""
            case "six":
                res += "6"
                strNum = ""
            case "seven":
                res += "7"
                strNum = ""
            case "eight":
                res += "8"
                strNum = ""
            case "nine":
                res += "9"
                strNum = ""
            default: break
            }
        }

        return Int(res)!
    }
}

print(solution("123onezero"))
print(solution("123"))
