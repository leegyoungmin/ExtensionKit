import UIKit

public extension UIAlertController {
  func show(completion: (() -> Void)? = nil) {
    DispatchQueue.main.async {
      UIApplication.shared.topViewController()?.present(
        self,
        animated: true,
        completion: completion
      )
    }
  }
}

open class UIAlertBuilder {
  private var title: String = ""
  private var message: String = ""
  private var style: UIAlertController.Style = .alert
  private var actions: [UIAlertAction] = []
  
  public init() { }
  
  public func addTitle(to title: String) -> Self {
    self.title = title
    return self
  }
  
  public func addMessage(to message: String) -> Self {
    self.message = message
    return self
  }
  
  public func changeStyle(to style: UIAlertController.Style) -> Self {
    self.style = style
    return self
  }
  
  public func addAction(
    title: String,
    style: UIAlertAction.Style = .default,
    completion: (() -> Void)? = nil
  ) -> Self {
    let action = UIAlertAction(title: title, style: style) { _ in
      completion?()
    }
    self.actions.append(action)
    return self
  }
  
  public func build() -> UIAlertController {
    let controller = UIAlertController(title: title, message: message, preferredStyle: style)
    actions.forEach { controller.addAction($0) }
    
    return controller
  }
}
