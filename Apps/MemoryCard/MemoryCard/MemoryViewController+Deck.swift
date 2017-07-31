import UIKit

extension MemoryViewController {
    func checkIfFinished() {
        if numberOfPairs == deck.count / 2 {
            showFinalPopUp()
        }
    }
    
    func removeCards() {
        executeAfter(seconds: 1.0) {
            self.removeCards(atPlaces: self.selectedIndexes)
            self.selectedIndexes = Array<IndexPath>()
        }
        
    }
    
    func removeCards(atPlaces places: Array<IndexPath>) {
        for index in places {
            let cardCell = mycollectionView.cellForItem(at: index) as! CardCell
            cardCell.remove()
        }
    }
    
    func turnCardsFaceDown() {
        executeAfter(seconds: 2.0) {
            self.downturnCards(atPlaces: self.selectedIndexes)
            self.selectedIndexes = Array<IndexPath>()
        }
    }
    
    func downturnCards(atPlaces places: Array<IndexPath>) {
        for index in places {
            let cardCell = mycollectionView.cellForItem(at: index) as! CardCell
            cardCell.downturn()
        }
    }
    
    func showFinalPopUp() {
        let alert = UIAlertController(title: "Great!", message: "You won with score: \(score)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.dismiss(animated: true, completion: nil)
            return
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}
