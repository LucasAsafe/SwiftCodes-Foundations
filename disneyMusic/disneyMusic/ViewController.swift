//
//  ViewController.swift
//  disneyMusic
//
//  Created by Lucas Asafe Virginio do Nascimento on 11/04/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageArea: UIImageView!
    @IBOutlet weak var musicName: UILabel!
    @IBOutlet weak var nacionalidade: UILabel!
    @IBOutlet weak var genderName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var searchArtist: UITextField!
    @IBOutlet var viewInteira: UIView!
    
    var contador:Int = 0 {
        didSet{
            self.atualizarTela()
        }
    }
    
    func atualizarTela(){
        self.musicName.text = musicas[self.contador].nome
        self.imageArea.image = musicas[self.contador].artista.foto
        self.artistName.text = musicas[self.contador].artista.nome
        self.genderName.text = musicas[self.contador].genero.rawValue
        self.nacionalidade.text = musicas[self.contador].artista.naturalidade
    }
    @IBAction func searchBtn(_ sender: Any) {
    }
    @IBAction func searchArtistField(_ sender: Any) {
    }
    @IBAction func nextAction(_ sender: Any) {
        if contador == musicas.count-1{
            contador = 0
        }else{
            contador += 1
        }
    }
    @IBAction func previousAction(_ sender: Any) {
        if contador == 0{
            contador = musicas.count-1
        }else{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        atualizarTela()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

