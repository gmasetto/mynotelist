//
//  TarefaUserDefaults.swift
//  mynoteslist
//
//  Created by Gilberto Masetto on 03/12/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class TarefaUserDefaults: UIViewController {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func salvar(tarefa: String) {
        tarefas = listar()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func remover(indice: Int) {
        tarefas = listar()
        
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String> {
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
    }
}
