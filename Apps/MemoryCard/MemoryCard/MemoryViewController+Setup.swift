import  UIKit

extension MemoryViewController {
    func setup() {
        view.backgroundColor = UIColor.greenSea()
        
        let space: CGFloat = 5.0
        let (collectionViewWidth, collectionViewHeight) = collectionViewSize(withDifficulty: difficulty, space: space)
        
        layout = layout(forCardSize: cardSize(withDifficulty: difficulty, space: space), space: space)
        
        mycollectionView = UICollectionView(frame: CGRect.init(x: 0, y: 0, width: collectionViewWidth, height: collectionViewHeight), collectionViewLayout: layout)
        mycollectionView.center = view.center
        mycollectionView.dataSource = self
        mycollectionView.delegate = self
        mycollectionView.isScrollEnabled = false
        mycollectionView.register(CardCell.self, forCellWithReuseIdentifier: "cardCell") // .self to refer to the Class itself
        mycollectionView.backgroundColor = UIColor.clear
        
        self.view.addSubview(mycollectionView)
    }
    
    func collectionViewSize(withDifficulty difficulty: Difficulty, space: CGFloat) -> (CGFloat, CGFloat) {
        let (columns, rows) = size(withDifficulty: difficulty)
        let (cardWitdh, cardHeight) = cardSize(withDifficulty: difficulty, space: space)
        let collectionViewWidth = columns * (cardWitdh + 2 * space)
        let collectionViewHeight = rows * (cardHeight + space)
        
        return (collectionViewWidth, collectionViewHeight)
    }
    
    func cardSize(withDifficulty difficulty: Difficulty, space: CGFloat) -> (CGFloat, CGFloat) {
        let ratio: CGFloat = 1.452
        let (_, rows) = size(withDifficulty: difficulty)
        let cardHeight: CGFloat = view.frame.height/rows - 2 * space
        let cardWidth: CGFloat = cardHeight / ratio
        
        return (cardWidth, cardHeight)
    }
    
    func layout(forCardSize size: (cardWidth: CGFloat, cardHeight: CGFloat), space: CGFloat) -> UICollectionViewFlowLayout {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(space, space, space, space)
        layout.itemSize = CGSize.init(width: size.cardWidth, height: size.cardHeight)
        layout.minimumLineSpacing = space
        
        return layout
    }
    
    func size(withDifficulty difficulty: Difficulty) -> (CGFloat, CGFloat) {
        switch difficulty {
        case .easy:
            return (4, 3)
        case .medium:
            return (6, 4)
        case .hard:
            return (8, 4)
        }
    }
    
    func numberOfCardsNeeded(forDifficulty difficulty: Difficulty) -> Int {
        let (columns, rows) = size(withDifficulty: difficulty)
        return Int(columns * rows)
    }

}
