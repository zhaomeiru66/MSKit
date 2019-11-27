//
//  MKMapView+ZoomLevel.h
//  MSKit
//
//  Created by Marc Zhao on 2019/11/27.
//  Copyright © 2019 Memory Chain network technology (Shenzhen) co. LTD. All rights reserved.
//


#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface MKMapView (ZoomLevel)
-(void)setCenterCoordinate:(CLLocationCoordinate2D)centerCoordinate
zoomLevel:(NSUInteger)zoomLevel
 animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
