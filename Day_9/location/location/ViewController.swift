//
//  ViewController.swift
//  location
//
//  Created by khaledsobh on 27/07/2023.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {


    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
       /*let initialLocation = CLLocation(latitude: 26.8206, longitude: 30.8025)
        
        let region = MKCoordinateRegion(center: initialLocation.coordinate, latitudinalMeters: 1000000, longitudinalMeters: 1000000)
        mapView.setRegion(region, animated: true)*/
    }


    @IBAction func mapTouched(_ sender: UITapGestureRecognizer) {
        let touchedPoint: CGPoint = sender.location(in: mapView)
        print("X = \(touchedPoint.x), Y = \(touchedPoint.y)")
        
        let touchedLocation: CLLocationCoordinate2D = mapView.convert(touchedPoint, toCoordinateFrom: mapView)
        print("longitude = \(touchedLocation.longitude), latitude = \(touchedLocation.latitude)")
        
        let annotiation: MyAnnotation = MyAnnotation(coordinate: touchedLocation, title: "Alyapany", subTitle: "Company")
        
        mapView.addAnnotation(annotiation)
    }
    
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if let selectedAnnotation = mapView.selectedAnnotations.first as? MyAnnotation{
            UserDefaults.standard.set(selectedAnnotation.coordinate.latitude, forKey: "selectedLatitude")
            UserDefaults.standard.set(selectedAnnotation.coordinate.longitude,forKey: "selectedLongitude")
        }
        performSegue(withIdentifier: "toSecondScreen", sender: self)
    }
}

