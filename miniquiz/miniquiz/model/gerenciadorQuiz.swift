//
//  gerenciadorQuiz.swift
//  miniquiz
//
//  Created by ICMMAC03-BEBA on 11/10/22.
//

import Foundation


class managerQuiz {
    
    var quizes: [Quiz] = [Quiz(pergunta:"Quem merece zero?", opcoes: ["Adriano", "Ìcaro", "Matheus", "Antonio"], respostaCorrect: 2),
    Quiz(pergunta: "Quem merece 10?", opcoes: ["Paola", "Pedro", "Ícaro", "Jullye"],  respostaCorrect: 0),
    Quiz(pergunta: "1 + 1 ", opcoes: ["2","x","3","11"], respostaCorrect: 1),
    Quiz(pergunta: "2 + 3", opcoes: ["x","3","5!","5"], respostaCorrect: 3),
    Quiz(pergunta: "2!", opcoes: ["2","1","3","4"], respostaCorrect: 0),
    Quiz(pergunta: "23 - 21", opcoes: ["2","32","13","44"], respostaCorrect: 0),
    Quiz(pergunta: "13 + 123", opcoes: ["cum","136cum","cum","cum"], respostaCorrect: 1),
    Quiz(pergunta: "19 + 23", opcoes: ["cum","stepmom","stepson","cum"], respostaCorrect: 1),
    Quiz(pergunta: "what da dog doing", opcoes: ["cum","5","cum","cum"], respostaCorrect: 1),
    Quiz(pergunta: "32/2", opcoes: ["cum","16","cum","cum"], respostaCorrect: 1),
    Quiz(pergunta: "32 + 32", opcoes: ["64","45","64!","76"], respostaCorrect: 0),
    Quiz(pergunta: "24 + 28", opcoes: ["65","1!","x","52"], respostaCorrect: 3),
    Quiz(pergunta: "20/5 * 5/5", opcoes: ["4","35","34","21"], respostaCorrect: 0),
    Quiz(pergunta: "12 + 90", opcoes: ["534","22","102","65"], respostaCorrect: 2)]
    
    
    var contador = -1
    var numberCorrect = 0
    var numberWrong = 0
    
    func reloadQuiz() -> Quiz {
        contador = contador + 1
        return quizes[contador]
        
        
        
        
    }
    func checkAnswer(index: Int)->Bool{
        
        if quizes[contador].respostaCorrect == index{
          numberCorrect = numberCorrect + 1
           
            return true
            
        } else {
            return false // hehehehehehe
        }
    }
    
}
























