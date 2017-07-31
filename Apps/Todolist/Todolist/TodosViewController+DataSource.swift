import UIKit
import LatoFont

extension TodosViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            fatalError("We are fucked, where is the CELL?")
        }
        
        cell.selectionStyle = .none
        cell.textLabel?.font = UIFont.latoLightFont(ofSize: 14)
        cell.textLabel?.text = "Todo number \(indexPath.row)"
        
        return cell
    }
}
