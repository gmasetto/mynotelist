//
//  TarefasTableViewController.swift
//  mynoteslist
//
//  Created by Gilberto Masetto on 02/12/19.
//  Copyright © 2019 Gilberto Masetto. All rights reserved.
//

import UIKit

class TarefasTableViewController: UITableViewController {
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func reloadTarefas() {
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        reloadTarefas()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let tarefa = TarefaUserDefaults()
            tarefa.remover(indice: indexPath.row)
            reloadTarefas()
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)

        celula.textLabel?.text = tarefas[indexPath.row]
 
        return celula
    }
}
