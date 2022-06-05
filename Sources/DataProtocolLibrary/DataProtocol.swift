//
//  DataProtocol.swift
//  
//
//  Created by Leonardo Dabus on 25/09/21.
//

import protocol Foundation.DataProtocol
import struct Foundation.Data
import struct Foundation.Date
import struct CryptoKit.SHA256Digest
import struct CryptoKit.SHA256
import struct CryptoKit.SHA384Digest
import struct CryptoKit.SHA384
import struct CryptoKit.SHA512Digest
import struct CryptoKit.SHA512
import enum CryptoKit.AES
import struct CryptoKit.SymmetricKey
 
@available(macOS 10.15, *)
extension DataProtocol {
    var sha256: SHA256Digest { SHA256.hash(data: self) }
    var sha384: SHA384Digest { SHA384.hash(data: self) }
    var sha512: SHA512Digest { SHA512.hash(data: self) }
    func sealedBox() throws -> AES.GCM.SealedBox { try .init(combined: self) }
    func decrypt(using key: SymmetricKey = .shared) throws -> Data? {
        try AES.GCM.open(
            sealedBox(),
            using: key
        )
    }
}

extension DataProtocol {
    var string: String? {
        .init(bytes: self, encoding: .utf8)
    }

    func value<N: Numeric>() -> N { .init(self) }
    var uint64: UInt64 { value() }
    var timeIntervalSinceReferenceDate: Double {
        uint64.littleEndian.bitPattern
    }
    var date: Date { .init(data: self) }
}
