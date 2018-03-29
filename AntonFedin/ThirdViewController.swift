//
//  ThirdViewController.swift
//  AntonFedin
//
//  Created by student on 22.03.2018.
//  Copyright © 2018 student. All rights reserved.
//
import UIKit
class ThirdViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.currentTitle! == "pusk" {
            label.text = "Запустили"
        } else {
            label.text = "Остановили"
        }
    }
    
    @IBAction func Move(_ sender: UISlider) {
        let value = lroundf(sender.value / 10) * 10
        label.text = "\(value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueButton.layer.cornerRadius = 15
        redButton.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
