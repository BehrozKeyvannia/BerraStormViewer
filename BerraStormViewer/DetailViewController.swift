//
//  DetailViewController.swift
//  BerraStormViewer
//
//  Created by Behroz Keyvannia on 2015-10-08.
//  Copyright © 2015 Behroz Keyvannia. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {




    @IBOutlet weak var detailImageView: UIImageView!

    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let imageview = self.detailImageView {
                imageview.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }


}

