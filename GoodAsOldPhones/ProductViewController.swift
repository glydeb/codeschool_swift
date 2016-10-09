//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Glydewell Burdick on 10/8/16.
//  Copyright © 2016 Glydewell Burdick. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = UIImage (named: "1937DeskPhone")
    }

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("button tapped")
    }
}
