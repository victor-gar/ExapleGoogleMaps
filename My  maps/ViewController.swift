//
//  ViewController.swift
//  My  maps
//
//  Created by Victor Garitskyu on 03.11.2021.
//

import UIKit
import GoogleMaps
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    private  let coordinate = CLLocationCoordinate2D(latitude: 55.753215, longitude: 37.622504)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMap()
    }

    private func configureMap () {
    
        let camera = GMSCameraPosition.camera(withTarget: coordinate, zoom: 17)
        mapView.camera = camera
    }


    @IBAction func goToCenter(_ sender: Any) {
        
        mapView.animate(toLocation: coordinate)
        configureMap()
}
}
 
