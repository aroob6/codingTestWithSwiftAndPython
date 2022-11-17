import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    //    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
    var res = 0
    for i in left ... right {
        var cnt = 0
        for j in 1 ... i {
            if i % j == 0 {
                cnt += 1
            }
        }

        res = cnt % 2 == 0 ? res + i : res - i
    }

    return res
}
