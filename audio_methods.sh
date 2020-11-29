
declare method=(""
    adjustSuggestedStreamVolume
    adjustStreamVolume
    setStreamVolume
    setRemoteStreamVolume
    isStreamMute
    forceRemoteSubmixFullVolume
    isMasterMute
    setMasterMute
    getStreamVolume
    getStreamMinVolume
    getStreamMaxVolume
    getLastAudibleStreamVolume
    setMicrophoneMute
    setRingerModeExternal
    setRingerModeInternal
    getRingerModeExternal
    getRingerModeInternal
    isValidRingerMode
    setVibrateSetting
    getVibrateSetting
    shouldVibrate
    setMode
    getMode
    playSoundEffect
    playSoundEffectVolume
    loadSoundEffects
    unloadSoundEffects
    reloadAudioSettings
    avrcpSupportsAbsoluteVolume
    setSpeakerphoneOn
    isSpeakerphoneOn
    setBluetoothScoOn
    isBluetoothScoOn
    setBluetoothA2dpOn
    isBluetoothA2dpOn
    requestAudioFocus
    abandonAudioFocus
    unregisterAudioFocusClient
    getCurrentAudioFocus
    registerRemoteControlDisplay
    registerRemoteController
    unregisterRemoteControlDisplay
    remoteControlDisplayUsesBitmapSize
    remoteControlDisplayWantsPlaybackPositionSync
    startBluetoothSco
    startBluetoothScoVirtualCall
    stopBluetoothSco
    forceVolumeControlStream
    setRingtonePlayer
    getRingtonePlayer
    getUiSoundsStreamType
    setWiredDeviceConnectionState
    setBluetoothA2dpDeviceConnectionState
    startWatchingRoutes
    isCameraSoundForced
    setVolumeController
    notifyVolumeControllerVisible
    isStreamAffectedByRingerMode
    isStreamAffectedByMute
    disableSafeMediaVolume
    setHdmiSystemAudioSupported
    isHdmiSystemAudioSupported
    registerAudioPolicy
    unregisterAudioPolicyAsync
    setFocusPropertiesForPolicy
    setVolumePolicy)

adjustSuggestedStreamVolume=(int direction, int suggestedStreamType, int flags, String callingPackage, String caller)
adjustStreamVolume=(int streamType, int direction, int flags, String callingPackage)
setStreamVolume=(int streamType, int index, int flags, String callingPackage)
setRemoteStreamVolume=(int index)
isStreamMute=(int streamType)
forceRemoteSubmixFullVolume=(boolean startForcing, IBinder cb)
isMasterMute=()
setMasterMute=(boolean mute, int flags, String callingPackage, int userId)
getStreamVolume=(int streamType)
getStreamMinVolume=(int streamType)
getStreamMaxVolume=(int streamType)
getLastAudibleStreamVolume=(int streamType)
setMicrophoneMute=(boolean on, String callingPackage, int userId)
setRingerModeExternal=(int ringerMode, String caller)
setRingerModeInternal=(int ringerMode, String caller)
getRingerModeExternal=()
getRingerModeInternal=()
isValidRingerMode=(int ringerMode)
setVibrateSetting=(int vibrateType, int vibrateSetting)
getVibrateSetting=(int vibrateType)
shouldVibrate=(int vibrateType)
setMode=(int mode, IBinder cb, String callingPackage)
getMode=()
playSoundEffect=(int effectType)
playSoundEffectVolume=(int effectType, float volume)
loadSoundEffects=()
unloadSoundEffects=()
reloadAudioSettings=()
avrcpSupportsAbsoluteVolume=(String address, boolean support)
setSpeakerphoneOn=(boolean on)
isSpeakerphoneOn=()
setBluetoothScoOn=(boolean on)
isBluetoothScoOn=()
setBluetoothA2dpOn=(boolean on)
isBluetoothA2dpOn=()
requestAudioFocus=(in AudioAttributes aa, int durationHint, IBinder cb, IAudioFocusDispatcher fd, String clientId, String callingPackageName, int flags, IAudioPolicyCallback pcb)
abandonAudioFocus=(IAudioFocusDispatcher fd, String clientId, in AudioAttributes aa)
unregisterAudioFocusClient=(String clientId)
getCurrentAudioFocus=()
registerRemoteControlDisplay=(in IRemoteControlDisplay rcd, int w, int h)
registerRemoteController=(in IRemoteControlDisplay rcd, int w, int h, in ComponentName listenerComp)
unregisterRemoteControlDisplay=(in IRemoteControlDisplay rcd)
remoteControlDisplayUsesBitmapSize=(in IRemoteControlDisplay rcd, int w, int h)
remoteControlDisplayWantsPlaybackPositionSync=(in IRemoteControlDisplay rcd, boolean wantsSync)
startBluetoothSco=(IBinder cb, int targetSdkVersion)
startBluetoothScoVirtualCall=(IBinder cb)
stopBluetoothSco=(IBinder cb)
forceVolumeControlStream=(int streamType, IBinder cb)
setRingtonePlayer=(IRingtonePlayer player)
getRingtonePlayer=()
getUiSoundsStreamType=()
setWiredDeviceConnectionState=(int type, int state, String address, String name, String caller)
setBluetoothA2dpDeviceConnectionState=(in BluetoothDevice device, int state, int profile)
startWatchingRoutes=(in IAudioRoutesObserver observer)
isCameraSoundForced=()
setVolumeController=(in IVolumeController controller)
notifyVolumeControllerVisible=(in IVolumeController controller, boolean visible)
isStreamAffectedByRingerMode=(int streamType)
isStreamAffectedByMute=(int streamType)
disableSafeMediaVolume=(String callingPackage)
setHdmiSystemAudioSupported=(boolean on)
isHdmiSystemAudioSupported=()
registerAudioPolicy=(in AudioPolicyConfig policyConfig, in IAudioPolicyCallback pcb, boolean hasFocusListener)
unregisterAudioPolicyAsync=(in IAudioPolicyCallback pcb)
setFocusPropertiesForPolicy=(int duckingBehavior, in IAudioPolicyCallback pcb)
setVolumePolicy=(in VolumePolicy policy)

declare -A method_args
method_args[adjustSuggestedStreamVolume]=${adjustSuggestedStreamVolume[*]}
method_args[adjustStreamVolume]=${adjustStreamVolume[*]}
method_args[setStreamVolume]=${setStreamVolume[*]}
method_args[setRemoteStreamVolume]=${setRemoteStreamVolume[*]}
method_args[isStreamMute]=${isStreamMute[*]}
method_args[forceRemoteSubmixFullVolume]=${forceRemoteSubmixFullVolume[*]}
method_args[isMasterMute]=${isMasterMute[*]}
method_args[setMasterMute]=${setMasterMute[*]}
method_args[getStreamVolume]=${getStreamVolume[*]}
method_args[getStreamMinVolume]=${getStreamMinVolume[*]}
method_args[getStreamMaxVolume]=${getStreamMaxVolume[*]}
method_args[getLastAudibleStreamVolume]=${getLastAudibleStreamVolume[*]}
method_args[setMicrophoneMute]=${setMicrophoneMute[*]}
method_args[setRingerModeExternal]=${setRingerModeExternal[*]}
method_args[setRingerModeInternal]=${setRingerModeInternal[*]}
method_args[getRingerModeExternal]=${getRingerModeExternal[*]}
method_args[getRingerModeInternal]=${getRingerModeInternal[*]}
method_args[isValidRingerMode]=${isValidRingerMode[*]}
method_args[setVibrateSetting]=${setVibrateSetting[*]}
method_args[getVibrateSetting]=${getVibrateSetting[*]}
method_args[shouldVibrate]=${shouldVibrate[*]}
method_args[setMode]=${setMode[*]}
method_args[getMode]=${getMode[*]}
method_args[playSoundEffect]=${playSoundEffect[*]}
method_args[playSoundEffectVolume]=${playSoundEffectVolume[*]}
method_args[loadSoundEffects]=${loadSoundEffects[*]}
method_args[unloadSoundEffects]=${unloadSoundEffects[*]}
method_args[reloadAudioSettings]=${reloadAudioSettings[*]}
method_args[avrcpSupportsAbsoluteVolume]=${avrcpSupportsAbsoluteVolume[*]}
method_args[setSpeakerphoneOn]=${setSpeakerphoneOn[*]}
method_args[isSpeakerphoneOn]=${isSpeakerphoneOn[*]}
method_args[setBluetoothScoOn]=${setBluetoothScoOn[*]}
method_args[isBluetoothScoOn]=${isBluetoothScoOn[*]}
method_args[setBluetoothA2dpOn]=${setBluetoothA2dpOn[*]}
method_args[isBluetoothA2dpOn]=${isBluetoothA2dpOn[*]}
method_args[requestAudioFocus]=${requestAudioFocus[*]}
method_args[abandonAudioFocus]=${abandonAudioFocus[*]}
method_args[unregisterAudioFocusClient]=${unregisterAudioFocusClient[*]}
method_args[getCurrentAudioFocus]=${getCurrentAudioFocus[*]}
method_args[registerRemoteControlDisplay]=${registerRemoteControlDisplay[*]}
method_args[registerRemoteController]=${registerRemoteController[*]}
method_args[unregisterRemoteControlDisplay]=${unregisterRemoteControlDisplay[*]}
method_args[remoteControlDisplayUsesBitmapSize]=${remoteControlDisplayUsesBitmapSize[*]}
method_args[remoteControlDisplayWantsPlaybackPositionSync]=${remoteControlDisplayWantsPlaybackPositionSync[*]}
method_args[startBluetoothSco]=${startBluetoothSco[*]}
method_args[startBluetoothScoVirtualCall]=${startBluetoothScoVirtualCall[*]}
method_args[stopBluetoothSco]=${stopBluetoothSco[*]}
method_args[forceVolumeControlStream]=${forceVolumeControlStream[*]}
method_args[setRingtonePlayer]=${setRingtonePlayer[*]}
method_args[getRingtonePlayer]=${getRingtonePlayer[*]}
method_args[getUiSoundsStreamType]=${getUiSoundsStreamType[*]}
method_args[setWiredDeviceConnectionState]=${setWiredDeviceConnectionState[*]}
method_args[setBluetoothA2dpDeviceConnectionState]=${setBluetoothA2dpDeviceConnectionState[*]}
method_args[startWatchingRoutes]=${startWatchingRoutes[*]}
method_args[isCameraSoundForced]=${isCameraSoundForced[*]}
method_args[setVolumeController]=${setVolumeController[*]}
method_args[notifyVolumeControllerVisible]=${notifyVolumeControllerVisible[*]}
method_args[isStreamAffectedByRingerMode]=${isStreamAffectedByRingerMode[*]}
method_args[isStreamAffectedByMute]=${isStreamAffectedByMute[*]}
method_args[disableSafeMediaVolume]=${disableSafeMediaVolume[*]}
method_args[setHdmiSystemAudioSupported]=${setHdmiSystemAudioSupported[*]}
method_args[isHdmiSystemAudioSupported]=${isHdmiSystemAudioSupported[*]}
method_args[registerAudioPolicy]=${registerAudioPolicy[*]}
method_args[unregisterAudioPolicyAsync]=${unregisterAudioPolicyAsync[*]}
method_args[setFocusPropertiesForPolicy]=${setFocusPropertiesForPolicy[*]}
method_args[setVolumePolicy]=${setVolumePolicy[*]}

declare AUDIO_STREAM=(VOICE_CALL
    SYSTEM
    RING
    MUSIC
    ALARM
    NOTIFICATION
    BLUETOOTH
    ENFORCED_AUDIBLE
    DTMF
    TTS
    ACCESSIBILITY)
