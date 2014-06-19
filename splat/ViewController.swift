//
//  ViewController.swift
//  splat
//
//  Created by Stefan Dasbach on 6/12/14.
//  Copyright (c) 2014 Parallel9. All rights reserved.
//

import UIKit


class ViewController: UIViewController, GMSMapViewDelegate {

<<<<<<< HEAD
//    var mapView_: GMSMapView? = nil
    
    override func loadView() {
        //Fuck Darkhan
    }
=======
    @IBOutlet
    var imageView:UIImageView
    
    var mapView_: GMSMapView? = nil
    //var cameraButton: UIButton? = nil

>>>>>>> b4acd29042cb6656a3bcf3010595b8175f0fe067
    
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
<<<<<<< HEAD
//        mapView_.delegate = self
        var delegate: GMSMapViewDelegate?
        delegate?.didTapMyLocationButtonForMapView!(mapView_)
        
       
=======
        mapView_.delegate = self
        self.view = mapView_
        
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
        
        
>>>>>>> b4acd29042cb6656a3bcf3010595b8175f0fe067
        let southwest = CLLocationCoordinate2DMake(37.72, -122.35)
        let northeast = CLLocationCoordinate2DMake(37.80,-122.52)
        
        let overlayBounds = GMSCoordinateBounds(coordinate: southwest, coordinate: northeast)
        
        var splatLogo = UIImage(named:"splatLogo.png")
        
        splatLogo = addOpacity(splatLogo, 0.5)
        
        var overlay = GMSGroundOverlay(bounds: overlayBounds, icon: splatLogo)
<<<<<<< HEAD
=======
        
>>>>>>> b4acd29042cb6656a3bcf3010595b8175f0fe067
        overlay.tappable = true
        overlay.bearing = 0
        overlay.map = mapView_
        
        
//        Creates a marker in the center of the map.
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
    
<<<<<<< HEAD
    func didTa
//    func didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
//    NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
//    }
    
    
=======
    func btnTouched(sender: UIButton!) {
        println("tapped button")
    }
        
    func 
>>>>>>> b4acd29042cb6656a3bcf3010595b8175f0fe067

}

