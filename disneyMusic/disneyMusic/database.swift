//
//  database.swift
//  disneyMusic
//
//  Created by Lucas Asafe Virginio do Nascimento on 16/04/19.
//  Copyright © 2019 Lucas Asafe Virginio do Nascimento. All rights reserved.
//

import Foundation

enum generos: String, CaseIterable{
    case Brega = "Brega"
    case RockAlternativo = "Rock Alternativo"
}

let artistas = [artist(a: "Conde Só Brega", b: #imageLiteral(resourceName: "condesobrega"), c: "Recife"),artist(a: "Kelvis Duran", b: #imageLiteral(resourceName: "kelvis"), c: "Nao sei"), artist(a: "Snow Patrol", b: #imageLiteral(resourceName: "snowpatrol"), c: "Inglaterra")]

let musicas = [music(a: "Artigo de Vitrine", b: .Brega, c: artistas[0]),
music(a: "Perdidos", b: .Brega, c: artistas[1]),
music(a: "Open Your Eyes", b: .RockAlternativo, c: artistas[2])]

