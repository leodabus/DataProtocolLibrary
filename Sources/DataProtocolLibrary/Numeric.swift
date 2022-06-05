//
//  File.swift
//  
//
//  Created by lsd on 05/06/22.
//

import protocol Foundation.DataProtocol
import struct Foundation.Data

extension Numeric {
    var data: Data {
        var source = self
        return .init(bytes: &source, count: MemoryLayout<Self>.size)
    }
    init<D: DataProtocol>(_ data: D) {
        var value: Self = .zero
        let size = withUnsafeMutableBytes(of: &value, { data.copyBytes(to: $0)} )
        assert(size == MemoryLayout.size(ofValue: value))
        self = value
    }
}
