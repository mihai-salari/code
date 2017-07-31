import UIKit

class CardCell: UICollectionViewCell {
    fileprivate let frontImageView: UIImageView!
    fileprivate var cardImageName: String!
    fileprivate var backImageName: String!
    
    private var isUp: Bool = false
    
    override init(frame: CGRect) {
        frontImageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        super.init(frame: frame)
        contentView.addSubview(frontImageView)
        contentView.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func renderCardName(for cardImageName: String, and backImageName: String) {
        self.cardImageName = cardImageName
        self.backImageName = backImageName
        frontImageView.image = UIImage(named: self.backImageName)
    }
    
    func flipCard() {
        if isUp {
            downturn()
        } else {
            upturn()
        }
    }
    
    func upturn() {
        isUp = true
        flipCard(withDirection: .up)
    }
    
    func downturn() {
        isUp = false
        flipCard(withDirection: .down)
    }
    
    func remove() {
        UIView.animate(withDuration: 1.0, animations: {
            self.alpha = 0
        }, completion: {
            completed in
            self.isHidden = true
        })        
    }
}

extension CardCell {
    enum CardFace {
        case up
        case down
    }
    
    func flipCard(withDirection direction: CardFace) {
        var option: UIViewAnimationOptions = .transitionFlipFromLeft
        var image: UIImage = UIImage(named: self.backImageName)!
        
        if direction == .up {
            option = UIViewAnimationOptions.transitionFlipFromRight
            image = UIImage(named: self.cardImageName)!
        }
        
        UIView.transition(with: contentView, duration: 1.0, options: option, animations: {
            self.frontImageView.image = image
        }, completion: nil)
    }
}
