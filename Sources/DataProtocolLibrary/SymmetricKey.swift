//
//  SymmetricKey.swift
//  
//
//  Created by Leonardo Dabus on 25/09/21.
//

import struct CryptoKit.SymmetricKey

@available(macOS 10.15, *)
extension SymmetricKey {
    static let shared = [
        0,
        8,
        16,
        24,
        32,
        40,
        48,
        56,
        64,
        72,
        80,
        88,
        96,
        104,
        112,
        120,
        128,
        136,
        144,
        152,
        160,
        168,
        176,
        184,
        192,
        200,
        208,
        216,
        224,
        232,
        240,
        248
    ]
    .symmetricKey
}
