//
//  MusicaInfoViewController.swift
//  Musica
//
//  Created by Student on 3/17/17.
//  Copyright © 2017 AJ. All rights reserved.
//

import UIKit

class MusicaInfoViewController: UIViewController {
    
    @IBOutlet weak var imagemDoAlbum: UIImageView!

    @IBOutlet weak var nomeDaMusica: UILabel!
    
    @IBOutlet weak var nomeDoArtista: UILabel!
    
    @IBOutlet weak var nomeDoAlbum: UILabel!
    
    @IBOutlet weak var tituloPagina: UINavigationItem!
    
    var musica: Musica?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tituloPagina.title = musica?.nome
        
        self.nomeDaMusica.text = musica?.nome
        
        self.nomeDoArtista.text = musica?.artista
        
        self.nomeDoAlbum.text = musica?.album
        
        self.imagemDoAlbum.image = UIImage(named: (musica?.imagem)!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
