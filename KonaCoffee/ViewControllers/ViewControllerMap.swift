//
//  ViewControllerMap.swift
//  KonaCoffee
//
//  Created by Sven Pohle on 1/6/18.
//  Copyright © 2018 Sven Pohle. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController {
    
    lazy var mapView: MKMapView = {
        let view = MKMapView(frame: self.view.frame)
    
        let coordinates = CLLocationCoordinate2D(latitude: 19.639994, longitude: -155.996933)
        let camera = MKMapCamera(lookingAtCenter: coordinates, fromDistance: 100000, pitch: 0, heading: 0)
        
        view.setCamera(camera, animated: true)
        view.mapType = .mutedStandard
        view.showsCompass = false
        
        return view
    }()
    
    lazy var mapCompassView: MKCompassButton = {
        let view = MKCompassButton(mapView: mapView)
        view.compassVisibility = .adaptive
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.ThemeMap.background
        
        self.view.addSubview(mapView)
        self.setupMapView()
        
        self.view.addSubview(mapCompassView)
        self.setupMapCompassView()
    }
    
    func setupMapView() {
        mapView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mapView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        mapView.heightAnchor.constraint(equalTo: self.view.heightAnchor).isActive = true
        mapView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupMapCompassView() {
        mapCompassView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        mapCompassView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        mapCompassView.translatesAutoresizingMaskIntoConstraints = false
    }
}












