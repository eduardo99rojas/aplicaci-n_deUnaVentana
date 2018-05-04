//
//  ViewController.swift
//  aplicacion_deUnaVentana
//
//  Created by Eduardo Rojas Alvarez on 04/05/18.
//  Copyright © 2018 Eduardo Rojas Alvarez. All rights reserved.
//

import Foundation
import UIKit

class VentanaPrincipal: UIViewController {

    //MARK: - Conexiones Generales
    //---
    //Referencias a objetos en Main.storyboard
    //---
    
    //MARK: Numero de personas
    @IBOutlet weak var numero_dePersonas: UILabel!
    @IBAction func agregarUnaPersona(_ sender: Any) {
        
        //Agregar una persona a la cuenta
        cuentaDePersonas += 1
        
        //Mostrar la nueva cantidad de personas en la UILabel "numero_dePersoans"
        self.numero_dePersonas.text = "\(cuentaDePersonas)"
        
    }
    
    //MARK: Color de fondo
    @IBAction func activar_desactivar_ColorDeFondo(_ sender: UISwitch) {
        
        //Si el sender (el UISwitch) esta encendido (ON) significa que el color de fondo debe ser verde, de lo contrario el color de fondo debe ser blanco
        if sender.isOn == true{
            
            //Mostrar color de fondo como verde
            self.view.backgroundColor = UIColor.green
        } else{
            
            //Mostrar color de fondo como blanco
            self.view.backgroundColor = UIColor.white
        }
    }
    
    //MARK: Imagen
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var O_M_imagen: UIButton!
    @IBAction func ocultar_mostrarImagen(_ sender: Any) {
        
        //Si la imagen esta visible esta debe de ser ocultada, de lo contrario si esta oculta debe de ser mostrada
        if imagen.isHidden == true {
         
            //Mostrar imagen
            imagen.isHidden = false
            //Cambair texto de boton a "Ocultar imagen"
            O_M_imagen.setTitle("Ocultar imagen", for: .normal)
        } else{
            
            //Ocultar imagen
            imagen.isHidden = true
            //Cambair texto de boton a "Mostrar imagen"
            O_M_imagen.setTitle("Mostrar imagen", for: .normal)
        }
    }
    
    //MARK: - General
    var cuentaDePersonas = 0
    
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        //Tratar de cargar la imagen utilizando su nombre
        if let imagen = UIImage.init(named: "imagen_1") {
            
            //Mostrar la imagen en caso de que esta exista
            self.imagen.image = imagen
        }
    }

    //MARK: - ViewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    //MARK: - MemoryWarning
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

