import Foundation

func solution(_ sizes:[[Int]]) -> Int {
//    let sorted = sizes.map{$0.sorted()}
//    return sorted.map{$0[0]}.max()! * sorted.map{$0[1]}.max()!

    let arr = sizes.map{$0.sorted()}.flatMap{$0}
    var width = 0
    var height = 0

    for i in 0 ..< arr.count {
        if i % 2 == 0 {
            width = max(width, arr[i])
        }
        else {
            height = max(height, arr[i])
        }
    }

    return width * height
}

print(solution([[60, 50], [30, 70], [60, 30], [80, 40]]))
