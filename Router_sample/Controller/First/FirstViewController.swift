
import UIKit

final class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction private func showSecond(_ sender: UIButton) {
        Router.showSecond(from: self)
    }
    @IBAction private func showThird(_ sender: UIButton) {
        Router.showThird(from: self)
    }
}
