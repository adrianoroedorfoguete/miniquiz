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
    
    var manager = managerQuiz()
    var questao: Quiz!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        upgradeQuiz()
        
    }
    
    
    @IBAction func butoes(_ sender: UIButton) {
        let index = opcoes.firstIndex(of: sender) ?? 0
        if manager.checkAnswer(index: index){
            upgradeQuiz()  // this is my kingdom cum
        } else {
            sender.setTitleColor(.red, for: .normal)
        }
    
    }
    
    func upgradeQuiz(){
    if manager.contador+1 < manager.quizes.count{
        questao = manager.reloadQuiz()
        question.text = questao.pergunta
        for i in 0...3{
            opcoes[i].setTitle(questao.opcoes[i], for: .normal)
            }
        }else{
            performSegue(withIdentifier: "SegueResultado", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let RESULT = segue.destination as! resultadominiquizViewController
        RESULT.numberCorrect = manager.numberCorrect
        RESULT.numberWrong = manager.numberWrong
    }

}
