//
//  ViewController.swift
//  splat
//
//  Created by Stefan Dasbach on 6/12/14.
//  Copyright (c) 2014 Parallel9. All rights reserved.
//

import UIKit

//@class_protocol protocol GMSMapViewDelegate {
//    func didTapAtCoordinate(coordinate: CLLocationCoordinate2D)
//}

class ViewController: UIViewController, GMSMapViewDelegate {
    
    var mapView_: GMSMapView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* MapView inital values & dependencies */
        let initialLocation = CLLocationCoordinate2DMake(37.78, -122.41)
        let initialDirection = CLLocationDirection()
        let imageOpacity:Double = 0.5
        let camera = GMSCameraPosition.cameraWithTarget(initialLocation, zoom: 8)
        
        /* Set up MapView */
        var mapView_ = GMSMapView(frame: CGRectZero)
        mapView_.camera = camera
        mapView_.myLocationEnabled = true
        mapView_.delegate = self
        self.view = mapView_
        
        /*
        var cameraButton   = UIButton.buttonWithType(UIButtonType.System) as UIButton
        cameraButton.setTitle("Hello World", forState: UIControlState.Normal)
        cameraButton.frame = CGRectMake(0, 0, 100, 75)
        cameraButton.addTarget(self, action: "btnTouched:", forControlEvents:.TouchUpInside)
        cameraButton.tintColor = UIColor(white: 1, alpha: 1)
        
        var nav = UINavigationBar()
        nav.frame = CGRectMake(0, 0, 320, 64)
        nav.barTintColor = UIColor(red: 0.40, green: 0.06, blue: 0.86, alpha: 1)
        
        self.view.addSubview(nav)
        self.view.addSubview(cameraButton)
        
        
        let southwest = CLLocationCoordinate2DMake(37.72, -122.35)
        let northeast = CLLocationCoordinate2DMake(37.80,-122.52)
        
        let overlayBounds = GMSCoordinateBounds(coordinate: southwest, coordinate: northeast)
        
        var splatLogo = UIImage(named:"splatLogo.png")
        
        splatLogo = addOpacity(splatLogo, 0.5)
        
        var overlay = GMSGroundOverlay(bounds: overlayBounds, icon: splatLogo)
        
        overlay.tappable = true
        overlay.bearing = 0
        overlay.map = mapView_
        //var newMapView = GMSMapView()
        //newMapView.delegate = self
        */
    }
    
    
//    - (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user: (id<FBGraphUser>)user;
//
//
//    func loginViewFetchedUserInto(loginView : FBLoginView!, user: FBGraphUser) {
//        //Passs
//    }
    
    
//    
//    - (void)mapView:(GMSMapView *)mapView
//    didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
//        NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
//    }
//    
//    (void)loginViewFetchedUserInfo:(FBLoginView *)loginView user: (id<FBGraphUser>)user;
//    
//    func loginViewFetchedUserInto(loginView : FBLoginView!, user: FBGraphUser)
    
    func mapView(mapView: GMSMapView!, didTapAtCoordinate coordinate: CLLocationCoordinate2D) {
        println("You tapped at \(coordinate.latitude) \(coordinate.longitude)")
//        println("ASDA")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    func btnTouched(sender: UIButton!) {
        println("tapped button")
    }
    
}