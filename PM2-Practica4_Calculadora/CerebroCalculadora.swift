//
//  CerebroCalculadora.swift
//  PM2-Practica4_Calculadora
//
//  Created by Xanderpsy on 01/03/22.
//

import Foundation
import UIKit

struct CerebroCalculadora{
    var imcc: IMSS?
    
   mutating func calcularIMS(peso: Double, altura: Double){
       
        let valorIMC = peso / (altura * altura)
        if valorIMC < 18.5 {
            imcc = IMSS(valor:valorIMC , mensaje: "se encuentra dentro del rango de peso insuficiente", color: UIColor.blue,  image: UIImage(named: "masa1")!)
        }else if
            valorIMC < 24.9 {
            imcc = IMSS(valor:valorIMC , mensaje: " se encuentra dentro del rango de peso normal o saludable", color: UIColor.green, image: UIImage(named: "masa2")!)
        }else if valorIMC < 29.9 {
            imcc = IMSS(valor:valorIMC , mensaje: "se encuentra dentro del rango de sobrepeso", color: UIColor.yellow, image: UIImage(named: "masa3")!)
            }else if valorIMC >= 29.9 {
                imcc = IMSS(valor:valorIMC , mensaje: "se encuentra dentro del rango de obesidad ve al maldito gimnassio obeso", color: UIColor.red, image: UIImage(named: "masa4")!)
                }
       
    }
    
    func retornarValorStringIMC() -> String{
        let imcCon2Decimales = String (format: "%.2f", imcc?.valor ?? 0.0)
        return imcCon2Decimales
    }
    
    func darAviso() -> String{
        return imcc?.mensaje ?? "no hay mensaje"
    }
    
    func retornarColor() -> UIColor{
        return imcc?.color ?? UIColor.cyan
         
    }
    func retornarColor() -> UIImage{
        return imcc?.image ?? UIImage(named: "masa1")! 
         
    }
    // retornan imagen
        
        
        
        
        
        
        
        
        
        

    
}
