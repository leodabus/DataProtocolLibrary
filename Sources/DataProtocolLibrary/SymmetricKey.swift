//
//  SymmetricKey.swift
//  
//
//  Created by Leonardo Dabus on 25/09/21.
//

import Foundation
import CryptoKit

@available(macOS 10.15, *)
extension SymmetricKey {
    static let shared = [
        73,
        231,
        96,
        51,
        140,
        91,
        104,
        168,
        0,
        114,
        107,
        8,
        210,
        143,
        179,
        115,
        252,
        177,
        250,
        213,
        33,
        115,
        0,
        223,
        30,
        7,
        80,
        157,
        17,
        120,
        36,
        175
    ]
    .symmetricKey
}
