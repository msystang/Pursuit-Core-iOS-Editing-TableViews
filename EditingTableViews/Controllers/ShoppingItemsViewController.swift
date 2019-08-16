/*
- rename the view controller as "ShoppingItemsViewController" to be more descriptive
- load all of the "ShoppingItems" into a table view in your ShoppingItemsViewController. the tableview should be pinned to the edges of its superview
- set up data source and delegate for the tableview
    - refactor some of the above so that they call the two private methods below in your viewDidLoad:

private func loadShoppingItems() {
    let allItems = ShoppingItemFetchingClient.getShoppingItems()
    shoppingItems = allItems
}

private func configureShoppingItemsTableView() {
    shoppingItemsTableView.dataSource = self
    shoppingItemsTableView.delegate = self
}
*/

import UIKit

class ShoppingItemsViewController: UIViewController {
    
    let items = ShoppingItemFetchingClient.getShoppingItems()
    
    @IBOutlet weak var itemsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemsTable.delegate = self
        itemsTable.dataSource = self

    }
}

extension ShoppingItemsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.price)"
        return cell
    }
    
    
}
