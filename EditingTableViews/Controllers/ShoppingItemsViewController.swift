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
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension ShoppingItemsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
