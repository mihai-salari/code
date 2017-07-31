import UIKit

/*
 The UICollectionView class is a view that arranges the contained cells to follow
 a layout we set during the setup. In this case, we set a flow layout in which
 each card follows the previous one, and it creates a new row when the right 
 border is reached.
 */

class MemoryViewController: UIViewController {
    let difficulty: Difficulty
    
    var mycollectionView: UICollectionView!
    var deck: Deck!
    var selectedIndexes = Array<IndexPath>()    
    var numberOfPairs = 0
    var score = 0
    
    var layout: UICollectionViewLayout!
    
    init(withDifficulty difficulty: Difficulty) {
        self.difficulty = difficulty
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("\(#file) - \(#function): deinitialized called")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        start()
    }
    
    private func start() {
        //deck = Array<Int>(repeating: 1, count: numberOfCardsNeeded(forDifficulty: difficulty))
        deck = createDeck(with: numberOfCardsNeeded(forDifficulty: difficulty))
        
        /*for i in 0..<deck.count {
            print("Log: The card at index \(i) is \(deck[i].description)")
        }*/
        
        mycollectionView.reloadData()
    }
    
    // Return a deck of cards required by the game mode
    private func createDeck(with numberOfCards: Int) -> Deck {
        let fullDeck = Deck.full().shuffled()
        let halfDeck = fullDeck.deckOfCards(withNumbers: numberOfCards/2)
        
        return (halfDeck + halfDeck).shuffled()
    }
}
