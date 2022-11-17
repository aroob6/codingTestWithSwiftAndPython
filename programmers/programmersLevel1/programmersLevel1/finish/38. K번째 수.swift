import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    return commands.map{ (key) in
//        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
//    }
    return commands.map { arr in
        let i = arr[0] - 1
        let j = arr[1] - 1
        let k = arr[2] - 1
        let slice = array[i...j].sorted()

        return slice[k]
    }
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
