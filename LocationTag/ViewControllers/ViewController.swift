//
//  ViewController.swift
//  LocationTag
//
//  Created by Mingu Chu on 5/27/16.
//  Copyright © 2016 Mingu Chu. All rights reserved.
//

import UIKit
import Mapbox


class ViewController: UIViewController, MGLMapViewDelegate {

    @IBOutlet var mapView: MGLMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: 41.8937402, longitude: -87.6375008), zoomLevel: 15, animated: false)
        
        dropAnnotations()
        
    }

    func dropAnnotations() {
        let currentUser = MGLPointAnnotation()
        currentUser.title = "current user"
        currentUser.subtitle = "tester 1"
        currentUser.coordinate = CLLocationCoordinate2D(latitude: 41.8937402, longitude: -87.6375008)
        mapView.addAnnotations([currentUser])
    
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }

}

