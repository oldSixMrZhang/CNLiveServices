//
//  CNLiveSendPositionProtocol.h
//  CNLiveBeeHive
//
//  Created by open on 2019/11/22.
//

/**
 * 发送位置模块
 */

#import <Foundation/Foundation.h>
#import "BHServiceProtocol.h"
#import <MapKit/MapKit.h>

//////发送位置delegate///////
@protocol CNLiveMapPositionDelegate <NSObject>

- (void)sendCurrentLocation:(CLLocationCoordinate2D)location image:(NSString *)img addressName:(NSArray *)arr;
- (void)forwardingLocation:(CLLocationCoordinate2D)location image:(NSString *)img addressName:(NSArray *)arr;
@end

////////////

@protocol CNLiveSendPositionProtocol <NSObject,BHServiceProtocol>

- (void)pushToMapViewController:(id)delegate;
//位置信息详情VC
- (void)pushToMapDetailViewController:(id)delegate location:(CLLocationCoordinate2D)location image:(NSString *)img addressName:(NSArray *)arr;
@end

