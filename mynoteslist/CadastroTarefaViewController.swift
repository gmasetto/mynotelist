//
//  CadastroTarefaViewController.swift
//  mynoteslist
//
//  Created by Gilberto Masetto on 02/12/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    @IBOutlet weak var textFieldCadastroTarefa: UITextField!
    
    override func viewDidLoad() {
          super.viewDidLoad()
      }
    
    @IBAction func buttonCadastroTarefa(_ sender: Any) {
        if let textoDigitado = textFieldCadastroTarefa.text {
            let tarefaUserDefaults = TarefaUserDefaults()
            
            tarefaUserDefaults.salvar(tarefa: textoDigitado)
            
            textFieldCadastroTarefa.text = ""
        }
    }
}
