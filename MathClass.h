//
//  MathClass.h
//  sampleProject
//
//  Created by Subin Nair on 12/16/15.
//
//

#import <Cordova/CDV.h>


@interface MathClass : CDVPlugin

- (void)cordovaMultiply:(CDVInvokedUrlCommand *)command;

-(int)calculate:(NSArray *)numbers;

@end

