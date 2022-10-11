//
//  miniquizViewViewController.swift
//  miniquiz
//
//  Created by ICMMAC03-BEBA on 11/10/22.
//

import UIKit


class miniquizViewViewController: UIViewController {

    
    
    @IBOutlet var opcoes: [UIButton]!
    
    @IBOutlet weak var question: UILabel!
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func butoes(_ sender: UIButton) {
        let index = opcoes.firstIndex(of: sender) ?? 0
        question.text = "\(index)"
    
    }
    
    

}
