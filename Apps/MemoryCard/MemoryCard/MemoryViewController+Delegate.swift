import UIKit

extension MemoryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedIndexes.count == 2 || selectedIndexes.contains(indexPath) { return }
        selectedIndexes.append(indexPath)

        let cell = collectionView.cellForItem(at: indexPath) as! CardCell
        cell.upturn()

        if selectedIndexes.count < 2 { return }
        
        // Below code will execute when selectedIndex.count == 2 only        
        let card1 = deck[selectedIndexes[0].row]
        let card2 = deck[selectedIndexes[1].row]
        
        if card1 == card2 {
            numberOfPairs += 1
            checkIfFinished()
            removeCards()
        } else {
            score += 1
            turnCardsFaceDown()
        }
    }
}
