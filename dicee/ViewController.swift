//
//  ViewController.swift
//  dicee
//
//  Created by Борух Соколов on 15.03.2023.
//

import UIKit

class ViewController: UIViewController {

    //первый кубик
    @IBOutlet weak var cubeOne: UIImageView!
   
    //второй кубик
    @IBOutlet weak var cubeTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 //если нажали на кнопку
    @IBAction func button(_ sender: Any) {
        print("button pressed")
        var image=[UIImage(imageLiteralResourceName:"DiceOne"),
                     UIImage(imageLiteralResourceName:"DiceTwo"),
                     UIImage(imageLiteralResourceName:"DiceThree"),
                     UIImage(imageLiteralResourceName:"DiceFour"),
                     UIImage(imageLiteralResourceName:"DiceFive"),
                     UIImage(imageLiteralResourceName:"DiceSix"),
                       
                     ]
        
        cubeOne.image=image.randomElement()
        cubeTwo.image=image[Int.random(in: 0...image.count-1)]
       
        
    }
}

