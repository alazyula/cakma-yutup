//
//  ViewController.swift
//  cakma-yutup
//
//  Created by macbookaır on 8.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getVideos()
    }

    

}

