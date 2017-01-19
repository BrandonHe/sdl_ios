//  SDLRegisterAppInterfaceResponse.m
//


#import "SDLRegisterAppInterfaceResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLAudioPassThruCapabilities.h"
#import "SDLButtonCapabilities.h"
#import "SDLDisplayCapabilities.h"
#import "SDLHMICapabilities.h"
#import "SDLNames.h"
#import "SDLPresetBankCapabilities.h"
#import "SDLSoftButtonCapabilities.h"
#import "SDLSyncMsgVersion.h"
#import "SDLVehicleType.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRegisterAppInterfaceResponse

- (instancetype)init {
    if (self = [super initWithName:SDLNameRegisterAppInterface]) {
    }
    return self;
}

- (void)setSyncMsgVersion:(nullable SDLSyncMsgVersion *)syncMsgVersion {
    [parameters sdl_setObject:syncMsgVersion forName:SDLNameSyncMessageVersion];
}

- (nullable SDLSyncMsgVersion *)syncMsgVersion {
    return [parameters sdl_objectForName:SDLNameSyncMessageVersion ofClass:SDLSyncMsgVersion.class];
}

- (void)setLanguage:(nullable SDLLanguage)language {
    [parameters sdl_setObject:language forName:SDLNameLanguage];
}

- (nullable SDLLanguage)language {
    return [parameters sdl_objectForName:SDLNameLanguage];
}

- (void)setHmiDisplayLanguage:(nullable SDLLanguage)hmiDisplayLanguage {
    [parameters sdl_setObject:hmiDisplayLanguage forName:SDLNameHMIDisplayLanguage];
}

- (nullable SDLLanguage)hmiDisplayLanguage {
    return [parameters sdl_objectForName:SDLNameHMIDisplayLanguage];
}

- (void)setDisplayCapabilities:(nullable SDLDisplayCapabilities *)displayCapabilities {
    [parameters sdl_setObject:displayCapabilities forName:SDLNameDisplayCapabilities];
}

- (nullable SDLDisplayCapabilities *)displayCapabilities {
    return [parameters sdl_objectForName:SDLNameDisplayCapabilities ofClass:SDLDisplayCapabilities.class];
}

- (void)setButtonCapabilities:(nullable NSMutableArray<SDLButtonCapabilities *> *)buttonCapabilities {
    [parameters sdl_setObject:buttonCapabilities forName:SDLNameButtonCapabilities];
}

- (nullable NSMutableArray<SDLButtonCapabilities *> *)buttonCapabilities {
    return [parameters sdl_objectsForName:SDLNameButtonCapabilities ofClass:SDLButtonCapabilities.class];
}

- (void)setSoftButtonCapabilities:(nullable NSMutableArray<SDLSoftButtonCapabilities *> *)softButtonCapabilities {
    [parameters sdl_setObject:softButtonCapabilities forName:SDLNameSoftButtonCapabilities];
}

- (nullable NSMutableArray<SDLSoftButtonCapabilities *> *)softButtonCapabilities {
    return [parameters sdl_objectsForName:SDLNameSoftButtonCapabilities ofClass:SDLSoftButtonCapabilities.class];
}

- (void)setPresetBankCapabilities:(nullable SDLPresetBankCapabilities *)presetBankCapabilities {
    [parameters sdl_setObject:presetBankCapabilities forName:SDLNamePresetBankCapabilities];
}

- (nullable SDLPresetBankCapabilities *)presetBankCapabilities {
    return [parameters sdl_objectForName:SDLNamePresetBankCapabilities ofClass:SDLPresetBankCapabilities.class];
}

- (void)setHmiZoneCapabilities:(nullable NSMutableArray<SDLHMIZoneCapabilities> *)hmiZoneCapabilities {
    [parameters sdl_setObject:hmiZoneCapabilities forName:SDLNameHMIZoneCapabilities];
}

- (nullable NSMutableArray<SDLHMIZoneCapabilities> *)hmiZoneCapabilities {
    return [parameters sdl_objectForName:SDLNameHMIZoneCapabilities];
}

- (void)setSpeechCapabilities:(nullable NSMutableArray<SDLSpeechCapabilities> *)speechCapabilities {
    [parameters sdl_setObject:speechCapabilities forName:SDLNameSpeechCapabilities];
}

- (nullable NSMutableArray<SDLSpeechCapabilities> *)speechCapabilities {
    return [parameters sdl_objectForName:SDLNameSpeechCapabilities];
}

- (void)setPrerecordedSpeech:(nullable NSMutableArray<SDLPrerecordedSpeech> *)prerecordedSpeech {
    [parameters sdl_setObject:prerecordedSpeech forName:SDLNamePrerecordedSpeech];
}

- (nullable NSMutableArray<SDLPrerecordedSpeech> *)prerecordedSpeech {
    return [parameters sdl_objectForName:SDLNamePrerecordedSpeech];
}

- (void)setVrCapabilities:(nullable NSMutableArray<SDLVRCapabilities> *)vrCapabilities {
    [parameters sdl_setObject:vrCapabilities forName:SDLNameVRCapabilities];
}

- (nullable NSMutableArray<SDLVRCapabilities> *)vrCapabilities {
    return [parameters sdl_objectForName:SDLNameVRCapabilities];
}

- (void)setAudioPassThruCapabilities:(nullable NSMutableArray<SDLAudioPassThruCapabilities *> *)audioPassThruCapabilities {
    [parameters sdl_setObject:audioPassThruCapabilities forName:SDLNameAudioPassThruCapabilities];
}

- (nullable NSMutableArray<SDLAudioPassThruCapabilities *> *)audioPassThruCapabilities {
    return [parameters sdl_objectsForName:SDLNameAudioPassThruCapabilities ofClass:SDLAudioPassThruCapabilities.class];
}

- (void)setVehicleType:(nullable SDLVehicleType *)vehicleType {
    [parameters sdl_setObject:vehicleType forName:SDLNameVehicleType];
}

- (nullable SDLVehicleType *)vehicleType {
    return [parameters sdl_objectForName:SDLNameVehicleType ofClass:SDLVehicleType.class];
}

- (void)setSupportedDiagModes:(nullable NSMutableArray<NSNumber<SDLInt> *> *)supportedDiagModes {
    [parameters sdl_setObject:supportedDiagModes forName:SDLNameSupportedDiagnosticModes];
}

- (nullable NSMutableArray<NSNumber<SDLInt> *> *)supportedDiagModes {
    return [parameters sdl_objectForName:SDLNameSupportedDiagnosticModes];
}

- (void)setHmiCapabilities:(nullable SDLHMICapabilities *)hmiCapabilities {
    [parameters sdl_setObject:hmiCapabilities forName:SDLNameHMICapabilities];
}

- (nullable SDLHMICapabilities *)hmiCapabilities {
    return [parameters sdl_objectForName:SDLNameHMICapabilities ofClass:SDLHMICapabilities.class];
}

- (void)setSdlVersion:(nullable NSString *)sdlVersion {
    [parameters sdl_setObject:sdlVersion forName:SDLNameSDLVersion];
}

- (nullable NSString *)sdlVersion {
    return [parameters sdl_objectForName:SDLNameSDLVersion];
}

- (void)setSystemSoftwareVersion:(nullable NSString *)systemSoftwareVersion {
    [parameters sdl_setObject:systemSoftwareVersion forName:SDLNameSystemSoftwareVersion];
}

- (nullable NSString *)systemSoftwareVersion {
    return [parameters sdl_objectForName:SDLNameSystemSoftwareVersion];
}

@end

NS_ASSUME_NONNULL_END
