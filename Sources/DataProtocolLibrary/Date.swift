//
//  File.swift
//  
//
//  Created by lsd on 05/06/22.
//

import struct Foundation.Date
import protocol Foundation.DataProtocol
import struct Foundation.Data

extension Date {
    var data: Data { timeIntervalSinceReferenceDate.bitPattern.littleEndian.data }
    init<D: DataProtocol>(data: D) {
        self.init(timeIntervalSinceReferenceDate: data.timeIntervalSinceReferenceDate)
    }
}
