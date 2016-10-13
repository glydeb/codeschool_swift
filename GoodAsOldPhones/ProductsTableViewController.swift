//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Glydewell Burdick on 10/10/16.
//  Copyright © 2016 Glydewell Burdick. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        cell.textLabel?.text = "Hello Friend."
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
