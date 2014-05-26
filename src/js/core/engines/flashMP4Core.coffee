do (root = this, factory = (cfg, FlashCore) ->
    TYPES = cfg.engine.TYPES

    class FlashMP4Core extends FlashCore
        defaults:
            swf: '../dist/swf/muplayer_mp4.swf'
            instanceName: 'MP4Core'
            flashVer: '9.0.0'
        _supportedTypes: ['m4a']
        engineType: TYPES.FLASH_MP4

    FlashMP4Core
) ->
    if typeof exports is 'object'
        module.exports = factory()
    else if typeof define is 'function' and define.amd
        define([
            'muplayer/core/cfg'
            'muplayer/core/engines/flashCore'
        ], factory)
    else
        root._mu.FlashMP4Core = factory(
            _mu.cfg
            _mu.FlashCore
        )