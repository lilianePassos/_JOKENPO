//
//  ViewController.swift
//  Jokenpo
//
//  Created by Liliane on 03/04/20.
//  Copyright © 2020 Liliane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jogador: String = ""
    var maquina: String = ""
    let imagemTesoura = #imageLiteral(resourceName: "tesoura")
    let imagemPedra = #imageLiteral(resourceName: "pedra")
    let imagemPapel = #imageLiteral(resourceName: "papel")
    
    
    
    @IBOutlet weak var imageJogador: UIImageView!
    
    @IBOutlet weak var imageMaquina: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPedra(_ sender: Any){
         
        jogador = "Pedra"
        
        imageJogador.image = imagemPedra
        
    }
    @IBAction func btnPapel(_ sender: Any) {
        
        jogador = "Papel"
        imageJogador.image = imagemPapel
    }
    
    @IBAction func btnTesoura(_ sender: Any) {
        
        jogador = "Tesoura"
        imageJogador.image = imagemTesoura
    }
    
    @IBAction func btnJogue(_ sender: Any) {
        
      
        let valores = ["Tesoura","Papel","Pedra"]
        
        maquina = valores.randomElement()!
        
        if(maquina == "Pedra"){
            imageMaquina.image = imagemPedra
        }
        if (maquina == "Tesoura"){
            imageMaquina.image = imagemTesoura
        }
        if(maquina == "Papel"){
            imageMaquina.image = imagemPapel
        }
       
        if(jogador == "Pedra"){
            if(maquina == "Pedra"){
                 resultado.text = "Deu empate!"
            }else if(maquina == "Papel"){
                 resultado.text = "Você perdeu! :("
            }else if(maquina == "Tesoura"){
                resultado.text = "Você Ganhoou!! ;D"
            }
        }
        
        if(jogador == "Papel"){
                if(maquina == "Papel"){
                    resultado.text = "Deu empate!"
                        }else if(maquina == "Tesoura"){
                             resultado.text = "Você perdeu! :("
                        }else if(maquina == "Pedra"){
                            resultado.text = "Você Ganhooou!! ;D"
                        }
                    }
        if(jogador == "Tesoura"){
            if(maquina == "Tesoura"){
            resultado.text = "Deu empate!"
                }else if(maquina == "Pedra"){
                     resultado.text = "Você perdeu! :("
                }else if(maquina == "Papel"){
                    resultado.text = "Você Ganhooou!! ;D"
                }
            }
    }
    
            
           
       
    @IBOutlet weak var resultado: UILabel!
    
    
}

