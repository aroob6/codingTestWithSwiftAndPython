import Foundation

func solution(_ num:Int) -> Int {
    var cnt = 0
    var n = num

    if num == 1 {
        return 0
    }

//    while n != 1 {
//        if cnt > 500 {
//            return -1
//        }
//
//        if n % 2 == 0 {
//            n = n / 2
//        }
//        else {
//            n = n * 3 + 1
//        }
//        cnt += 1
//    }
//
//    return cnt
    while n != 1 && cnt <= 500 {
        if n % 2 == 0 {
            n = n / 2
        }
        else {
            n = n * 3 + 1
        }
        cnt += 1
    }

    return n == 1 ? cnt : -1
}
