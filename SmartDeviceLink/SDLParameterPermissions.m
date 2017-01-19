//  SDLParameterPermissions.m
//


#import "SDLParameterPermissions.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLParameterPermissions

- (void)setAllowed:(NSMutableArray<NSString *> *)allowed {
    [store sdl_setObject:allowed forName:SDLNameAllowed];
}

- (NSMutableArray<NSString *> *)allowed {
    return [store sdl_objectForName:SDLNameAllowed];
}

- (void)setUserDisallowed:(NSMutableArray<NSString *> *)userDisallowed {
    [store sdl_setObject:userDisallowed forName:SDLNameUserDisallowed];
}

- (NSMutableArray<NSString *> *)userDisallowed {
    return [store sdl_objectForName:SDLNameUserDisallowed];
}

@end

NS_ASSUME_NONNULL_END
