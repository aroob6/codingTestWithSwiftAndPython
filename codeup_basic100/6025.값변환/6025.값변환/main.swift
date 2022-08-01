//
//  main.swift
//  6025.값변환
//
//  Created by 이보라 on 2022/07/30.
//

import Foundation

//6025
//let a = readLine()
//
//if let a = a {
//    let split = a.split(separator: " ")
//
//    if let num1 = Int(split[0]), let num2 = Int(split[1]) {
//        let res = num1 + num2
//        print(res)
//    }
//}

//6026
//let a = readLine()
//let b = readLine()
//
//if let a = a, let b = b{
//    if let num1 = Float(a), let num2 = Float(b) {
//        let res = num1 + num2
//        print(res)
//    }
//}

//6027
//let a = readLine()
//
//if let a = a {
//    if let num = Int(a) {
//        let hex = String(num, radix: 16)
//        print(hex)
//    }
//}

//6028
let a = readLine()

if let a = a {
    if let num = Int(a) {
        let hex = String(num, radix: 16)
        print(hex.uppercased())
    }
}
