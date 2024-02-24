
import UIKit

public extension UIApplication {
  func topViewController() -> UIViewController? {
    var topViewController: UIViewController? = windowTopViewController()

    while true {
      if let presented = topViewController?.presentedViewController {
        topViewController = presented
      } else if let navigationController = topViewController as? UINavigationController {
        topViewController = navigationController.topViewController
      } else if let tabBarController = topViewController as? UITabBarController {
        topViewController = tabBarController.selectedViewController
      } else {
        break
      }
    }
    
    return topViewController
  }
  
  private func windowTopViewController() -> UIViewController? {
    var windowViewController: UIViewController? = nil
    
    if #available(iOS 13.0, *) {
      let windowScenes = connectedScenes.compactMap { $0 as? UIWindowScene }
      
      windowScenes.forEach { windowScene in
        windowScene.windows.forEach { window in
          if window.isKeyWindow {
            windowViewController = window.rootViewController
          }
        }
      }
    } else {
      windowViewController = keyWindow?.rootViewController
    }
    
    return windowViewController
  }
}
