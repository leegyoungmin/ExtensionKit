//
//  UICollectionView + Reusable.swift
//
//
//  Copyright (c) 2024 Minii All rights reserved.

import UIKit

extension UICollectionViewCell: Reusable { }

extension UICollectionView {
  func dequeueReusable<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(
      withReuseIdentifier: T.reuseIdentifier,
      for: indexPath
    ) as? T else {
      return T()
    }
    
    return cell
  }
}
