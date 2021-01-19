
import UIKit

final class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Third"
    }
    @IBAction private func showFourth(_ sender: UIButton) {
        Router.showFourth(from: self)
    }
}
