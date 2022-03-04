//
//  ViewController.swift
//  PM2-Practica4_Calculadora
//
//  Created by Xanderpsy on 24/02/22.
//

import UIKit

class ViewController: UIViewController {
    var cerebrocalculadora = CerebroCalculadora()
    
    var peso: Double = 75
    var altura: Double = 180 / 100
    var imc: Double = 0
    
    @IBOutlet weak var valorAlturaLbl: UILabel!
    @IBOutlet weak var valorPesoLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func sladerPeso(_ sender: UISlider) {
        valorPesoLbl.text = String(format:"%.1",sender.value)
        peso = Double(sender.value)
    }
    @IBAction func slaiderAltura(_ sender: UISlider) {
        print(sender.value)
        valorAlturaLbl.text = String(format:"%.1f cm",sender.value)
        altura = Double(sender.value) / 100
    }
    @IBAction func valcularBtn(_ sender: UIButton) {
        
        cerebrocalculadora.calcularIMS(peso: peso, altura: altura)
        
        
        performSegue(withIdentifier: "segueid", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let objDestino = segue.destination as! SegundoViewController
        objDestino.valorIMC = cerebrocalculadora.retornarValorStringIMC()
        objDestino.mensaje = cerebrocalculadora.darAviso()
        objDestino.color = cerebrocalculadora.retornarColor()
        objDestino.imagen = cerebrocalculadora.retornarColor()
    }
    
    
    
}

