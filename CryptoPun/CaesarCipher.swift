//
//  CeaserCipher.swift
//  CryptoPun
//
//  Created by Emre HAVAN on 14.12.2018.
//  Copyright © 2018 Emre HAVAN. All rights reserved.
//

import Foundation
class CaesarCipher {
    private init() {}
    
    static let shared = CaesarCipher()
    
    private let alphabetByIndexes: [Int: Character] = [
        0 : "a",
        1 : "b",
        2 : "c",
        3 : "d",
        4 : "e",
        5 : "f",
        6 : "g",
        7 : "h",
        8 : "i",
        9 : "j",
        10 : "k",
        11 : "l",
        12 : "m",
        13 : "n",
        14 : "o",
        15 : "p",
        16 : "q",
        17 : "r",
        18 : "s",
        19 : "t",
        20 : "u",
        21 : "v",
        22 : "w",
        23 : "x",
        24 : "y",
        25 : "z"
    ]
    
    func encrypt(message: String, key: inout Int) -> String {
        return performOperation(message: message, key: &key, isEncrypting: true)
    }
    
    func decrypt(message: String, key: inout Int) -> String {
        return performOperation(message: message, key: &key, isEncrypting: false)
    }
    
    private func performOperation(message: String, key: inout Int, isEncrypting: Bool) -> String {
        var chars = Array(message)
        
        if !isEncrypting {
            key *= -1
        }
        
        for i in 0..<chars.count {
            let index = alphabetByIndexes.first (where: {$1 == chars[i]})?.key
            guard chars[i] != " " else { continue }
            chars[i] = alphabetByIndexes[(index! + key) % 26]!
        }
        
        let encrypted = String(chars)
        
        return encrypted
    }
}
