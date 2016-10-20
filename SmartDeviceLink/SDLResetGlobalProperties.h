//  SDLResetGlobalProperties.h
//


#import "SDLRPCRequest.h"

/**
 * Resets the passed global properties to their default values as defined by
 * SDL
 * <p>
 * The HELPPROMPT global property default value is generated by SDL consists of
 * the first vrCommand of each Command Menu item defined at the moment PTT is
 * pressed<br/>
 * The TIMEOUTPROMPT global property default value is the same as the HELPPROMPT
 * global property default value
 * <p>
 * <b>HMILevel needs to be FULL, LIMITED or BACKGROUND</b>
 * </p>
 *
 * Since SmartDeviceLink 1.0
 * See SetGlobalProperties
 */
@interface SDLResetGlobalProperties : SDLRPCRequest {
}

/**
 * @abstract Constructs a new SDLResetGlobalProperties object
 */
- (instancetype)init;
/**
 * @abstract Constructs a new SDLResetGlobalProperties object indicated by the NSMutableDictionary
 * parameter
 * @param dict The dictionary to use
 */
- (instancetype)initWithDictionary:(NSMutableDictionary *)dict;

- (instancetype)initWithProperties:(NSArray *)properties;

/**
 * @abstract An array of one or more GlobalProperty enumeration elements
 * indicating which global properties to reset to their default value
 */
@property (strong) NSMutableArray *properties;

@end
