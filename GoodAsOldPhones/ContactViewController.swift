//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Waihon Yew on 02/04/2018.
//  Copyright © 2018 Pringgle Media. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(scrollView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }
}
