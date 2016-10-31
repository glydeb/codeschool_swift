//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Glydewell Burdick on 10/10/16.
//  Copyright © 2016 Glydewell Burdick. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product2.name = "1921 Dial Phone"
        product3.name = "1937 Desk Set"
        product4.name = "1984 Motorola Portable"
        
        product1.productImage = "phone-fullscreen1"
        product2.productImage = "phone-fullscreen2"
        product3.productImage = "phone-fullscreen3"
        product4.productImage = "phone-fullscreen4"
        
        product1.cellImage = "image-cell1"
        product2.cellImage = "image-cell2"
        product3.cellImage = "image-cell3"
        product4.cellImage = "image-cell4"
        
        product1.price = 299.99
        product2.price = 149.99
        product3.price = 89.99
        product4.price = 22.99
        
        
        products = [product1, product2, product3, product4]
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let pNames = products {
            return pNames.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
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
            
            // get the cell that was tapped and store it in indexPath
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell) else {
                return
            }

            productVC?.product = products?[indexPath.row]
        
        }
    }
}
