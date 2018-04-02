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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }

    @IBAction func addToCardPressed(_ sender: Any) {
        print("Button tapped")
    }
}
