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
    //MARK: Numero de personas
    @IBOutlet weak var numero_dePersonas: UILabel!
    @IBAction func agregarUnaPersona(_ sender: Any) {
        
    }
    
    //MARK: Color de fondo
    @IBAction func activar_desactivar_ColorDeFondo(_ sender: UISwitch) {
    }
    
    //MARK: Imagen
    @IBOutlet weak var imagen: UIImageView!
    @IBAction func ocultar_mostrarImagen(_ sender: Any) {
        
    }
    
    //MARK: - General
    var cuentaDePersonas = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

