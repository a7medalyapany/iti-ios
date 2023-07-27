//
//  SecondViewController.swift
//  location
//
//  Created by khaledsobh on 27/07/2023.
//

import UIKit
import MapKit

class SecondViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self

        if let latitude = UserDefaults.standard.value(forKey: "selectedLatitude") as? CLLocationDegrees,
           let longitude = UserDefaults.standard.value(forKey: "selectedLongitude") as? CLLocationDegrees{
            let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
            
            let annotation = MyAnnotation(coordinate: coordinate, title: "Saved Annotation", subTitle: "Saved subTitle")
            mapView.addAnnotation(annotation)
            
            mapView.setCenter(coordinate, animated: true)
        }
    }

}
