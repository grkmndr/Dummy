//
//  ViewController.swift
//  Dummy
//
//  Created by Gorkem Onder on 6.05.2020.
//  Copyright © 2020 Gorkem Onder. All rights reserved.
//

import UIKit

/// A dummy view controller for displaying some dummy stuff.
public class DummyViewController: UIViewController {
    @IBOutlet weak var dummyLabel: UILabel!
    var dummyModel: DummyViewModel!
    
    /// Loads the view into the memory
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDummyModel()
        dummyLabel.text = try? dummyModel.dummyFunc(dummyInt: 1) {
            print("Dummy stuff is done.")
        }
    }
    
    /// Sets up the dummy model.
    func setupDummyModel() {
        dummyModel = DummyViewModel(dummyVar: .ultraDummy)
    }
}

