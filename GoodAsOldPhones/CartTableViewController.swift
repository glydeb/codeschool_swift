//
//  CartTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Glydewell Burdick on 10/30/16.
//  Copyright © 2016 Glydewell Burdick. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {
    
    var orders: [Order]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(<#T##animated: Bool##Bool#>)
        
        let product1 = Product()
        product1.name = "1907 Wall Set"
        product1.cellImage = "image-cell1"
        product1.productImage = "phone-fullscreen1"
        product1.price = 299.99
        
        let order = Order()
        order.order_id = 1
        order.product = product1

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath)

        let order = orders?[indexPath.row]
        
        cell.textLabel?.text = order?.product?.name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

 
}
