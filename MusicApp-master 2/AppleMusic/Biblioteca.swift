//
//  Biblioteca.swift
//  AppleMusic
//
//  Created by Elton Santana on 16/04/19.
//  Copyright © 2019 Memo. All rights reserved.
//

import Foundation
import UIKit

enum Genero: String, CaseIterable {
    case axe = "Axé"
    case MPB = "MPB"
    case brega = "Brega"
    case forro = "Forró"
}

let artistas = [
    Artista(nome: "Leo Santana", foto: #imageLiteral(resourceName: "leo"), naturalidade: "Bahia"),
    Artista(nome: "Alceu Valença", foto: #imageLiteral(resourceName: "alci"), naturalidade: "Pernambuco"),
    Artista(nome: "Reginaldo Rossi", foto: #imageLiteral(resourceName: "regi"), naturalidade: "Pernambuco"),
    Artista(nome: "Psirico", foto: #imageLiteral(resourceName: "psi"), naturalidade: "Bahia"),
    Artista(nome: "Mano Walter", foto: #imageLiteral(resourceName: "mano_walter"), naturalidade: "Alagoas"),
    
]

let musicas = [
    Musica(nome: "Tchubirabiron", genero: .axe, artista: artistas[0]),
    Musica(nome: "La belle dejour", genero: .MPB, artista: artistas[1]),
    Musica(nome: "Popa da bunda", genero: .axe, artista:  artistas[3]),
    Musica(nome: "A Raposa e as Uvas", genero: .brega, artista: artistas[2]),
    Musica(nome: "Dama de vermelho", genero: .brega, artista: artistas[2]),
    Musica(nome: "Recife minha cidade", genero: .brega, artista: artistas[2]),
    Musica(nome: "Rebolation", genero: .axe, artista: artistas[0]),
    Musica(nome: "Lepo Lepo", genero: .axe, artista: artistas[3]),
    Musica(nome: "Garçom", genero: .brega, artista: artistas[2]),
    Musica(nome: "Em plena lua de mel", genero: .brega, artista: artistas[2]),
    Musica(nome: "Juramendo do dedinho", genero: .forro, artista: artistas[4]),
    Musica(nome: "Motel calango", genero: .forro, artista: artistas[4]),
    Musica(nome: "Balada do vaqueiro", genero: .forro, artista: artistas[4]),
]
