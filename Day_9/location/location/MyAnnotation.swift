//
//  MyAnnotation.swift
//  location
//
//  Created by khaledsobh on 27/07/2023.
//

import Foundation
import MapKit

class MyAnnotation: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subTitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String, subTitle: String) {
        self.coordinate = coordinate
        self.title = title
        self.subTitle = subTitle
        super.init()
    }
}
