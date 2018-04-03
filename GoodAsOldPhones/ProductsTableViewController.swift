//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Waihon Yew on 02/04/2018.
//  Copyright © 2018 Pringgle Media. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "phone-fullscreen1"
        product1.cellImage = "image-cell1"

        product2.name = "1921 Dial Phone"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"

        product3.name = "1937 Desk Set"
        product3.productImage = "phone-fullscreen3"
        product3.cellImage = "image-cell3"

        product4.name = "1984 Motorola Portable"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"

        products = [product1, product2, product3, product4]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let p = products {
            return p.count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)

        // Configure the cell...
        let product = products?[indexPath.row]
        
        if let p = product {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }
        }

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            // Get the cell that was tapped and the index path for that call
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell) else {
                return
            }
            // Use the index path to get the productName from the array,
            // and send the product name to the product view controller
            productVC?.product = products?[indexPath.row]
        }
    }
}
