//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Waihon Yew on 02/04/2018.
//  Copyright © 2018 Pringgle Media. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "Hello friend."
        cell.imageView?.image = UIImage(named: "image-cell1")

        return cell
    }
}
