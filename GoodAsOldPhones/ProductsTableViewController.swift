//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Waihon Yew on 02/04/2018.
//  Copyright © 2018 Pringgle Media. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var productNames: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        productNames = ["1907 Wall Set",
                        "1921 Dial Phone",
                        "1937 Desk Set",
                        "1984 Motorola Portable"]
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = productNames {
            return pNames.count
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)

        // Configure the cell...
        let productName = productNames?[indexPath.row]
        
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        cell.imageView?.image = UIImage(named: "image-cell1")

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            productVC?.productName = "Really old phone"
        }
    }
}
