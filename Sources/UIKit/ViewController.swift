//
//  ViewController.swift
//
//
//  Copyright (c) 2024 Minii All rights reserved.

import UIKit

/// UIViewController를 상속하여 간편하게 뷰를 구성할 수 있는 타입입니다.
///
/// UIViewController의 LifeCycle 내부에서 동작시켜야 하는 뷰를 추가하고, 제약 조건을 추가하는 작업을 포함하여서 코드를 작성할 수 있습니다.
/// 가령 예를 들어서, UILabel을 추가하기 위해서 `label` 이라는 뷰를 추가하기 위해 다음과 같이 간편하게 추가할 수 있습니다.
///
/// ```swift
/// class SampleViewController: ViewController {
///   override func configureHierarchy() {
///     super.configureHierarchy()
///
///     view.addSubView(label)
///   }
///
///   override func makeConstraints() {
///     super.makeConstraints()
///
///     // Do Make Constraints
///   }
/// }
/// ```
open class ViewController: UIViewController {
  public init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable, message: "스토리보드로 해당 클래스를 사용할 수 없습니다.")
  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  open override func viewDidLoad() {
    super.viewDidLoad()
    
    configureHierarchy()
    makeConstraints()
  }
  
  /// 하위 뷰를 추가하는 작업을 수행합니다.
  open func configureHierarchy() {
    
  }
  
  /// 하위 뷰들에 대한 제약 조건을 추가합니다.
  open func makeConstraints() {
    
  }
}
