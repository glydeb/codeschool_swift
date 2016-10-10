//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Glydewell Burdick on 10/9/16.
//  Copyright © 2016 Glydewell Burdick. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSize(width: 375, height: 800)
    }
}
