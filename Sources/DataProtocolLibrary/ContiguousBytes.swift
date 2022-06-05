//
//  File.swift
//  
//
//  Created by lsd on 05/06/22.
//

import protocol Foundation.ContiguousBytes
import struct CryptoKit.SymmetricKey

extension ContiguousBytes {
    @available(macOS 10.15, *)
    var symmetricKey: SymmetricKey {
        .init(data: self)
    }
}
