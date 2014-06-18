//
//  ViewController.swift
//  splat
//
//  Created by Stefan Dasbach on 6/12/14.
//  Copyright (c) 2014 Parallel9. All rights reserved.
//

import UIKit


class ViewController: UIViewController, GMSMapViewDelegate {

    var mapView_: GMSMapView? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* MapView inital values & dependencies */
        let initialLocation = CLLocationCoordinate2DMake(37.78, -122.41)
        let initialDirection = CLLocationDirection()
        let imageOpacity:Double = 0.5
        let camera = GMSCameraPosition.cameraWithTarget(initialLocation, zoom: 10)
        
        /* Set up MapView */
        var mapView_ = GMSMapView(frame: CGRectZero)
        mapView_.camera = camera
        mapView_.myLocationEnabled = true
        mapView_.delegate = self
        self.view = mapView_
      
        
       
        
        let southwest = CLLocationCoordinate2DMake(37.72, -122.35)
        let northeast = CLLocationCoordinate2DMake(37.80,-122.52)
        
        let overlayBounds = GMSCoordinateBounds(coordinate: southwest, coordinate: northeast)
        
        var splatLogo = UIImage(named:"splatLogo.png")
        
        splatLogo = addOpacity(splatLogo, 0.5)
        
        var overlay = GMSGroundOverlay(bounds: overlayBounds, icon: splatLogo)
        

        
        
        overlay.tappable = true
        overlay.bearing = 0
        overlay.map = mapView_
        
        
        
//         Creates a marker in the center of the map.
//        GMSMarker *marker = [[GMSMarker alloc] init];
//        marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
//        marker.title = @"Sydney";
//        marker.snippet = @"Australia";
//        marker.map = mapView_;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

