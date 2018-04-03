//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Waihon Yew on 01/04/2018.
//  Copyright © 2018 Pringgle Media. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
    }

    @IBAction func addToCardPressed(_ sender: Any) {
        print("Button tapped")
    }
}
