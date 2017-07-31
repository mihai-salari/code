import UIKit

// Just for sake of readability, we group the methods needed to implement a feature
// in a separated extension, leaving in the main class only the public functions
// and the variable definition.

enum Difficulty {
    case easy
    case medium
    case hard
}

extension ViewController {
    func setup() {
        view.backgroundColor = UIColor.greenSea()
        
        buildButton(withCenter: CGPoint.init(x: view.center.x, y: view.center.y/2.0), title: "EASY", color: UIColor.emerald(), action: #selector(onEasyButtonTapped(_:)))
        buildButton(withCenter: CGPoint.init(x: view.center.x, y: view.center.y), title: "MEDIUM", color: UIColor.sunflower(), action: #selector(onMediumButtonTapped(_:)))
        buildButton(withCenter: CGPoint.init(x: view.center.x, y: view.center.y*3.0/2.0), title: "HARD", color: UIColor.alizarin(), action: #selector(onHardButtonTapped(_:)))
    }
    
    func buildButton(withCenter center: CGPoint, title: String, color: UIColor, action: Selector) {
        let button = UIButton()
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.frame = CGRect(origin: CGPoint.init(x: 0, y: 0), size: CGSize(width: 200, height: 50))
        button.center = center
        button.backgroundColor = color
        button.addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        
        view.addSubview(button)
    }
    
    func onEasyButtonTapped(_ sender: UIButton) {
        newGame(withDifficulty: .easy)
    }
    
    func onMediumButtonTapped(_ sender: UIButton) {
        newGame(withDifficulty: .medium)
    }
    
    func onHardButtonTapped(_ sender: UIButton) {
        newGame(withDifficulty: .hard)
    }
    
    func newGame(withDifficulty difficulty: Difficulty) {
        let gameViewControlle = MemoryViewController(withDifficulty: difficulty)
        present(gameViewControlle, animated: true, completion: nil)
    }
}
