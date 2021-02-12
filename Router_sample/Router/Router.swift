
import UIKit

//VCから画面遷移を切り離し、画面遷移に関係あるコードの記述を別ファイルに分けて実装する

final class Router {
    static func showRoot(window: UIWindow) {
        let firstVC = UIStoryboard(name: VCName.first.rawValue, bundle: nil).instantiateInitialViewController() as! FirstViewController
        window.rootViewController = firstVC
        window.makeKeyAndVisible()
    }

    static func showFirst(from: UIViewController, animated: Bool = true) {
        let firstVC = UIStoryboard(name: VCName.first.rawValue, bundle: nil).instantiateInitialViewController() as! FirstViewController
        firstVC.modalPresentationStyle = .fullScreen
        firstVC.modalTransitionStyle = .flipHorizontal
        from.present(firstVC, animated: true, completion: nil)
    }

    static func showSecond(from: UIViewController, animated: Bool = true) {
        let secondVC = UIStoryboard(name: VCName.second.rawValue, bundle: nil).instantiateInitialViewController() as! SecondViewController
        secondVC.modalTransitionStyle = .crossDissolve
        show(from: from, to: secondVC, animated: animated)
    }

    static func showThird(from: UIViewController, animated: Bool = true) {
        let thirdVC = UIStoryboard(name: VCName.third.rawValue, bundle: nil).instantiateInitialViewController() as! ThirdViewController
        let thirdNavVC = UINavigationController(rootViewController: thirdVC)
        thirdNavVC.modalPresentationStyle = .fullScreen
        show(from: from, to: thirdNavVC, animated: animated)
    }

    static func showFourth(from: UIViewController, animated: Bool = true) {
        let fourthVC = UIStoryboard(name: VCName.fourth.rawValue, bundle: nil).instantiateInitialViewController() as! FourthViewController
        show(from: from, to: fourthVC, animated: animated)
    }
    //form -> to に画面遷移するメソッド
    private static func show(from: UIViewController, to: UIViewController, animated: Bool = true) {
        if let nav = from.navigationController {
            nav.pushViewController(to, animated: animated)
        }else {
            from.show(to, sender: nil)
        }
    }
}

