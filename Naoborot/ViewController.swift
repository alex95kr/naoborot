//
//  ViewController.swift
//  Naoborot
//
//  Created by alex95kr on 21.09.16.
//  Copyright © 2016 alex95kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textchange: UITextField!
    
    
    @IBAction func buttonchange(_ sender: UIButton) {
        
        var original : String = textchange.text!  // получаем из поля текст где мы его ввели
        var mass = [Character] () // создаем массив для разложения исходного значения по буквам
        
        // в этом цикле из переменной original (string) разлаживается по символам в массив
        for i in original.characters {
            mass += ([i])
        }
        
        // эта функция перелаживает в массиве данные задом наперед
        mass.reverse ()
        
        // присваивание результата сразу полю где вводился текст, для присвоения ему значения так как он (string мы временно сделали из массива тип (string)
        self.textchange.text=String(mass)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

