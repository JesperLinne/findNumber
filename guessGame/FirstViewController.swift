//
//  FirstViewController.swift
//  guessGame
//
//  Created by Jesper Linne on 2017-05-30.
//  Copyright © 2017 MalmoApps. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var B1Label: UIButton!
    @IBOutlet weak var B2Label: UIButton!
    @IBOutlet weak var B3Label: UIButton!
    @IBOutlet weak var B4Label: UIButton!
    @IBOutlet weak var B5Label: UIButton!
    @IBOutlet weak var B6Label: UIButton!
    @IBOutlet weak var B7Label: UIButton!
    @IBOutlet weak var B8Label: UIButton!
    @IBOutlet weak var B9Label: UIButton!
    @IBOutlet weak var B10Label: UIButton!
    @IBOutlet weak var B11Label: UIButton!
    @IBOutlet weak var B12Label: UIButton!
    
    @IBOutlet weak var startLabelButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    
    var list = [Int]()
    var timer = Timer()
    var isPaused = true
    var isTimerRunning = false
    var count = 10.0
    var point = 0
    
    var gameOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startLabelButton.isHidden = true
        getNumbers()
        nameButton()
        runTimer()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func runTimer() {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
        }
    
    func update() {
        showButtons()
        count -= 1
        timerLabel.text = String(count)
        
        if (count == 0) {
            
            timer.invalidate()
            EndOfTimeuiAlert()
            hideButtons()
            
        }
        
    }
    
    func stopTimer(){
        timer.invalidate()
        uiAlert()
        hideButtons()
    }
    

    
    func getNumbers() -> [Int] {
        
        let n = 12
        
        for i in 0..<n {
            
            list.append(Int(arc4random_uniform(100) + 30))
            
            }
        
    
        print(list)
        return list.sorted()
        
        
    }
    
    
    func removeNumbers() {
        
        list.removeAll()
        
    }
    
    func uiAlert() {
        
        startLabelButton.isHidden = false
        
        let alertView = UIAlertController(title: "", message: "You failed! Points: \(point)", preferredStyle: .alert)
        let action = UIAlertAction(title: "START AGAIN", style: .default, handler: { (alert) in
            
        })
        alertView.addAction(action)
        self.present(alertView, animated: true, completion: nil)
        hideButtons()
        timeNotZero()
        
    }
    
    func EndOfTimeuiAlert() {
        
        startLabelButton.isHidden = false
        
        let alertView = UIAlertController(title: "End of Time", message: "Points: \(point)", preferredStyle: .alert)
        let action = UIAlertAction(title: "START AGAIN", style: .default, handler: { (alert) in
            
        })
        alertView.addAction(action)
        self.present(alertView, animated: true, completion: nil)
        timeNotZero()
        
    }
    
    
    
    func nameButton() {
        
        let numb0 = list[0]
        let num0 = String(describing: numb0)
        B1Label.setTitle(num0, for: .normal)
        
        let numb1 = list[1]
        let num1 = String(describing: numb1)
        B2Label.setTitle(num1, for: .normal)

        let numb2 = list[2]
        let num2 = String(describing: numb2)
        B3Label.setTitle(num2, for: .normal)
        
        let numb3 = list[3]
        let num3 = String(describing: numb3)
        B4Label.setTitle(num3, for: .normal)
        
        let numb4 = list[4]
        let num4 = String(describing: numb4)
        B5Label.setTitle(num4, for: .normal)
    
        let numb5 = list[5]
        let num5 = String(describing: numb5)
        B6Label.setTitle(num5, for: .normal)
        
        let numb6 = list[6]
        let num6 = String(describing: numb6)
        B7Label.setTitle(num6, for: .normal)
        
        let numb7 = list[7]
        let num7 = String(describing: numb7)
        B8Label.setTitle(num7, for: .normal)
        
        let numb8 = list[8]
        let num8 = String(describing: numb8)
        B9Label.setTitle(num8, for: .normal)
        
        let numb9 = list[9]
        let num9 = String(describing: numb9)
        B10Label.setTitle(num9, for: .normal)
        
        let numb10 = list[10]
        let num10 = String(describing: numb10)
        B11Label.setTitle(num10, for: .normal)
        
        let numb11 = list[11]
        let num11 = String(describing: numb11)
        B12Label.setTitle(num11, for: .normal)
        
    }
    
    
    @IBAction func B1Button(_ sender: Any) {
        
        
        let minValue = list.min()
        let numb = list[0]
        let num = String(describing: numb)
        B1Label.setTitle(num, for: .normal)
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()
        } else {
            print("nooo")
            stopTimer()
        }
            

    }

    @IBAction func B2Button(_ sender: Any) {
        

        
        let minValue = list.min()
        let numb = list[1]
        
        if numb == minValue {
            point += 1
            count += 2
            print("YEEES")
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }
            

    }
    
    @IBAction func B3Button(_ sender: Any) {
      
        
        let minValue = list.min()
        let numb = list[2]
        
        if numb == minValue {
            count += 2
            point += 1
            print("YEEES")
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }
            

    }
    
    @IBAction func B4Button(_ sender: Any) {
    
        let minValue = list.min()
        let numb = list[3]
        
        if numb == minValue {
            count += 2
            point += 1
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }

    }
    
    @IBAction func B5Button(_ sender: Any) {
       
        let minValue = list.min()
        let numb = list[4]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }

    }
    
    @IBAction func B6Button(_ sender: Any) {
        
        let minValue = list.min()
        let numb = list[5]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }

    }

    @IBAction func B7Button(_ sender: Any) {
      
        let minValue = list.min()
        let numb = list[6]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }

    }

    @IBAction func B8Button(_ sender: Any) {
    
        let minValue = list.min()
        let numb = list[7]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            print("nooo")
            stopTimer()
        }

    }

    @IBAction func B9Button(_ sender: Any) {
    
        let minValue = list.min()
        let numb = list[8]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

            
        } else {
            stopTimer()
            print("nooo")
        }

    }

    @IBAction func B10Button(_ sender: Any) {
      

        let minValue = list.min()
        let numb = list[9]
        timeNotZero()

        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            stopTimer()
            print("nooo")
        }

    }

    @IBAction func B11Button(_ sender: Any) {
        
        let minValue = list.min()
        let numb = list[10]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            stopTimer()
            print("nooo")
        }

    }

    @IBAction func B12Button(_ sender: Any) {
      

        let minValue = list.min()
        let numb = list[11]
        
        if numb == minValue {
            point += 1
            count += 2
            timeNotZero()

        } else {
            stopTimer()
            print("nooo")
        }

    }
    
    @IBAction func startButton(_ sender: Any) {
   
        startAgain()
        count = 10.0
        timerLabel.text = "10.0"
        runTimer()
        startLabelButton.isHidden = true
        
    }
    
    
    
    func timeNotZero() {
        
        if count >= 0 {
            
            startAgain()
            
        } else {
            hideButtons()
            EndOfTimeuiAlert()
        }
        
    }
    
    func startAgain() {
        
        removeNumbers()
        getNumbers()
        showButtons()
        nameButton()
    }
    
    func hideButtons() {
        
        B1Label.isHidden = true
        B2Label.isHidden = true
        B3Label.isHidden = true
        B4Label.isHidden = true
        B5Label.isHidden = true
        B6Label.isHidden = true
        B7Label.isHidden = true
        B8Label.isHidden = true
        B9Label.isHidden = true
        B10Label.isHidden = true
        B11Label.isHidden = true
        B12Label.isHidden = true
        
        
        
    }
    
    func showButtons() {
        
        B1Label.isHidden = false
        B2Label.isHidden = false
        B3Label.isHidden = false
        B4Label.isHidden = false
        B5Label.isHidden = false
        B6Label.isHidden = false
        B7Label.isHidden = false
        B8Label.isHidden = false
        B9Label.isHidden = false
        B10Label.isHidden = false
        B11Label.isHidden = false
        B12Label.isHidden = false
        
        
    }


}
