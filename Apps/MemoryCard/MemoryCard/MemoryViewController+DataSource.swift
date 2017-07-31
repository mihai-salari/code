import UIKit

extension MemoryViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return deck.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cardCell", for: indexPath) as! CardCell
        let card = deck[indexPath.row]
        
        //cell.backgroundColor = UIColor.sunflower()
        cell.renderCardName(for: card.description, and: "back")
        
        return cell
    }
}
