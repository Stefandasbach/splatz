//
//  ViewController.swift
//  splat
//
//  Created by Stefan Dasbach on 6/12/14.
//  Copyright (c) 2014 Parallel9. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let initialLocation = CLLocationCoordinate2DMake(-33.86, 151.20)
        let initialDirection = CLLocationDirection()
        
        let camera = GMSCameraPosition.cameraWithTarget(initialLocation, zoom: 10)
        
        var mapView_ = GMSMapView(frame: CGRectZero)
        mapView_.camera = camera
        mapView_.myLocationEnabled = true;
        self.view = mapView_;
        
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

