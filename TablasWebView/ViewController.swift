//
//  ViewController.swift
//  TablasWebView
//
//  Created by user177281 on 19/10/2020.
//

import UIKit

struct equipos {
    let nombre : String!
    let url: String!
    
}

class equiposCell:UITableViewCell {
    @IBOutlet var labelName: UILabel!
    @IBOutlet var buttonURL: UIButton!
    
}
    


class ViewController: UIViewController {

    let arrayEquipos = [equipos(nombre:"Barcelona", url:"https://fcbarcelona.es" ),equipos(nombre:"Real Madrid", url:"https://realmadrid.com" ),equipos(nombre:"Getafe", url:"https://getafecf.com" ), equipos(nombre:"Rayo Vallecano", url:"https://rayovallecano.es" ) ]
    
    var indice = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
}

extension ViewController : UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayEquipos.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"Equipos") as! equiposCell
        let equipo = arrayEquipos[indexPath.row]
        
        cell.labelName.text = equipo.nombre
        cell.buttonURL.tag = indexPath.row
        
        cell.buttonURL.addTarget(self, action:#selector(abrirWeb(sender:)), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indice = indexPath.row
        self.performSegue(withIdentifier: "irDetalles", sender: self)
    }
    
    @objc func abrirWeb(sender : UIButton) {
        let equipo = arrayEquipos[sender.tag]
        if let url = URL(string: equipo.url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irDetalles" {
            let destino = segue.destination as? Details
            destino?.nombre = arrayEquipos[indice].nombre
        }
    }
    
    
}
