//
//  Date + Extension.swift
//
//
//  Copyright (c) 2024 Minii All rights reserved.

import Foundation

extension Date {
  func toString(with format: String) -> String {
    let formatter = DateFormatter.shared
    formatter.dateFormat = format
    return formatter.string(from: self)
  }
}
