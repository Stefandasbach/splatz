//
//  imageUtils.swift
//  splat
//
//  Created by Aaron Tainter on 6/16/14.
//  Copyright (c) 2014 Parallel9. All rights reserved.
//

import Foundation
import UIKit

func addOpacity(image: UIImage, opacity: CGFloat)->UIImage {
    //change image
    UIGraphicsBeginImageContextWithOptions(image.size, false, 0.0)
    
    let ctx = UIGraphicsGetCurrentContext()
    var area = CGRectMake(0, 0, image.size.width, image.size.height)
    
    CGContextScaleCTM(ctx, 1, -1)
    CGContextTranslateCTM(ctx, 0, -area.size.height)
    CGContextSetBlendMode(ctx, kCGBlendModeMultiply)
    
    CGContextSetAlpha(ctx, opacity)
    
    CGContextDrawImage(ctx, area, image.CGImage)
    
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    
    UIGraphicsEndImageContext()
    
    return newImage
    
}

    