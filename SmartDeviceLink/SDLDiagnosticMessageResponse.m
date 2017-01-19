//  SDLDiagnosticMessageResponse.m
//

#import "SDLDiagnosticMessageResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLDiagnosticMessageResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameDiagnosticMessage]) {
    }
    return self;
}

- (void)setMessageDataResult:(NSMutableArray<NSNumber<SDLInt> *> *)messageDataResult {
    [parameters sdl_setObject:messageDataResult forName:SDLNameMessageDataResult];
}

- (NSMutableArray<NSNumber<SDLInt> *> *)messageDataResult {
    return [parameters objectForKey:SDLNameMessageDataResult];
}

@end

NS_ASSUME_NONNULL_END
