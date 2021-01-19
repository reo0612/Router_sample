
import UIKit

final class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction private func back(_ sender: UIButton) {
        Router.showFirst(from: self)
    }
}
