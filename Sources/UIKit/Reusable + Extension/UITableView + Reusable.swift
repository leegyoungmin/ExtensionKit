
import UIKit

extension UITableViewCell: Reusable { }
extension UITableViewHeaderFooterView: Reusable { }

extension UITableView {
  func dequeueReusable<T: UITableViewCell>(for indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(
      withIdentifier: T.reuseIdentifier,
      for: indexPath
    ) as? T else { return T() }
    
    return cell
  }
  
  func dequeueReusable<T: UITableViewHeaderFooterView>() -> T {
    guard let headerFooterView = dequeueReusableHeaderFooterView(
      withIdentifier: T.reuseIdentifier
    ) as? T else { return T() }
    
    return headerFooterView
  }
}
