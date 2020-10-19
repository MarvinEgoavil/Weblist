//
//  Details.swift
//  TablasWebView
//
//  Created by user177281 on 19/10/2020.
//

import UIKit

class Details: UIViewController {
    
    @IBOutlet var labelNombre : UILabel!
    
    var nombre = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNombre.text = nombre

        
    }
    

    

}
