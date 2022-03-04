//
//  SegundoViewController.swift
//  PM2-Practica4_Calculadora
//
//  Created by Xanderpsy on 24/02/22.
//

import UIKit

class SegundoViewController: UIViewController {
    
    @IBOutlet weak var imc: UILabel!
    @IBOutlet weak var mesajeviw2: UILabel!
    @IBOutlet weak var imgview2: UIImageView!
    @IBOutlet weak var tituloLBL: UILabel!
    var valorIMC: String?
    var mensaje: String?
    var color: UIColor?
    var imagen: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = color
        imgview2.image = imagen
        imc.text = "\(valorIMC) KG"
        print (valorIMC)
        let letra = Double(valorIMC!)!
        if (letra <= 18.5){
            imc.textColor = UIColor.white
            mesajeviw2.textColor = UIColor.white
            tituloLBL.textColor = UIColor.white
        }
        if (letra >= 29.9){
            imc.textColor = UIColor.white
            mesajeviw2.textColor = UIColor.white
            tituloLBL.textColor = UIColor.white
        }
        mesajeviw2.text = mensaje
    }
    

   

}
