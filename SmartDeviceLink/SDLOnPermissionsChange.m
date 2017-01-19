//  SDLOnPermissionsChange.m
//

#import "SDLOnPermissionsChange.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"
#import "SDLPermissionItem.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOnPermissionsChange

- (instancetype)init {
    if (self = [super initWithName:SDLNameOnPermissionsChange]) {
    }
    return self;
}

- (void)setPermissionItem:(NSMutableArray<SDLPermissionItem *> *)permissionItem {
    [parameters sdl_setObject:permissionItem forName:SDLNamePermissionItem];
}

- (NSMutableArray<SDLPermissionItem *> *)permissionItem {
    NSMutableArray<SDLPermissionItem *> *array = [parameters sdl_objectForName:SDLNamePermissionItem];
    if ([array count] < 1 || [[array objectAtIndex:0] isKindOfClass:SDLPermissionItem.class]) {
        return array;
    } else {
        NSMutableArray<SDLPermissionItem *> *newList = [NSMutableArray arrayWithCapacity:[array count]];
        for (NSDictionary<NSString *, id> *dict in array) {
            [newList addObject:[[SDLPermissionItem alloc] initWithDictionary:(NSDictionary *)dict]];
        }
        return newList;
    }
}

@end

NS_ASSUME_NONNULL_END
