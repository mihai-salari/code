//
//  Map2ViewController.swift
//  BNRWorldTrotter
//
//  Created by Lee Choon Siong on 2017/05/24.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit
import MapKit

class Map2ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    // MARK: - Structs
    
    struct FavoritePlace {
        var name: String
        var latitude: Double
        var longitude: Double
    }
    
    // MARK: - Properties
    
    var mapView: MKMapView!
    var button: UIButton!
    var pin: UIButton!
    var selectedAnnotationIndex: Int = -1
    var locationManager = CLLocationManager()
    
    override func loadView() {
        print("DEBUG: Map2ViewController loadView")
        // Create a map view
        mapView = MKMapView()
        
        // Set it as the view of this view controller
        view = mapView
        
        mapView.delegate = self
        
        let standardString = NSLocalizedString("Standard", comment: "Standard map view")
        let hybridString = NSLocalizedString("Hybrid", comment: "Hybrid map view")
        let satelliteString = NSLocalizedString("Satellite", comment: "Satellite map view")
        let segmentedControl = UISegmentedControl(items: [standardString, hybridString, satelliteString])
        
        //let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(Map2ViewController.mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        button = UIButton(type: .contactAdd)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(Map2ViewController.updateUserLocation), for: .touchDown)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        let buttonTrailingConstraint = button.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        let buttonBottomConstraint = button.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8)
        buttonTrailingConstraint.isActive = true
        buttonBottomConstraint.isActive = true
                
        // Create button for pin and setup auto-layout constraints
        pin = UIButton(type: .system)
        pin.setTitle("Pins", for: .normal)
        view.addSubview(pin)
        
        pin.translatesAutoresizingMaskIntoConstraints = false
        
        let pinLeadingConstraint = pin.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let pinBottomConstraint = pin.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8)
        pinLeadingConstraint.isActive = true
        pinBottomConstraint.isActive = true
        
        pin.addTarget(self, action: #selector(Map2ViewController.favoriteButtonClicked(_:)), for: .touchDown)
        
        // Create array of FavoritePlace objects
        var favoritePlaces = [FavoritePlace]()
        favoritePlaces.append(FavoritePlace(name: "Flora Bay Perhentian", latitude: 5.891109, longitude: 102.746763))
        favoritePlaces.append(FavoritePlace(name: "のとろ　能取岬", latitude: 44.112092, longitude: 144.243309))
        favoritePlaces.append(FavoritePlace(name: "台北敦化綠園", latitude: 25.056829, longitude: 121.552025))
        
        for favoritePlace in favoritePlaces {
            let dropPin = MKPointAnnotation()
            dropPin.coordinate = CLLocationCoordinate2DMake(favoritePlace.latitude, favoritePlace.longitude)
            dropPin.title = favoritePlace.name
            mapView.addAnnotation(dropPin)
        }
        
        // Not required anymore... we will create all location in this file
        //favoritePlace1 = FavoritePlace1.init()
    }
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        print("DEBUG: Map2ViewController viewDidLoad")
        
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("DEBUG: Map2ViewController viewWillAppear")
        
        super.viewWillAppear(false)
    }
    
    // MARK: - MKMapViewDelegate
    
    func mapViewWillStartLocatingUser(_ mapView: MKMapView) {
        print("Log: start locating user...")
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        print("Log: did update user location")
        
        let currentLocation = mapView.userLocation.location
        
        if let currentLocation = currentLocation {
            let location = CLLocationCoordinate2DMake(currentLocation.coordinate.latitude, currentLocation.coordinate.longitude)
            
            print("Log: currentLocation is \(location)")
            
            //mapView.setCenter(location, animated: true)
            
            let span = MKCoordinateSpanMake(0.01, 0.01) // 1 degree ~ 0.0175 radian
            let region = MKCoordinateRegion(center: location, span: span)
            //let currentLocationPoint = MKPointAnnotation()
            //currentLocationPoint.coordinate = location
            
            mapView.setRegion(region, animated: true)
            //mapView.addAnnotation(currentLocationPoint)
            mapView.showsUserLocation = true
        }
    }

    //MARK: - CLLocationManagerDelegate
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("\(#function) is called")
    }
    
    // MARK: - Functions
    
    func updateUserLocation() {
        print("updateUserLocation is clicked")
        
        locationManager.requestWhenInUseAuthorization()
        
        mapView.showsUserLocation = true
    }
    
    func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    func favoriteButtonClicked(_ sender: UIButton) {
        if mapView.showsUserLocation {
            mapView.showsUserLocation = false
        }
        
        if !(mapView.annotations.count > 0) {
            return
        }
        
        selectedAnnotationIndex += 1
        
        if selectedAnnotationIndex >= mapView.annotations.count {
            selectedAnnotationIndex = 0
        }
        
        let annotation = mapView.annotations[selectedAnnotationIndex]
        let zoomedInCurrentLocation = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 10000, 10000)
        mapView.setRegion(zoomedInCurrentLocation, animated: true)
    }
}
