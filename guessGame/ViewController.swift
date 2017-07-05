//
//  ViewController.swift
//  guessGame
//
//  Created by Jesper Linne on 2017-05-30.
//  Copyright © 2017 MalmoApps. All rights reserved.
//

import UIKit

    var count = 0.0

class ViewController: UIViewController {

    
    @IBOutlet weak var TenSecLabel: UIButton!
    
    @IBOutlet weak var twentySecLabel: UIButton!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textLabel.text = "When pressed Start Game you will have 10 seconds to find the lowest number. See how many numbers you can find in 10 seconds."
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func TenSecBtnPressed(_ sender: Any) {
        
        var time = 10
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "gameVC") as! UIViewController
        
        // vc.selectedIndex = 0
        self.present(vc, animated: true, completion: nil)

    }

    
    @IBAction func TwentySecBtnPressed(_ sender: Any) {
        
        var time = 20
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "gameVC") as! UIViewController
        
        // vc.selectedIndex = 0
        self.present(vc, animated: true, completion: nil)

        
        
    }
    
    
    
    
    
}

