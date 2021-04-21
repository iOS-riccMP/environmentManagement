//
//  ViewController.swift
//  Manejo Environment
//
//  Created by Riccardo Mija Padilla on 21/04/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblEnvironment: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        lblEnvironment.text = Environment.enviroment
    }


}

