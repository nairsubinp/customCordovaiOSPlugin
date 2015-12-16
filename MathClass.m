//
//  MathClass.m
//  sampleProject
//
//  Created by Subin Nair on 12/16/15.
//
//

#import "MathClass.h"

@implementation MathClass

- (void)cordovaMultiply:(CDVInvokedUrlCommand *)command{
    
    //Call the calculate method and pass the arguments which we will get from the HTML
    
    NSString* answer = [NSString stringWithFormat:@"%d", [self calculate:command.arguments]];
    
    // Execute sendPluginResult on this plugin's commandDelegate, passing in the instance of CDVPluginResult
    
    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:answer] callbackId:command.callbackId];

    
}
-(int)calculate:(NSArray *)numbers{
    
    
    // Multiply them.
    float answer = [[numbers objectAtIndex:0] floatValue] * [[numbers objectAtIndex:1] floatValue];
    
    
    return answer;
}


@end
