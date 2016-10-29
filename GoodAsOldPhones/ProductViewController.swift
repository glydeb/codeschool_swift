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
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
    }

    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("button tapped")
        
        let alertController = UIAlertController(title: "Saved to Cart", message: "Your item was saved to the cart.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}
