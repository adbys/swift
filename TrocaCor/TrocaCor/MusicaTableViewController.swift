//
//  MusicaTableViewController.swift
//  Musica
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class MusicaTableViewController: UITableViewController {
    
    var musicas = [Musica]()

    @IBAction func adicionarMusica(_ sender: Any) {
        
        let novaMusica = Musica(nome: "Points of Authority",
                                artista: "Linkin Park",
                                album: "Hybrid Theory",
                                imagem: "")
        
        MusicaDAO.adicionar(musica: novaMusica)
        
        self.musicas = MusicaDAO.getMusicas()
        
        self.tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.musicas = MusicaDAO.getMusicas()
        
        if musicas.isEmpty {
            MusicaDAO.initializa()
            self.musicas = MusicaDAO.getMusicas()
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicaIdentifier", for: indexPath)
        
        if let musicaCell = cell as? MusicaTableViewCell {
            
            let musica = self.musicas[indexPath.row]
            
            musicaCell.nomeLabel.text = musica.nome
            musicaCell.artistaLabel.text = musica.artista
            
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            MusicaDAO.removerMusicaNa(posicao: indexPath.row)
            
            self.musicas = MusicaDAO.getMusicas()
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "musicaInfo" {
            
            
            if let nextView = segue.destination as? MusicaInfoViewController {
                
                if let indice = self.tableView?.indexPathForSelectedRow {
                    
                    let musica = self.musicas[indice.row]
                    
                    nextView.musica = musica
                    
                    
                }
                
            }
            
        }
        
    }
    

}
