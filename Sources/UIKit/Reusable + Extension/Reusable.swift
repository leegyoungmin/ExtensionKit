//
//  Reusable.swift
//
//
//  Copyright (c) 2024 Minii All rights reserved.

import UIKit

public protocol Reusable: AnyObject {
  static var reuseIdentifier: String { get }
}

public extension Reusable {
  static var reuseIdentifier: String {
    return String(describing: Self.self)
  }
}

