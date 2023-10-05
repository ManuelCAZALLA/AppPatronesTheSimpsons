//
//  DataModelFile.swift
//  AppPatronesTheSimpsons
//
//  Created by Manuel Cazalla Colmenero on 4/10/23.
//

import Foundation

typealias DataSimpsons = [DataModel]

struct DataModel {
    var name: String
    var job: String
    var image: String?
    var description: String
}

// Datos de la Api
var sampleData: DataSimpsons = [
   
    DataModel(name: "Marge Simpson",
               job: "Ama de casa",
               image: "marge_simpson.png",
               description: "Marjorie Marge B. Simpson ,  (de soltera Bouvier ; nacida el 19 de marzo  ), es la feliz ama de casa y madre de tiempo completo de la familia Simpson . Con su esposo Homer , tiene tres hijos: Bart , Lisa y Maggie Simpson . Marge es la fuerza moralista en su familia y, a menudo, proporciona una voz fundamental en medio de las payasadas de su familia al tratar de mantener el orden en la casa de los Simpson. Aparte de sus deberes en el hogar, Marge coqueteó brevemente con una serie de carreras que van desde oficial de policía hasta activista contra la violencia."),
   
    DataModel(name: "Herb Powell",
                   job: "Empresario CEO y presidente de Powell Motor Company",
                   image: "Herbert_Powell.png",
                   description: "Herbert Powell es el medio hermano mayor de Homer Simpson. Nacido ilegítimamente de Abe Simpson y Gaby, fue criado por la familia Powell y creó una inmensa riqueza gracias a su compañía de automóviles."),
    DataModel(name: "Jasper Beardsley",
                   job: "Jubilado",
                   image: "Jasper_Beardsley.png",
                   description: "Jasper Beardsley es un residente del Castillo de Retiro de Springfield, se le ve a menudo en Springfield y es amigo de Abe Simpson"),
    DataModel(name: "Smithers",
                   job: "Asistente de Charles Montgomery Burns, Supervisor del sector 7-G",
                   image: "Waylon_Smithers.png",
                   description: "Waylon J. Smithers, Jr. (más conocido como Mr. Smithers o simplemente como Smithers) es el asistente personal, ejecutivo y autoproclamado mejor amigo del Sr. Burns. Es abiertamente gay cuando salió del armario, pero debido a lo mal que ocultó su sexualidad, la mayoría de la gente lo sabía de antemano."),
        DataModel(name: "Ned Flanders",
                   job: "Propietario de Zurdopolis",
                   image: "Ned_Flanders.png",
                   description: "Nedward Ned Flanders, Jr. es el propietario y vecino de al lado extremadamente religioso de la familia Simpson. Es una persona genuinamente bien intencionada y bondadosa y es uno de los pocos en Springfield a quienes se aplica esa descripción. Aunque firmemente religioso, puede ser tímido y un tanto pusilánime. Él adora a Dios a fondo y sigue estrictamente la Biblia lo más literalmente posible y se escandaliza fácilmente cuando se le cuestiona cualquier punto del dogma"),
        DataModel(name: "Krusty el payaso",
                   job: "Personalidad de televisión",
                   image: "Krusty_the_Clown.png",
                   description: "Herschel Schmoeckel Pinchas Yerucham Krustofsky (apellido que también se escribe Krustofski) es el cínico, quemado y plagado de adicciones payaso presentador del programa de televisión favorito de Bart y Lisa"),
        DataModel(name: "Cletus",
                   job: "Granjero, trabajador de la construcción",
                   image: "Cletus_Spuckler.png",
                   description: "Cletus Del Roy Montfort Bigglesworth Spuckler, también conocido como Cletus the Slack-Jawed Yokel, es un campesino sureño estereotípico con una personalidad afable, es delgado y generalmente se lo representa con un par de jeans. Reside con su familia en la Ruta Rural 9 en Springfield."),
        DataModel(name: "Kirk Van Houten",
                   job: "Desempleado",
                   image: "Kirk_Van_Houten.png",
                   description: "Kirk Evelyn Van Houten es el padre desempleado de Milhouse y el esposo vuelto a casar de Luann."),
        DataModel(name: "Richard",
                   job: "Alumno Escuela Primaria Springfield",
                   image: "Richard.png",
                   description: "Richard es un estudiante canoso de la Escuela Primaria Springfield"),
        DataModel(name: "Sarah Wiggum",
                   job: "Ama de casa",
                   image: "Sarah_Wiggum.png",
                   description: "Sarah Wiggum (de soltera Kanneke ) es la suave esposa de Jefe Gorgory y madre de Ralph. Se la ve con mayor frecuencia en multitudes o en reuniones como grupos de caridad organizados por Marge")
    ]

   

   
