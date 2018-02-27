//
//  ViewController.swift
//  PassdataSegue
//
//  Created by Admin on 2/27/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField2: UITextField!
    
    @IBOutlet weak var nameTextField3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.rightBarButtonItem?.action = #selector(passData)
    }
// cho gia tri text ve mac dinh
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameTextField2.text = nil
        nameTextField3.text = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // truyen du lieu
    @objc func passData() {
        if nameTextField2.text != nil && nameTextField2.text == " " {
            let vc = ViewController2.instance
            vc.text = nameTextField2.text
            navigationController?.pushViewController(vc, animated: true)
        } else if nameTextField3.text != nil && nameTextField3.text != "" {
            let vc = ViewController3.instance
            vc.text = nameTextField3.text
            self.present(vc, animated: true, completion: nil)
        } else {
            print("edit one in two textField")
        }
    }

}

class ViewController2: UIViewController {
    
    static var instance: ViewController2 = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
    }()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if  text != nil {
            nameLabel.text = text!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

class ViewController3: UIViewController {
    
    static var instance: ViewController3 = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
    }()
    
    @IBOutlet weak var nameLabel: UILabel!
    
     var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if  text != nil {
            nameLabel.text = text!
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
