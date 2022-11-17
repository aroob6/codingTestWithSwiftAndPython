import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)

    let res = strings.sorted { s1, s2 in
        if s1[index] == s2[index] {
            return s1 < s2
        }
        else {
            return s1[index] < s2[index]
        }
    }
    return res
}

print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))
