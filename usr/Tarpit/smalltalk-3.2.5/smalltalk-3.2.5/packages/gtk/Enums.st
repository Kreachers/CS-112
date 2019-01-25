"Automatically generated, do not edit!"
!GLib class methodsFor: 'GDateDMY'!

gDateDay ^0!
gDateMonth ^1!
gDateYear ^2! !

!GLib class methodsFor: 'GDateWeekday'!

gDateSaturday ^6!
gDateThursday ^4!
gDateBadWeekday ^0!
gDateMonday ^1!
gDateWednesday ^3!
gDateFriday ^5!
gDateSunday ^7!
gDateTuesday ^2! !

!GLib class methodsFor: 'GDateMonth'!

gDateJanuary ^1!
gDateMarch ^3!
gDateOctober ^10!
gDateAugust ^8!
gDateJuly ^7!
gDateBadMonth ^0!
gDateNovember ^11!
gDateSeptember ^9!
gDateApril ^4!
gDateFebruary ^2!
gDateDecember ^12!
gDateMay ^5!
gDateJune ^6! !

!GLib class methodsFor: 'GIOCondition'!

gIoPri ^2!
gIoNval ^32!
gIoErr ^8!
gIoIn ^1!
gIoHup ^16!
gIoOut ^4! !

!GLib class methodsFor: 'GOptionFlags'!

gOptionFlagHidden ^1!
gOptionFlagInMain ^2!
gOptionFlagFilename ^16!
gOptionFlagReverse ^4!
gOptionFlagOptionalArg ^32!
gOptionFlagNoArg ^8!
gOptionFlagNoalias ^64!
gOptionFlagNone ^0! !

!GLib class methodsFor: 'GOptionArg'!

gOptionArgNone ^0!
gOptionArgInt64 ^8!
gOptionArgFilenameArray ^6!
gOptionArgCallback ^3!
gOptionArgInt ^2!
gOptionArgStringArray ^5!
gOptionArgDouble ^7!
gOptionArgString ^1!
gOptionArgFilename ^4! !

!GLib class methodsFor: 'GOptionError'!

gOptionErrorFailed ^2!
gOptionErrorBadValue ^1!
gOptionErrorUnknownOption ^0! !

!GLib class methodsFor: 'GTypeDebugFlags'!

gTypeDebugObjects ^1!
gTypeDebugSignals ^2!
gTypeDebugMask ^3!
gTypeDebugNone ^0! !

!GLib class methodsFor: 'GTypeFundamentalFlags'!

gTypeFlagDerivable ^4!
gTypeFlagClassed ^1!
gTypeFlagInstantiatable ^2!
gTypeFlagDeepDerivable ^8! !

!GLib class methodsFor: 'GTypeFlags'!

gTypeFlagAbstract ^16!
gTypeFlagValueAbstract ^32! !

!GLib class methodsFor: 'GParamFlags'!

gParamStaticNick ^64!
gParamExplicitNotify ^1073741824!
gParamDeprecated ^-2147483648!
gParamStaticBlurb ^128!
gParamStaticName ^32!
gParamLaxValidation ^16!
gParamWritable ^2!
gParamConstructOnly ^8!
gParamConstruct ^4!
gParamReadwrite ^3!
gParamReadable ^1! !

!GLib class methodsFor: 'GSignalFlags'!

gSignalAction ^32!
gSignalRunLast ^2!
gSignalDeprecated ^256!
gSignalNoRecurse ^8!
gSignalMustCollect ^128!
gSignalDetailed ^16!
gSignalRunFirst ^1!
gSignalNoHooks ^64!
gSignalRunCleanup ^4! !

!GLib class methodsFor: 'GConnectFlags'!

gConnectAfter ^1!
gConnectSwapped ^2! !

!GLib class methodsFor: 'GSignalMatchType'!

gSignalMatchFunc ^8!
gSignalMatchId ^1!
gSignalMatchClosure ^4!
gSignalMatchUnblocked ^32!
gSignalMatchData ^16!
gSignalMatchDetail ^2! !

!GLib class methodsFor: 'GBindingFlags'!

gBindingInvertBoolean ^4!
gBindingBidirectional ^1!
gBindingSyncCreate ^2!
gBindingDefault ^0! !

!GLib class methodsFor: 'GAppInfoCreateFlags'!

gAppInfoCreateSupportsUris ^2!
gAppInfoCreateNone ^0!
gAppInfoCreateNeedsTerminal ^1!
gAppInfoCreateSupportsStartupNotification ^4! !

!GLib class methodsFor: 'GConverterFlags'!

gConverterFlush ^2!
gConverterInputAtEnd ^1!
gConverterNoFlags ^0! !

!GLib class methodsFor: 'GConverterResult'!

gConverterError ^0!
gConverterFlushed ^3!
gConverterFinished ^2!
gConverterConverted ^1! !

!GLib class methodsFor: 'GDataStreamByteOrder'!

gDataStreamByteOrderHostEndian ^2!
gDataStreamByteOrderLittleEndian ^1!
gDataStreamByteOrderBigEndian ^0! !

!GLib class methodsFor: 'GDataStreamNewlineType'!

gDataStreamNewlineTypeCrLf ^2!
gDataStreamNewlineTypeLf ^0!
gDataStreamNewlineTypeAny ^3!
gDataStreamNewlineTypeCr ^1! !

!GLib class methodsFor: 'GFileAttributeType'!

gFileAttributeTypeUint32 ^4!
gFileAttributeTypeByteString ^2!
gFileAttributeTypeInt32 ^5!
gFileAttributeTypeObject ^8!
gFileAttributeTypeUint64 ^6!
gFileAttributeTypeString ^1!
gFileAttributeTypeStringv ^9!
gFileAttributeTypeInt64 ^7!
gFileAttributeTypeBoolean ^3!
gFileAttributeTypeInvalid ^0! !

!GLib class methodsFor: 'GFileAttributeInfoFlags'!

gFileAttributeInfoCopyWhenMoved ^2!
gFileAttributeInfoNone ^0!
gFileAttributeInfoCopyWithFile ^1! !

!GLib class methodsFor: 'GFileAttributeStatus'!

gFileAttributeStatusSet ^1!
gFileAttributeStatusErrorSetting ^2!
gFileAttributeStatusUnset ^0! !

!GLib class methodsFor: 'GFileQueryInfoFlags'!

gFileQueryInfoNofollowSymlinks ^1!
gFileQueryInfoNone ^0! !

!GLib class methodsFor: 'GFileCreateFlags'!

gFileCreateNone ^0!
gFileCreatePrivate ^1!
gFileCreateReplaceDestination ^2! !

!GLib class methodsFor: 'GFileMeasureFlags'!

gFileMeasureApparentSize ^4!
gFileMeasureNoXdev ^8!
gFileMeasureReportAnyError ^2!
gFileMeasureNone ^0! !

!GLib class methodsFor: 'GMountMountFlags'!

gMountMountNone ^0! !

!GLib class methodsFor: 'GMountUnmountFlags'!

gMountUnmountForce ^1!
gMountUnmountNone ^0! !

!GLib class methodsFor: 'GDriveStartFlags'!

gDriveStartNone ^0! !

!GLib class methodsFor: 'GDriveStartStopType'!

gDriveStartStopTypeShutdown ^1!
gDriveStartStopTypePassword ^4!
gDriveStartStopTypeMultidisk ^3!
gDriveStartStopTypeNetwork ^2!
gDriveStartStopTypeUnknown ^0! !

!GLib class methodsFor: 'GFileCopyFlags'!

gFileCopyTargetDefaultPerms ^32!
gFileCopyNofollowSymlinks ^4!
gFileCopyOverwrite ^1!
gFileCopyNoFallbackForMove ^16!
gFileCopyNone ^0!
gFileCopyBackup ^2!
gFileCopyAllMetadata ^8! !

!GLib class methodsFor: 'GFileMonitorFlags'!

gFileMonitorWatchHardLinks ^4!
gFileMonitorSendMoved ^2!
gFileMonitorWatchMounts ^1!
gFileMonitorNone ^0! !

!GLib class methodsFor: 'GFileType'!

gFileTypeDirectory ^2!
gFileTypeUnknown ^0!
gFileTypeMountable ^6!
gFileTypeRegular ^1!
gFileTypeShortcut ^5!
gFileTypeSymbolicLink ^3!
gFileTypeSpecial ^4! !

!GLib class methodsFor: 'GFilesystemPreviewType'!

gFilesystemPreviewTypeIfLocal ^1!
gFilesystemPreviewTypeIfAlways ^0!
gFilesystemPreviewTypeNever ^2! !

!GLib class methodsFor: 'GFileMonitorEvent'!

gFileMonitorEventPreUnmount ^5!
gFileMonitorEventChangesDoneHint ^1!
gFileMonitorEventCreated ^3!
gFileMonitorEventChanged ^0!
gFileMonitorEventAttributeChanged ^4!
gFileMonitorEventDeleted ^2!
gFileMonitorEventUnmounted ^6!
gFileMonitorEventMoved ^7! !

!GLib class methodsFor: 'GIOErrorEnum'!

gIoErrorNotFound ^1!
gIoErrorWouldBlock ^27!
gIoErrorNotInitialized ^32!
gIoErrorDbusError ^36!
gIoErrorProxyNotAllowed ^43!
gIoErrorWouldMerge ^29!
gIoErrorPermissionDenied ^14!
gIoErrorInvalidData ^35!
gIoErrorProxyNeedAuth ^42!
gIoErrorCantCreateBackup ^22!
gIoErrorNotEmpty ^5!
gIoErrorBrokenPipe ^44!
gIoErrorBusy ^26!
gIoErrorHostNotFound ^28!
gIoErrorConnectionRefused ^39!
gIoErrorTimedOut ^24!
gIoErrorExists ^2!
gIoErrorPartialInput ^34!
gIoErrorPending ^20!
gIoErrorFilenameTooLong ^9!
gIoErrorReadOnly ^21!
gIoErrorProxyFailed ^40!
gIoErrorClosed ^18!
gIoErrorWrongEtag ^23!
gIoErrorProxyAuthFailed ^41!
gIoErrorNotMounted ^16!
gIoErrorNotDirectory ^4!
gIoErrorHostUnreachable ^37!
gIoErrorWouldRecurse ^25!
gIoErrorNotMountableFile ^8!
gIoErrorIsDirectory ^3!
gIoErrorInvalidArgument ^13!
gIoErrorAddressInUse ^33!
gIoErrorFailed ^0!
gIoErrorTooManyLinks ^11!
gIoErrorTooManyOpenFiles ^31!
gIoErrorAlreadyMounted ^17!
gIoErrorNoSpace ^12!
gIoErrorNotRegularFile ^6!
gIoErrorFailedHandled ^30!
gIoErrorNetworkUnreachable ^38!
gIoErrorCancelled ^19!
gIoErrorInvalidFilename ^10!
gIoErrorNotSymbolicLink ^7!
gIoErrorNotSupported ^15! !

!GLib class methodsFor: 'GAskPasswordFlags'!

gAskPasswordNeedDomain ^4!
gAskPasswordAnonymousSupported ^16!
gAskPasswordSavingSupported ^8!
gAskPasswordNeedPassword ^1!
gAskPasswordNeedUsername ^2! !

!GLib class methodsFor: 'GPasswordSave'!

gPasswordSavePermanently ^2!
gPasswordSaveForSession ^1!
gPasswordSaveNever ^0! !

!GLib class methodsFor: 'GMountOperationResult'!

gMountOperationHandled ^0!
gMountOperationAborted ^1!
gMountOperationUnhandled ^2! !

!GLib class methodsFor: 'GOutputStreamSpliceFlags'!

gOutputStreamSpliceCloseTarget ^2!
gOutputStreamSpliceCloseSource ^1!
gOutputStreamSpliceNone ^0! !

!GLib class methodsFor: 'GIOStreamSpliceFlags'!

gIoStreamSpliceWaitForBoth ^4!
gIoStreamSpliceCloseStream1 ^1!
gIoStreamSpliceNone ^0!
gIoStreamSpliceCloseStream2 ^2! !

!GLib class methodsFor: 'GEmblemOrigin'!

gEmblemOriginDevice ^1!
gEmblemOriginLivemetadata ^2!
gEmblemOriginTag ^3!
gEmblemOriginUnknown ^0! !

!GLib class methodsFor: 'GResolverError'!

gResolverErrorNotFound ^0!
gResolverErrorTemporaryFailure ^1!
gResolverErrorInternal ^2! !

!GLib class methodsFor: 'GResolverRecordType'!

gResolverRecordMx ^2!
gResolverRecordSrv ^1!
gResolverRecordSoa ^4!
gResolverRecordNs ^5!
gResolverRecordTxt ^3! !

!GLib class methodsFor: 'GResourceError'!

gResourceErrorNotFound ^0!
gResourceErrorInternal ^1! !

!GLib class methodsFor: 'GResourceFlags'!

gResourceFlagsCompressed ^1!
gResourceFlagsNone ^0! !

!GLib class methodsFor: 'GResourceLookupFlags'!

gResourceLookupFlagsNone ^0! !

!GLib class methodsFor: 'GSocketFamily'!

gSocketFamilyIpv4 ^2!
gSocketFamilyIpv6 ^10!
gSocketFamilyUnix ^1!
gSocketFamilyInvalid ^0! !

!GLib class methodsFor: 'GSocketType'!

gSocketTypeDatagram ^2!
gSocketTypeStream ^1!
gSocketTypeSeqpacket ^3!
gSocketTypeInvalid ^0! !

!GLib class methodsFor: 'GSocketMsgFlags'!

gSocketMsgNone ^0!
gSocketMsgOob ^1!
gSocketMsgDontroute ^4!
gSocketMsgPeek ^2! !

!GLib class methodsFor: 'GSocketProtocol'!

gSocketProtocolTcp ^6!
gSocketProtocolDefault ^0!
gSocketProtocolSctp ^132!
gSocketProtocolUnknown ^-1!
gSocketProtocolUdp ^17! !

!GLib class methodsFor: 'GZlibCompressorFormat'!

gZlibCompressorFormatZlib ^0!
gZlibCompressorFormatGzip ^1!
gZlibCompressorFormatRaw ^2! !

!GLib class methodsFor: 'GUnixSocketAddressType'!

gUnixSocketAddressAbstractPadded ^4!
gUnixSocketAddressPath ^2!
gUnixSocketAddressAnonymous ^1!
gUnixSocketAddressInvalid ^0!
gUnixSocketAddressAbstract ^3! !

!GLib class methodsFor: 'GBusType'!

gBusTypeStarter ^-1!
gBusTypeSystem ^1!
gBusTypeNone ^0!
gBusTypeSession ^2! !

!GLib class methodsFor: 'GBusNameOwnerFlags'!

gBusNameOwnerFlagsAllowReplacement ^1!
gBusNameOwnerFlagsNone ^0!
gBusNameOwnerFlagsReplace ^2! !

!GLib class methodsFor: 'GBusNameWatcherFlags'!

gBusNameWatcherFlagsAutoStart ^1!
gBusNameWatcherFlagsNone ^0! !

!GLib class methodsFor: 'GDBusProxyFlags'!

gDbusProxyFlagsDoNotAutoStart ^4!
gDbusProxyFlagsDoNotConnectSignals ^2!
gDbusProxyFlagsDoNotLoadProperties ^1!
gDbusProxyFlagsDoNotAutoStartAtConstruction ^16!
gDbusProxyFlagsGetInvalidatedProperties ^8!
gDbusProxyFlagsNone ^0! !

!GLib class methodsFor: 'GDBusError'!

gDbusErrorNotSupported ^7!
gDbusErrorUnixProcessIdUnknown ^35!
gDbusErrorNameHasNoOwner ^3!
gDbusErrorInvalidArgs ^16!
gDbusErrorNoNetwork ^13!
gDbusErrorFileExists ^18!
gDbusErrorNoReply ^4!
gDbusErrorSpawnSetupFailed ^28!
gDbusErrorInvalidSignature ^36!
gDbusErrorSpawnChildExited ^25!
gDbusErrorMatchRuleInvalid ^22!
gDbusErrorAuthFailed ^10!
gDbusErrorSelinuxSecurityContextUnknown ^38!
gDbusErrorUnknownObject ^41!
gDbusErrorNoMemory ^1!
gDbusErrorSpawnChildSignaled ^26!
gDbusErrorTimeout ^12!
gDbusErrorInvalidFileContent ^37!
gDbusErrorUnknownInterface ^42!
gDbusErrorFileNotFound ^17!
gDbusErrorServiceUnknown ^2!
gDbusErrorSpawnPermissionsInvalid ^32!
gDbusErrorLimitsExceeded ^8!
gDbusErrorAddressInUse ^14!
gDbusErrorTimedOut ^20!
gDbusErrorSpawnFileInvalid ^33!
gDbusErrorBadAddress ^6!
gDbusErrorPropertyReadOnly ^44!
gDbusErrorSpawnExecFailed ^23!
gDbusErrorUnknownMethod ^19!
gDbusErrorDisconnected ^15!
gDbusErrorSpawnFailed ^27!
gDbusErrorSpawnServiceInvalid ^30!
gDbusErrorMatchRuleNotFound ^21!
gDbusErrorSpawnConfigInvalid ^29!
gDbusErrorFailed ^0!
gDbusErrorObjectPathInUse ^40!
gDbusErrorSpawnServiceNotFound ^31!
gDbusErrorIoError ^5!
gDbusErrorSpawnNoMemory ^34!
gDbusErrorAdtAuditDataUnknown ^39!
gDbusErrorSpawnForkFailed ^24!
gDbusErrorNoServer ^11!
gDbusErrorAccessDenied ^9!
gDbusErrorUnknownProperty ^43! !

!GLib class methodsFor: 'GDBusConnectionFlags'!

gDbusConnectionFlagsDelayMessageProcessing ^16!
gDbusConnectionFlagsAuthenticationClient ^1!
gDbusConnectionFlagsMessageBusConnection ^8!
gDbusConnectionFlagsNone ^0!
gDbusConnectionFlagsAuthenticationAllowAnonymous ^4!
gDbusConnectionFlagsAuthenticationServer ^2! !

!GLib class methodsFor: 'GDBusCapabilityFlags'!

gDbusCapabilityFlagsNone ^0!
gDbusCapabilityFlagsUnixFdPassing ^1! !

!GLib class methodsFor: 'GDBusCallFlags'!

gDbusCallFlagsNoAutoStart ^1!
gDbusCallFlagsNone ^0! !

!GLib class methodsFor: 'GDBusMessageType'!

gDbusMessageTypeMethodReturn ^2!
gDbusMessageTypeMethodCall ^1!
gDbusMessageTypeError ^3!
gDbusMessageTypeInvalid ^0!
gDbusMessageTypeSignal ^4! !

!GLib class methodsFor: 'GDBusMessageFlags'!

gDbusMessageFlagsNoReplyExpected ^1!
gDbusMessageFlagsNoAutoStart ^2!
gDbusMessageFlagsNone ^0! !

!GLib class methodsFor: 'GDBusMessageHeaderField'!

gDbusMessageHeaderFieldInvalid ^0!
gDbusMessageHeaderFieldDestination ^6!
gDbusMessageHeaderFieldInterface ^2!
gDbusMessageHeaderFieldPath ^1!
gDbusMessageHeaderFieldNumUnixFds ^9!
gDbusMessageHeaderFieldReplySerial ^5!
gDbusMessageHeaderFieldMember ^3!
gDbusMessageHeaderFieldSignature ^8!
gDbusMessageHeaderFieldErrorName ^4!
gDbusMessageHeaderFieldSender ^7! !

!GLib class methodsFor: 'GDBusPropertyInfoFlags'!

gDbusPropertyInfoFlagsReadable ^1!
gDbusPropertyInfoFlagsWritable ^2!
gDbusPropertyInfoFlagsNone ^0! !

!GLib class methodsFor: 'GDBusSubtreeFlags'!

gDbusSubtreeFlagsNone ^0!
gDbusSubtreeFlagsDispatchToUnenumeratedNodes ^1! !

!GLib class methodsFor: 'GDBusServerFlags'!

gDbusServerFlagsAuthenticationAllowAnonymous ^2!
gDbusServerFlagsRunInThread ^1!
gDbusServerFlagsNone ^0! !

!GLib class methodsFor: 'GDBusSignalFlags'!

gDbusSignalFlagsMatchArg0Path ^4!
gDbusSignalFlagsNoMatchRule ^1!
gDbusSignalFlagsMatchArg0Namespace ^2!
gDbusSignalFlagsNone ^0! !

!GLib class methodsFor: 'GDBusSendMessageFlags'!

gDbusSendMessageFlagsNone ^0!
gDbusSendMessageFlagsPreserveSerial ^1! !

!GLib class methodsFor: 'GCredentialsType'!

gCredentialsTypeSolarisUcred ^4!
gCredentialsTypeFreebsdCmsgcred ^2!
gCredentialsTypeInvalid ^0!
gCredentialsTypeLinuxUcred ^1!
gCredentialsTypeNetbsdUnpcbid ^5!
gCredentialsTypeOpenbsdSockpeercred ^3! !

!GLib class methodsFor: 'GDBusMessageByteOrder'!

gDbusMessageByteOrderLittleEndian ^108!
gDbusMessageByteOrderBigEndian ^66! !

!GLib class methodsFor: 'GApplicationFlags'!

gApplicationIsLauncher ^2!
gApplicationIsService ^1!
gApplicationNonUnique ^32!
gApplicationFlagsNone ^0!
gApplicationHandlesCommandLine ^8!
gApplicationSendEnvironment ^16!
gApplicationHandlesOpen ^4! !

!GLib class methodsFor: 'GTlsError'!

gTlsErrorMisc ^1!
gTlsErrorHandshake ^4!
gTlsErrorNotTls ^3!
gTlsErrorCertificateRequired ^5!
gTlsErrorEof ^6!
gTlsErrorUnavailable ^0!
gTlsErrorBadCertificate ^2! !

!GLib class methodsFor: 'GTlsCertificateFlags'!

gTlsCertificateGenericError ^64!
gTlsCertificateValidateAll ^127!
gTlsCertificateBadIdentity ^2!
gTlsCertificateRevoked ^16!
gTlsCertificateUnknownCa ^1!
gTlsCertificateInsecure ^32!
gTlsCertificateExpired ^8!
gTlsCertificateNotActivated ^4! !

!GLib class methodsFor: 'GTlsAuthenticationMode'!

gTlsAuthenticationRequested ^1!
gTlsAuthenticationNone ^0!
gTlsAuthenticationRequired ^2! !

!GLib class methodsFor: 'GTlsRehandshakeMode'!

gTlsRehandshakeSafely ^1!
gTlsRehandshakeUnsafely ^2!
gTlsRehandshakeNever ^0! !

!GLib class methodsFor: 'GTlsPasswordFlags'!

gTlsPasswordNone ^0!
gTlsPasswordRetry ^2!
gTlsPasswordManyTries ^4!
gTlsPasswordFinalTry ^8! !

!GLib class methodsFor: 'GTlsInteractionResult'!

gTlsInteractionFailed ^2!
gTlsInteractionUnhandled ^0!
gTlsInteractionHandled ^1! !

!GLib class methodsFor: 'GDBusInterfaceSkeletonFlags'!

gDbusInterfaceSkeletonFlagsHandleMethodInvocationsInThread ^1!
gDbusInterfaceSkeletonFlagsNone ^0! !

!GLib class methodsFor: 'GDBusObjectManagerClientFlags'!

gDbusObjectManagerClientFlagsNone ^0!
gDbusObjectManagerClientFlagsDoNotAutoStart ^1! !

!GLib class methodsFor: 'GTlsDatabaseVerifyFlags'!

gTlsDatabaseVerifyNone ^0! !

!GLib class methodsFor: 'GTlsDatabaseLookupFlags'!

gTlsDatabaseLookupKeypair ^1!
gTlsDatabaseLookupNone ^0! !

!GLib class methodsFor: 'GTlsCertificateRequestFlags'!

gTlsCertificateRequestNone ^0! !

!GLib class methodsFor: 'GIOModuleScopeFlags'!

gIoModuleScopeBlockDuplicates ^1!
gIoModuleScopeNone ^0! !

!GLib class methodsFor: 'GSocketClientEvent'!

gSocketClientConnected ^3!
gSocketClientComplete ^8!
gSocketClientProxyNegotiating ^4!
gSocketClientResolving ^0!
gSocketClientTlsHandshaked ^7!
gSocketClientResolved ^1!
gSocketClientTlsHandshaking ^6!
gSocketClientProxyNegotiated ^5!
gSocketClientConnecting ^2! !

!GLib class methodsFor: 'GTestDBusFlags'!

gTestDbusNone ^0! !

!GLib class methodsFor: 'GSubprocessFlags'!

gSubprocessFlagsStdinInherit ^2!
gSubprocessFlagsStderrSilence ^32!
gSubprocessFlagsNone ^0!
gSubprocessFlagsStderrMerge ^64!
gSubprocessFlagsStdinPipe ^1!
gSubprocessFlagsInheritFds ^128!
gSubprocessFlagsStdoutSilence ^8!
gSubprocessFlagsStdoutPipe ^4!
gSubprocessFlagsStderrPipe ^16! !

!GLib class methodsFor: 'GNotificationPriority'!

gNotificationPriorityUrgent ^3!
gNotificationPriorityLow ^1!
gNotificationPriorityHigh ^2!
gNotificationPriorityNormal ^0! !

!GLib class methodsFor: 'GModuleFlags'!

gModuleBindLocal ^2!
gModuleBindMask ^3!
gModuleBindLazy ^1! !

!GLib class methodsFor: 'GSettingsBindFlags'!

gSettingsBindNoSensitivity ^4!
gSettingsBindGet ^1!
gSettingsBindInvertBoolean ^16!
gSettingsBindDefault ^0!
gSettingsBindGetNoChanges ^8!
gSettingsBindSet ^2! !

!Pango class methodsFor: 'PangoCoverageLevel'!

pangoCoverageNone ^0!
pangoCoverageFallback ^1!
pangoCoverageExact ^3!
pangoCoverageApproximate ^2! !

!Pango class methodsFor: 'PangoScript'!

pangoScriptThaana ^37!
pangoScriptKayahLi ^67!
pangoScriptNko ^66!
pangoScriptYi ^41!
pangoScriptDevanagari ^10!
pangoScriptUgaritic ^53!
pangoScriptTagbanwa ^45!
pangoScriptTibetan ^39!
pangoScriptTamil ^35!
pangoScriptSundanese ^70!
pangoScriptRejang ^69!
pangoScriptGurmukhi ^16!
pangoScriptMiao ^84!
pangoScriptSylotiNagri ^58!
pangoScriptKhmer ^23!
pangoScriptCham ^72!
pangoScriptKatakana ^22!
pangoScriptBuginese ^55!
pangoScriptTelugu ^36!
pangoScriptMandaic ^80!
pangoScriptBatak ^78!
pangoScriptBraille ^46!
pangoScriptMeroiticHieroglyphs ^83!
pangoScriptSyriac ^34!
pangoScriptMeroiticCursive ^82!
pangoScriptCyrillic ^8!
pangoScriptBrahmi ^79!
pangoScriptCoptic ^7!
pangoScriptGothic ^13!
pangoScriptShavian ^50!
pangoScriptHangul ^18!
pangoScriptBuhid ^44!
pangoScriptMalayalam ^26!
pangoScriptHebrew ^19!
pangoScriptLao ^24!
pangoScriptSinhala ^33!
pangoScriptTakri ^87!
pangoScriptKannada ^21!
pangoScriptSharada ^85!
pangoScriptCommon ^0!
pangoScriptChakma ^81!
pangoScriptInvalidCode ^-1!
pangoScriptHan ^17!
pangoScriptBengali ^4!
pangoScriptArmenian ^3!
pangoScriptDeseret ^9!
pangoScriptOgham ^29!
pangoScriptRunic ^32!
pangoScriptVai ^74!
pangoScriptLimbu ^48!
pangoScriptLydian ^77!
pangoScriptGreek ^14!
pangoScriptCherokee ^6!
pangoScriptCanadianAboriginal ^40!
pangoScriptEthiopic ^11!
pangoScriptGlagolitic ^56!
pangoScriptTagalog ^42!
pangoScriptKharoshthi ^60!
pangoScriptOldPersian ^59!
pangoScriptLinearB ^51!
pangoScriptLycian ^76!
pangoScriptGeorgian ^12!
pangoScriptHiragana ^20!
pangoScriptOlChiki ^73!
pangoScriptNewTaiLue ^54!
pangoScriptMyanmar ^28!
pangoScriptLatin ^25!
pangoScriptBopomofo ^5!
pangoScriptGujarati ^15!
pangoScriptCarian ^75!
pangoScriptLepcha ^68!
pangoScriptTaiLe ^52!
pangoScriptOsmanya ^49!
pangoScriptHanunoo ^43!
pangoScriptPhagsPa ^65!
pangoScriptOriya ^31!
pangoScriptOldItalic ^30!
pangoScriptInherited ^1!
pangoScriptSaurashtra ^71!
pangoScriptPhoenician ^64!
pangoScriptCypriot ^47!
pangoScriptMongolian ^27!
pangoScriptBalinese ^62!
pangoScriptCuneiform ^63!
pangoScriptTifinagh ^57!
pangoScriptArabic ^2!
pangoScriptSoraSompeng ^86!
pangoScriptUnknown ^61!
pangoScriptThai ^38! !

!Pango class methodsFor: 'PangoGravity'!

pangoGravityEast ^1!
pangoGravitySouth ^0!
pangoGravityWest ^3!
pangoGravityAuto ^4!
pangoGravityNorth ^2! !

!Pango class methodsFor: 'PangoGravityHint'!

pangoGravityHintNatural ^0!
pangoGravityHintLine ^2!
pangoGravityHintStrong ^1! !

!Pango class methodsFor: 'PangoBidiType'!

pangoBidiTypeAn ^11!
pangoBidiTypeL ^0!
pangoBidiTypeOn ^18!
pangoBidiTypeWs ^17!
pangoBidiTypeBn ^14!
pangoBidiTypeLre ^1!
pangoBidiTypeB ^15!
pangoBidiTypeEn ^8!
pangoBidiTypeR ^3!
pangoBidiTypeS ^16!
pangoBidiTypeNsm ^13!
pangoBidiTypeCs ^12!
pangoBidiTypePdf ^7!
pangoBidiTypeEs ^9!
pangoBidiTypeRlo ^6!
pangoBidiTypeEt ^10!
pangoBidiTypeAl ^4!
pangoBidiTypeLro ^2!
pangoBidiTypeRle ^5! !

!Pango class methodsFor: 'PangoDirection'!

pangoDirectionWeakRtl ^5!
pangoDirectionWeakLtr ^4!
pangoDirectionNeutral ^6!
pangoDirectionTtbRtl ^3!
pangoDirectionRtl ^1!
pangoDirectionTtbLtr ^2!
pangoDirectionLtr ^0! !

!Pango class methodsFor: 'PangoStyle'!

pangoStyleItalic ^2!
pangoStyleOblique ^1!
pangoStyleNormal ^0! !

!Pango class methodsFor: 'PangoVariant'!

pangoVariantSmallCaps ^1!
pangoVariantNormal ^0! !

!Pango class methodsFor: 'PangoWeight'!

pangoWeightNormal ^400!
pangoWeightUltralight ^200!
pangoWeightUltraheavy ^1000!
pangoWeightSemilight ^350!
pangoWeightLight ^300!
pangoWeightThin ^100!
pangoWeightHeavy ^900!
pangoWeightBook ^380!
pangoWeightSemibold ^600!
pangoWeightUltrabold ^800!
pangoWeightMedium ^500!
pangoWeightBold ^700! !

!Pango class methodsFor: 'PangoStretch'!

pangoStretchNormal ^4!
pangoStretchUltraExpanded ^8!
pangoStretchExpanded ^6!
pangoStretchSemiExpanded ^5!
pangoStretchUltraCondensed ^0!
pangoStretchExtraCondensed ^1!
pangoStretchExtraExpanded ^7!
pangoStretchSemiCondensed ^3!
pangoStretchCondensed ^2! !

!Pango class methodsFor: 'PangoFontMask'!

pangoFontMaskSize ^32!
pangoFontMaskGravity ^64!
pangoFontMaskWeight ^8!
pangoFontMaskVariant ^4!
pangoFontMaskFamily ^1!
pangoFontMaskStretch ^16!
pangoFontMaskStyle ^2! !

!Pango class methodsFor: 'PangoAttrType'!

pangoAttrLetterSpacing ^17!
pangoAttrFallback ^16!
pangoAttrShape ^14!
pangoAttrAbsoluteSize ^20!
pangoAttrStrikethroughColor ^19!
pangoAttrVariant ^5!
pangoAttrWeight ^4!
pangoAttrGravityHint ^22!
pangoAttrStrikethrough ^12!
pangoAttrForeground ^9!
pangoAttrLanguage ^1!
pangoAttrRise ^13!
pangoAttrUnderline ^11!
pangoAttrInvalid ^0!
pangoAttrFontDesc ^8!
pangoAttrFamily ^2!
pangoAttrStyle ^3!
pangoAttrScale ^15!
pangoAttrUnderlineColor ^18!
pangoAttrGravity ^21!
pangoAttrBackground ^10!
pangoAttrSize ^7!
pangoAttrStretch ^6! !

!Pango class methodsFor: 'PangoUnderline'!

pangoUnderlineLow ^3!
pangoUnderlineDouble ^2!
pangoUnderlineSingle ^1!
pangoUnderlineError ^4!
pangoUnderlineNone ^0! !

!Pango class methodsFor: 'PangoTabAlign'!

pangoTabLeft ^0! !

!Pango class methodsFor: 'PangoAlignment'!

pangoAlignCenter ^1!
pangoAlignRight ^2!
pangoAlignLeft ^0! !

!Pango class methodsFor: 'PangoWrapMode'!

pangoWrapWord ^0!
pangoWrapWordChar ^2!
pangoWrapChar ^1! !

!Pango class methodsFor: 'PangoEllipsizeMode'!

pangoEllipsizeEnd ^3!
pangoEllipsizeMiddle ^2!
pangoEllipsizeStart ^1!
pangoEllipsizeNone ^0! !

!Pango class methodsFor: 'PangoRenderPart'!

pangoRenderPartBackground ^1!
pangoRenderPartUnderline ^2!
pangoRenderPartForeground ^0!
pangoRenderPartStrikethrough ^3! !

!Gdk class methodsFor: 'GdkByteOrder'!

gdkMsbFirst ^1!
gdkLsbFirst ^0! !

!Gdk class methodsFor: 'GdkModifierType'!

gdkMod3Mask ^32!
gdkShiftMask ^1!
gdkHyperMask ^134217728!
gdkButton5Mask ^4096!
gdkMod2Mask ^16!
gdkButton4Mask ^2048!
gdkMod1Mask ^8!
gdkModifierMask ^1543512063!
gdkReleaseMask ^1073741824!
gdkButton3Mask ^1024!
gdkSuperMask ^67108864!
gdkButton2Mask ^512!
gdkControlMask ^4!
gdkMod5Mask ^128!
gdkButton1Mask ^256!
gdkMod4Mask ^64!
gdkLockMask ^2!
gdkMetaMask ^268435456! !

!Gdk class methodsFor: 'GdkInputCondition'!

gdkInputRead ^1!
gdkInputException ^4!
gdkInputWrite ^2! !

!Gdk class methodsFor: 'GdkStatus'!

gdkErrorParam ^-2!
gdkOk ^0!
gdkError ^-1!
gdkErrorFile ^-3!
gdkErrorMem ^-4! !

!Gdk class methodsFor: 'GdkGrabStatus'!

gdkGrabFrozen ^4!
gdkGrabInvalidTime ^2!
gdkGrabAlreadyGrabbed ^1!
gdkGrabNotViewable ^3!
gdkGrabSuccess ^0! !

!Gdk class methodsFor: 'GdkDragAction'!

gdkActionDefault ^1!
gdkActionPrivate ^16!
gdkActionCopy ^2!
gdkActionMove ^4!
gdkActionAsk ^32!
gdkActionLink ^8! !

!Gdk class methodsFor: 'GdkDragProtocol'!

gdkDragProtoOle2 ^5!
gdkDragProtoXdnd ^1!
gdkDragProtoLocal ^6!
gdkDragProtoNone ^3!
gdkDragProtoMotif ^0!
gdkDragProtoRootwin ^2!
gdkDragProtoWin32Dropfiles ^4! !

!Gdk class methodsFor: 'GdkExtensionMode'!

gdkExtensionEventsCursor ^2!
gdkExtensionEventsNone ^0!
gdkExtensionEventsAll ^1! !

!Gdk class methodsFor: 'GdkInputSource'!

gdkSourceEraser ^2!
gdkSourceMouse ^0!
gdkSourceCursor ^3!
gdkSourcePen ^1! !

!Gdk class methodsFor: 'GdkInputMode'!

gdkModeWindow ^2!
gdkModeScreen ^1!
gdkModeDisabled ^0! !

!Gdk class methodsFor: 'GdkAxisUse'!

gdkAxisX ^1!
gdkAxisY ^2!
gdkAxisWheel ^6!
gdkAxisYtilt ^5!
gdkAxisIgnore ^0!
gdkAxisLast ^7!
gdkAxisPressure ^3!
gdkAxisXtilt ^4! !

!Gdk class methodsFor: 'GdkFilterReturn'!

gdkFilterContinue ^0!
gdkFilterRemove ^2!
gdkFilterTranslate ^1! !

!Gdk class methodsFor: 'GdkEventType'!

gdkLeaveNotify ^11!
gdkUnmap ^15!
gdkSelectionRequest ^18!
gdkKeyRelease ^9!
gdkButtonRelease ^7!
gdkDragMotion ^24!
gdkKeyPress ^8!
gdkConfigure ^13!
gdkWindowState ^32!
gdkEnterNotify ^10!
gdkDamage ^36!
gdkDragEnter ^22!
gdkDropFinished ^27!
gdkSetting ^33!
gdkDropStart ^26!
gdkVisibilityNotify ^29!
gdkScroll ^31!
gdkSelectionNotify ^19!
gdkMotionNotify ^3!
gdkNothing ^-1!
gdkMap ^14!
gdkFocusChange ^12!
gdk2buttonPress ^5!
gdkDragStatus ^25!
gdkDelete ^0!
gdkProximityOut ^21!
gdkProximityIn ^20!
gdkPropertyNotify ^16!
gdkEventLast ^37!
gdkNoExpose ^30!
gdkExpose ^2!
gdkOwnerChange ^34!
gdkClientEvent ^28!
gdkSelectionClear ^17!
gdkButtonPress ^4!
gdkDestroy ^1!
gdk3buttonPress ^6!
gdkGrabBroken ^35!
gdkDragLeave ^23! !

!Gdk class methodsFor: 'GdkEventMask'!

gdkEnterNotifyMask ^4096!
gdkScrollMask ^2097152!
gdkProximityOutMask ^524288!
gdkButtonMotionMask ^16!
gdkLeaveNotifyMask ^8192!
gdkButton1MotionMask ^32!
gdkButton3MotionMask ^128!
gdkPointerMotionMask ^4!
gdkExposureMask ^2!
gdkAllEventsMask ^4194302!
gdkPropertyChangeMask ^65536!
gdkFocusChangeMask ^16384!
gdkKeyReleaseMask ^2048!
gdkKeyPressMask ^1024!
gdkVisibilityNotifyMask ^131072!
gdkStructureMask ^32768!
gdkButtonReleaseMask ^512!
gdkButtonPressMask ^256!
gdkButton2MotionMask ^64!
gdkSubstructureMask ^1048576!
gdkPointerMotionHintMask ^8!
gdkProximityInMask ^262144! !

!Gdk class methodsFor: 'GdkVisibilityState'!

gdkVisibilityPartial ^1!
gdkVisibilityUnobscured ^0!
gdkVisibilityFullyObscured ^2! !

!Gdk class methodsFor: 'GdkScrollDirection'!

gdkScrollLeft ^2!
gdkScrollDown ^1!
gdkScrollRight ^3!
gdkScrollUp ^0! !

!Gdk class methodsFor: 'GdkNotifyType'!

gdkNotifyNonlinear ^3!
gdkNotifyAncestor ^0!
gdkNotifyUnknown ^5!
gdkNotifyInferior ^2!
gdkNotifyVirtual ^1!
gdkNotifyNonlinearVirtual ^4! !

!Gdk class methodsFor: 'GdkCrossingMode'!

gdkCrossingGtkGrab ^3!
gdkCrossingUngrab ^2!
gdkCrossingStateChanged ^5!
gdkCrossingGtkUngrab ^4!
gdkCrossingGrab ^1!
gdkCrossingNormal ^0! !

!Gdk class methodsFor: 'GdkPropertyState'!

gdkPropertyDelete ^1!
gdkPropertyNewValue ^0! !

!Gdk class methodsFor: 'GdkWindowState'!

gdkWindowStateBelow ^64!
gdkWindowStateMaximized ^4!
gdkWindowStateWithdrawn ^1!
gdkWindowStateSticky ^8!
gdkWindowStateFullscreen ^16!
gdkWindowStateAbove ^32!
gdkWindowStateIconified ^2! !

!Gdk class methodsFor: 'GdkSettingAction'!

gdkSettingActionNew ^0!
gdkSettingActionDeleted ^2!
gdkSettingActionChanged ^1! !

!Gdk class methodsFor: 'GdkOwnerChange'!

gdkOwnerChangeClose ^2!
gdkOwnerChangeNewOwner ^0!
gdkOwnerChangeDestroy ^1! !

!Gdk class methodsFor: 'GdkRgbDither'!

gdkRgbDitherMax ^2!
gdkRgbDitherNone ^0!
gdkRgbDitherNormal ^1! !

!Gdk class methodsFor: 'GdkPixbufAlphaMode'!

gdkPixbufAlphaBilevel ^0!
gdkPixbufAlphaFull ^1! !

!Gdk class methodsFor: 'GdkColorspace'!

gdkColorspaceRgb ^0! !

!Gdk class methodsFor: 'GdkPixbufError'!

gdkPixbufErrorUnknownType ^3!
gdkPixbufErrorBadOption ^2!
gdkPixbufErrorCorruptImage ^0!
gdkPixbufErrorFailed ^5!
gdkPixbufErrorInsufficientMemory ^1!
gdkPixbufErrorUnsupportedOperation ^4! !

!Gdk class methodsFor: 'GdkInterpType'!

gdkInterpTiles ^1!
gdkInterpBilinear ^2!
gdkInterpNearest ^0!
gdkInterpHyper ^3! !

!Gdk class methodsFor: 'GdkPixbufRotation'!

gdkPixbufRotateClockwise ^270!
gdkPixbufRotateCounterclockwise ^90!
gdkPixbufRotateUpsidedown ^180!
gdkPixbufRotateNone ^0! !

!Gdk class methodsFor: 'GdkPixbufFormatFlags'!

gdkPixbufFormatThreadsafe ^4!
gdkPixbufFormatScalable ^2!
gdkPixbufFormatWritable ^1! !

!Gdk class methodsFor: 'GdkCursorType'!

gdkSpider ^122!
gdkSbDownArrow ^106!
gdkXCursor ^0!
gdkBottomSide ^16!
gdkMiddlebutton ^82!
gdkStar ^126!
gdkBoxSpiral ^20!
gdkBasedArrowDown ^4!
gdkMouse ^84!
gdkBogosity ^10!
gdkDrapedBox ^48!
gdkLastCursor ^153!
gdkBottomTee ^18!
gdkSbHDoubleArrow ^108!
gdkFleur ^52!
gdkBoat ^8!
gdkShuttle ^118!
gdkDraftSmall ^46!
gdkCross ^30!
gdkPlus ^90!
gdkLeftTee ^72!
gdkCursorIsPixmap ^-1!
gdkSbLeftArrow ^110!
gdkRightbutton ^100!
gdkRightTee ^98!
gdkSbUpArrow ^114!
gdkBasedArrowUp ^6!
gdkLeftSide ^70!
gdkBottomRightCorner ^14!
gdkLeftPtr ^68!
gdkSailboat ^104!
gdkRightSide ^96!
gdkMan ^80!
gdkDiamondCross ^36!
gdkTarget ^128!
gdkCrossReverse ^32!
gdkWatch ^150!
gdkSbRightArrow ^112!
gdkRightPtr ^94!
gdkPencil ^86!
gdkTopLeftArrow ^132!
gdkTopTee ^140!
gdkClock ^26!
gdkArrow ^2!
gdkSpraycan ^124!
gdkTrek ^142!
gdkCenterPtr ^22!
gdkLrAngle ^78!
gdkBottomLeftCorner ^12!
gdkTopRightCorner ^136!
gdkHand1 ^58!
gdkTopLeftCorner ^134!
gdkQuestionArrow ^92!
gdkHand2 ^60!
gdkExchange ^50!
gdkDotbox ^40!
gdkBlankCursor ^-2!
gdkUrAngle ^148!
gdkGobbler ^54!
gdkTopSide ^138!
gdkSizing ^120!
gdkRtlLogo ^102!
gdkXterm ^152!
gdkLlAngle ^76!
gdkPirate ^88!
gdkDot ^38!
gdkCircle ^24!
gdkCrosshair ^34!
gdkIronCross ^66!
gdkHeart ^62!
gdkTcross ^130!
gdkCoffeeMug ^28!
gdkUlAngle ^144!
gdkIcon ^64!
gdkSbVDoubleArrow ^116!
gdkDraftLarge ^44!
gdkLeftbutton ^74!
gdkDoubleArrow ^42!
gdkUmbrella ^146!
gdkGumby ^56! !

!Gdk class methodsFor: 'GdkCapStyle'!

gdkCapNotLast ^0!
gdkCapButt ^1!
gdkCapProjecting ^3!
gdkCapRound ^2! !

!Gdk class methodsFor: 'GdkFill'!

gdkOpaqueStippled ^3!
gdkTiled ^1!
gdkSolid ^0!
gdkStippled ^2! !

!Gdk class methodsFor: 'GdkFunction'!

gdkOrInvert ^12!
gdkNoop ^7!
gdkCopyInvert ^11!
gdkEquiv ^9!
gdkAndReverse ^5!
gdkOrReverse ^10!
gdkAnd ^4!
gdkXor ^2!
gdkAndInvert ^6!
gdkNor ^14!
gdkOr ^8!
gdkCopy ^0!
gdkNand ^13!
gdkInvert ^1!
gdkClear ^3!
gdkSet ^15! !

!Gdk class methodsFor: 'GdkJoinStyle'!

gdkJoinRound ^1!
gdkJoinMiter ^0!
gdkJoinBevel ^2! !

!Gdk class methodsFor: 'GdkLineStyle'!

gdkLineSolid ^0!
gdkLineDoubleDash ^2!
gdkLineOnOffDash ^1! !

!Gdk class methodsFor: 'GdkSubwindowMode'!

gdkIncludeInferiors ^1!
gdkClipByChildren ^0! !

!Gdk class methodsFor: 'GdkGCValuesMask'!

gdkGcStipple ^64!
gdkGcCapStyle ^65536!
gdkGcLineWidth ^16384!
gdkGcTsXOrigin ^512!
gdkGcFill ^16!
gdkGcSubwindow ^256!
gdkGcFont ^4!
gdkGcExposures ^8192!
gdkGcBackground ^2!
gdkGcTile ^32!
gdkGcLineStyle ^32768!
gdkGcJoinStyle ^131072!
gdkGcForeground ^1!
gdkGcFunction ^8!
gdkGcTsYOrigin ^1024!
gdkGcClipYOrigin ^4096!
gdkGcClipXOrigin ^2048!
gdkGcClipMask ^128! !

!Gdk class methodsFor: 'GdkFontType'!

gdkFontFontset ^1!
gdkFontFont ^0! !

!Gdk class methodsFor: 'GdkImageType'!

gdkImageShared ^1!
gdkImageFastest ^2!
gdkImageNormal ^0! !

!Gdk class methodsFor: 'GdkPropMode'!

gdkPropModeReplace ^0!
gdkPropModePrepend ^1!
gdkPropModeAppend ^2! !

!Gdk class methodsFor: 'GdkOverlapType'!

gdkOverlapRectangleOut ^1!
gdkOverlapRectangleIn ^0!
gdkOverlapRectanglePart ^2! !

!Gdk class methodsFor: 'GdkWindowClass'!

gdkInputOutput ^0!
gdkInputOnly ^1! !

!Gdk class methodsFor: 'GdkWindowType'!

gdkWindowOffscreen ^6!
gdkWindowTemp ^4!
gdkWindowRoot ^0!
gdkWindowChild ^2!
gdkWindowDialog ^3!
gdkWindowForeign ^5!
gdkWindowToplevel ^1! !

!Gdk class methodsFor: 'GdkWindowAttributesType'!

gdkWaTypeHint ^512!
gdkWaColormap ^32!
gdkWaVisual ^64!
gdkWaNoredir ^256!
gdkWaX ^4!
gdkWaY ^8!
gdkWaWmclass ^128!
gdkWaTitle ^2!
gdkWaCursor ^16! !

!Gdk class methodsFor: 'GdkWindowHints'!

gdkHintWinGravity ^64!
gdkHintBaseSize ^8!
gdkHintUserPos ^128!
gdkHintUserSize ^256!
gdkHintMaxSize ^4!
gdkHintAspect ^16!
gdkHintResizeInc ^32!
gdkHintMinSize ^2!
gdkHintPos ^1! !

!Gdk class methodsFor: 'GdkWindowTypeHint'!

gdkWindowTypeHintDropdownMenu ^8!
gdkWindowTypeHintTooltip ^10!
gdkWindowTypeHintCombo ^12!
gdkWindowTypeHintDesktop ^7!
gdkWindowTypeHintNormal ^0!
gdkWindowTypeHintPopupMenu ^9!
gdkWindowTypeHintNotification ^11!
gdkWindowTypeHintSplashscreen ^4!
gdkWindowTypeHintMenu ^2!
gdkWindowTypeHintDnd ^13!
gdkWindowTypeHintDock ^6!
gdkWindowTypeHintUtility ^5!
gdkWindowTypeHintToolbar ^3!
gdkWindowTypeHintDialog ^1! !

!Gdk class methodsFor: 'GdkWMDecoration'!

gdkDecorTitle ^8!
gdkDecorAll ^1!
gdkDecorMaximize ^64!
gdkDecorResizeh ^4!
gdkDecorMinimize ^32!
gdkDecorBorder ^2!
gdkDecorMenu ^16! !

!Gdk class methodsFor: 'GdkWMFunction'!

gdkFuncAll ^1!
gdkFuncMaximize ^16!
gdkFuncMove ^4!
gdkFuncMinimize ^8!
gdkFuncResize ^2!
gdkFuncClose ^32! !

!Gdk class methodsFor: 'GdkGravity'!

gdkGravitySouthEast ^9!
gdkGravityNorth ^2!
gdkGravitySouth ^8!
gdkGravityCenter ^5!
gdkGravityEast ^6!
gdkGravityNorthEast ^3!
gdkGravitySouthWest ^7!
gdkGravityNorthWest ^1!
gdkGravityStatic ^10!
gdkGravityWest ^4! !

!Gdk class methodsFor: 'GdkWindowEdge'!

gdkWindowEdgeSouth ^6!
gdkWindowEdgeWest ^3!
gdkWindowEdgeSouthEast ^7!
gdkWindowEdgeNorthEast ^2!
gdkWindowEdgeSouthWest ^5!
gdkWindowEdgeNorthWest ^0!
gdkWindowEdgeEast ^4!
gdkWindowEdgeNorth ^1! !

!Gdk class methodsFor: 'GdkVisualType'!

gdkVisualTrueColor ^4!
gdkVisualDirectColor ^5!
gdkVisualStaticGray ^0!
gdkVisualStaticColor ^2!
gdkVisualGrayscale ^1!
gdkVisualPseudoColor ^3! !

!Gtk class methodsFor: 'GtkAnchorType'!

gtkAnchorSw ^5!
gtkAnchorEast ^8!
gtkAnchorCenter ^0!
gtkAnchorW ^7!
gtkAnchorSouthEast ^6!
gtkAnchorNorthEast ^3!
gtkAnchorNe ^3!
gtkAnchorWest ^7!
gtkAnchorSouthWest ^5!
gtkAnchorNorthWest ^2!
gtkAnchorN ^1!
gtkAnchorSe ^6!
gtkAnchorNw ^2!
gtkAnchorNorth ^1!
gtkAnchorE ^8!
gtkAnchorSouth ^4!
gtkAnchorS ^4! !

!Gtk class methodsFor: 'GtkArrowPlacement'!

gtkArrowsStart ^1!
gtkArrowsEnd ^2!
gtkArrowsBoth ^0! !

!Gtk class methodsFor: 'GtkArrowType'!

gtkArrowLeft ^2!
gtkArrowDown ^1!
gtkArrowNone ^4!
gtkArrowRight ^3!
gtkArrowUp ^0! !

!Gtk class methodsFor: 'GtkAttachOptions'!

gtkExpand ^1!
gtkFill ^4!
gtkShrink ^2! !

!Gtk class methodsFor: 'GtkButtonBoxStyle'!

gtkButtonboxCenter ^5!
gtkButtonboxEdge ^2!
gtkButtonboxEnd ^4!
gtkButtonboxStart ^3!
gtkButtonboxSpread ^1!
gtkButtonboxDefaultStyle ^0! !

!Gtk class methodsFor: 'GtkDeleteType'!

gtkDeleteWords ^2!
gtkDeleteDisplayLines ^3!
gtkDeleteWhitespace ^7!
gtkDeleteParagraphEnds ^5!
gtkDeleteDisplayLineEnds ^4!
gtkDeleteChars ^0!
gtkDeleteWordEnds ^1!
gtkDeleteParagraphs ^6! !

!Gtk class methodsFor: 'GtkDirectionType'!

gtkDirDown ^3!
gtkDirRight ^5!
gtkDirLeft ^4!
gtkDirTabForward ^0!
gtkDirUp ^2!
gtkDirTabBackward ^1! !

!Gtk class methodsFor: 'GtkExpanderStyle'!

gtkExpanderSemiExpanded ^2!
gtkExpanderExpanded ^3!
gtkExpanderSemiCollapsed ^1!
gtkExpanderCollapsed ^0! !

!Gtk class methodsFor: 'GtkIconSize'!

gtkIconSizeMenu ^1!
gtkIconSizeInvalid ^0!
gtkIconSizeButton ^4!
gtkIconSizeSmallToolbar ^2!
gtkIconSizeDnd ^5!
gtkIconSizeDialog ^6!
gtkIconSizeLargeToolbar ^3! !

!Gtk class methodsFor: 'GtkSensitivityType'!

gtkSensitivityAuto ^0!
gtkSensitivityOn ^1!
gtkSensitivityOff ^2! !

!Gtk class methodsFor: 'GtkTextDirection'!

gtkTextDirRtl ^2!
gtkTextDirLtr ^1!
gtkTextDirNone ^0! !

!Gtk class methodsFor: 'GtkJustification'!

gtkJustifyRight ^1!
gtkJustifyLeft ^0!
gtkJustifyFill ^3!
gtkJustifyCenter ^2! !

!Gtk class methodsFor: 'GtkMenuDirectionType'!

gtkMenuDirPrev ^3!
gtkMenuDirNext ^2!
gtkMenuDirParent ^0!
gtkMenuDirChild ^1! !

!Gtk class methodsFor: 'GtkMessageType'!

gtkMessageQuestion ^2!
gtkMessageInfo ^0!
gtkMessageError ^3!
gtkMessageOther ^4!
gtkMessageWarning ^1! !

!Gtk class methodsFor: 'GtkMetricType'!

gtkPixels ^0!
gtkCentimeters ^2!
gtkInches ^1! !

!Gtk class methodsFor: 'GtkMovementStep'!

gtkMovementVisualPositions ^1!
gtkMovementLogicalPositions ^0!
gtkMovementHorizontalPages ^9!
gtkMovementWords ^2!
gtkMovementParagraphEnds ^6!
gtkMovementBufferEnds ^8!
gtkMovementParagraphs ^5!
gtkMovementPages ^7!
gtkMovementDisplayLineEnds ^4!
gtkMovementDisplayLines ^3! !

!Gtk class methodsFor: 'GtkScrollStep'!

gtkScrollPages ^1!
gtkScrollHorizontalEnds ^5!
gtkScrollHorizontalPages ^4!
gtkScrollEnds ^2!
gtkScrollSteps ^0!
gtkScrollHorizontalSteps ^3! !

!Gtk class methodsFor: 'GtkOrientation'!

gtkOrientationVertical ^1!
gtkOrientationHorizontal ^0! !

!Gtk class methodsFor: 'GtkCornerType'!

gtkCornerTopRight ^2!
gtkCornerBottomLeft ^1!
gtkCornerBottomRight ^3!
gtkCornerTopLeft ^0! !

!Gtk class methodsFor: 'GtkPackType'!

gtkPackStart ^0!
gtkPackEnd ^1! !

!Gtk class methodsFor: 'GtkPathPriorityType'!

gtkPathPrioRc ^12!
gtkPathPrioHighest ^15!
gtkPathPrioLowest ^0!
gtkPathPrioApplication ^8!
gtkPathPrioGtk ^4!
gtkPathPrioTheme ^10! !

!Gtk class methodsFor: 'GtkPathType'!

gtkPathWidgetClass ^1!
gtkPathWidget ^0!
gtkPathClass ^2! !

!Gtk class methodsFor: 'GtkPolicyType'!

gtkPolicyAlways ^0!
gtkPolicyNever ^2!
gtkPolicyAutomatic ^1! !

!Gtk class methodsFor: 'GtkPositionType'!

gtkPosLeft ^0!
gtkPosRight ^1!
gtkPosTop ^2!
gtkPosBottom ^3! !

!Gtk class methodsFor: 'GtkReliefStyle'!

gtkReliefNone ^2!
gtkReliefHalf ^1!
gtkReliefNormal ^0! !

!Gtk class methodsFor: 'GtkResizeMode'!

gtkResizeParent ^0!
gtkResizeImmediate ^2!
gtkResizeQueue ^1! !

!Gtk class methodsFor: 'GtkScrollType'!

gtkScrollStepRight ^11!
gtkScrollStepForward ^3!
gtkScrollEnd ^15!
gtkScrollStepUp ^6!
gtkScrollStepLeft ^10!
gtkScrollPageForward ^5!
gtkScrollStart ^14!
gtkScrollStepDown ^7!
gtkScrollNone ^0!
gtkScrollPageDown ^9!
gtkScrollJump ^1!
gtkScrollPageRight ^13!
gtkScrollPageLeft ^12!
gtkScrollPageBackward ^4!
gtkScrollStepBackward ^2!
gtkScrollPageUp ^8! !

!Gtk class methodsFor: 'GtkSelectionMode'!

gtkSelectionExtended ^3!
gtkSelectionMultiple ^3!
gtkSelectionBrowse ^2!
gtkSelectionNone ^0!
gtkSelectionSingle ^1! !

!Gtk class methodsFor: 'GtkShadowType'!

gtkShadowEtchedOut ^4!
gtkShadowIn ^1!
gtkShadowEtchedIn ^3!
gtkShadowNone ^0!
gtkShadowOut ^2! !

!Gtk class methodsFor: 'GtkStateType'!

gtkStateActive ^1!
gtkStateInsensitive ^4!
gtkStateSelected ^3!
gtkStatePrelight ^2!
gtkStateNormal ^0! !

!Gtk class methodsFor: 'GtkSubmenuDirection'!

gtkDirectionRight ^1!
gtkDirectionLeft ^0! !

!Gtk class methodsFor: 'GtkSubmenuPlacement'!

gtkTopBottom ^0!
gtkLeftRight ^1! !

!Gtk class methodsFor: 'GtkToolbarStyle'!

gtkToolbarBoth ^2!
gtkToolbarText ^1!
gtkToolbarIcons ^0!
gtkToolbarBothHoriz ^3! !

!Gtk class methodsFor: 'GtkUpdateType'!

gtkUpdateDiscontinuous ^1!
gtkUpdateContinuous ^0!
gtkUpdateDelayed ^2! !

!Gtk class methodsFor: 'GtkVisibility'!

gtkVisibilityNone ^0!
gtkVisibilityFull ^2!
gtkVisibilityPartial ^1! !

!Gtk class methodsFor: 'GtkWindowPosition'!

gtkWinPosCenter ^1!
gtkWinPosNone ^0!
gtkWinPosCenterOnParent ^4!
gtkWinPosCenterAlways ^3!
gtkWinPosMouse ^2! !

!Gtk class methodsFor: 'GtkWindowType'!

gtkWindowPopup ^1!
gtkWindowToplevel ^0! !

!Gtk class methodsFor: 'GtkWrapMode'!

gtkWrapWordChar ^3!
gtkWrapChar ^1!
gtkWrapNone ^0!
gtkWrapWord ^2! !

!Gtk class methodsFor: 'GtkSortType'!

gtkSortDescending ^1!
gtkSortAscending ^0! !

!Gtk class methodsFor: 'GtkIMPreeditStyle'!

gtkImPreeditCallback ^1!
gtkImPreeditNone ^2!
gtkImPreeditNothing ^0! !

!Gtk class methodsFor: 'GtkIMStatusStyle'!

gtkImStatusNone ^2!
gtkImStatusCallback ^1!
gtkImStatusNothing ^0! !

!Gtk class methodsFor: 'GtkPackDirection'!

gtkPackDirectionBtt ^3!
gtkPackDirectionRtl ^1!
gtkPackDirectionLtr ^0!
gtkPackDirectionTtb ^2! !

!Gtk class methodsFor: 'GtkPrintPages'!

gtkPrintPagesAll ^0!
gtkPrintPagesSelection ^3!
gtkPrintPagesRanges ^2!
gtkPrintPagesCurrent ^1! !

!Gtk class methodsFor: 'GtkPageSet'!

gtkPageSetAll ^0!
gtkPageSetEven ^1!
gtkPageSetOdd ^2! !

!Gtk class methodsFor: 'GtkNumberUpLayout'!

gtkNumberUpLayoutTopToBottomRightToLeft ^5!
gtkNumberUpLayoutBottomToTopLeftToRight ^6!
gtkNumberUpLayoutTopToBottomLeftToRight ^4!
gtkNumberUpLayoutBottomToTopRightToLeft ^7!
gtkNumberUpLayoutRightToLeftTopToBottom ^2!
gtkNumberUpLayoutRightToLeftBottomToTop ^3!
gtkNumberUpLayoutLeftToRightTopToBottom ^0!
gtkNumberUpLayoutLeftToRightBottomToTop ^1! !

!Gtk class methodsFor: 'GtkPageOrientation'!

gtkPageOrientationPortrait ^0!
gtkPageOrientationLandscape ^1!
gtkPageOrientationReversePortrait ^2!
gtkPageOrientationReverseLandscape ^3! !

!Gtk class methodsFor: 'GtkPrintQuality'!

gtkPrintQualityDraft ^3!
gtkPrintQualityNormal ^1!
gtkPrintQualityHigh ^2!
gtkPrintQualityLow ^0! !

!Gtk class methodsFor: 'GtkPrintDuplex'!

gtkPrintDuplexHorizontal ^1!
gtkPrintDuplexVertical ^2!
gtkPrintDuplexSimplex ^0! !

!Gtk class methodsFor: 'GtkUnit'!

gtkUnitInch ^2!
gtkUnitPixel ^0!
gtkUnitPoints ^1!
gtkUnitMm ^3! !

!Gtk class methodsFor: 'GtkTreeViewGridLines'!

gtkTreeViewGridLinesHorizontal ^1!
gtkTreeViewGridLinesNone ^0!
gtkTreeViewGridLinesBoth ^3!
gtkTreeViewGridLinesVertical ^2! !

!Gtk class methodsFor: 'GtkDragResult'!

gtkDragResultUserCancelled ^2!
gtkDragResultGrabBroken ^4!
gtkDragResultNoTarget ^1!
gtkDragResultError ^5!
gtkDragResultTimeoutExpired ^3!
gtkDragResultSuccess ^0! !

!Gtk class methodsFor: 'GtkAccelFlags'!

gtkAccelMask ^7!
gtkAccelLocked ^2!
gtkAccelVisible ^1! !

!Gtk class methodsFor: 'GtkDebugFlag'!

gtkDebugBuilder ^2048!
gtkDebugTree ^8!
gtkDebugMultihead ^64!
gtkDebugMisc ^1!
gtkDebugModules ^128!
gtkDebugPlugsocket ^2!
gtkDebugPrinting ^1024!
gtkDebugIcontheme ^512!
gtkDebugKeybindings ^32!
gtkDebugText ^4!
gtkDebugGeometry ^256!
gtkDebugUpdates ^16! !

!Gtk class methodsFor: 'GtkObjectFlags'!

gtkFloating ^2!
gtkInDestruction ^1!
gtkReserved1 ^4!
gtkReserved2 ^8! !

!Gtk class methodsFor: 'GtkRcFlags'!

gtkRcFg ^1!
gtkRcBase ^8!
gtkRcText ^4!
gtkRcBg ^2! !

!Gtk class methodsFor: 'GtkRcTokenType'!

gtkRcTokenSelected ^275!
gtkRcTokenClass ^293!
gtkRcTokenBase ^280!
gtkRcTokenUnbind ^308!
gtkRcTokenActive ^273!
gtkRcTokenImModuleFile ^303!
gtkRcTokenFont ^283!
gtkRcTokenBind ^290!
gtkRcTokenYthickness ^282!
gtkRcTokenBg ^278!
gtkRcTokenRtl ^306!
gtkRcTokenTheme ^297!
gtkRcTokenImModulePath ^302!
gtkRcTokenFg ^277!
gtkRcTokenFontName ^285!
gtkRcTokenBgPixmap ^286!
gtkRcTokenInsensitive ^276!
gtkRcTokenLowest ^294!
gtkRcTokenPrelight ^274!
gtkRcTokenStyle ^288!
gtkRcTokenText ^279!
gtkRcTokenBinding ^289!
gtkRcTokenModulePath ^301!
gtkRcTokenFontset ^284!
gtkRcTokenStock ^304!
gtkRcTokenApplication ^296!
gtkRcTokenInclude ^271!
gtkRcTokenRc ^298!
gtkRcTokenHighest ^299!
gtkRcTokenWidget ^291!
gtkRcTokenGtk ^295!
gtkRcTokenPixmapPath ^287!
gtkRcTokenWidgetClass ^292!
gtkRcTokenNormal ^272!
gtkRcTokenLast ^309!
gtkRcTokenXthickness ^281!
gtkRcTokenColor ^307!
gtkRcTokenLtr ^305!
gtkRcTokenEngine ^300!
gtkRcTokenInvalid ^270! !

!Atk class methodsFor: 'AtkStateType'!

atkStateCheckable ^39!
atkStateFocused ^11!
atkStateInvalid ^0!
atkStateIconified ^13!
atkStateAnimated ^37!
atkStateHasPopup ^40!
atkStateExpandable ^8!
atkStateTruncated ^31!
atkStateActive ^1!
atkStateEditable ^6!
atkStateMultiLine ^15!
atkStateVisible ^28!
atkStateMultiselectable ^16!
atkStateSelected ^21!
atkStateFocusable ^10!
atkStateSelectable ^20!
atkStateShowing ^23!
atkStateManagesDescendants ^29!
atkStateVertical ^27!
atkStateDefault ^36!
atkStateOpaque ^17!
atkStateHorizontal ^12!
atkStateEnabled ^7!
atkStateModal ^14!
atkStateVisited ^38!
atkStateTransient ^26!
atkStateInvalidEntry ^33!
atkStatePressed ^18!
atkStateSensitive ^22!
atkStateDefunct ^5!
atkStateExpanded ^9!
atkStateArmed ^2!
atkStateSelectableText ^35!
atkStateStale ^25!
atkStateIndeterminate ^30!
atkStateResizable ^19!
atkStateSingleLine ^24!
atkStateBusy ^3!
atkStateChecked ^4!
atkStateRequired ^32!
atkStateLastDefined ^41!
atkStateSupportsAutocompletion ^34! !

!Atk class methodsFor: 'AtkRelationType'!

atkRelationNodeChildOf ^6!
atkRelationDescribedBy ^14!
atkRelationControlledBy ^1!
atkRelationPopupFor ^12!
atkRelationFlowsFrom ^8!
atkRelationSubwindowOf ^9!
atkRelationControllerFor ^2!
atkRelationLabelledBy ^4!
atkRelationNodeParentOf ^16!
atkRelationParentWindowOf ^13!
atkRelationNull ^0!
atkRelationEmbeddedBy ^11!
atkRelationLabelFor ^3!
atkRelationDescriptionFor ^15!
atkRelationEmbeds ^10!
atkRelationFlowsTo ^7!
atkRelationMemberOf ^5!
atkRelationLastDefined ^17! !

!Atk class methodsFor: 'AtkRole'!

atkRoleAudio ^104!
atkRoleLink ^86!
atkRoleColumnHeader ^10!
atkRoleColorChooser ^9!
atkRoleRadioButton ^43!
atkRoleChart ^78!
atkRoleCheckMenuItem ^8!
atkRoleMenuItem ^34!
atkRoleVideo ^105!
atkRoleHeading ^81!
atkRoleAccelLabel ^1!
atkRoleTableRow ^88!
atkRoleDial ^15!
atkRoleMenu ^32!
atkRoleComment ^95!
atkRoleTree ^64!
atkRoleDescriptionValue ^116!
atkRoleCheckBox ^7!
atkRoleDialog ^16!
atkRoleLog ^109!
atkRoleFiller ^20!
atkRoleAlert ^2!
atkRoleForm ^85!
atkRoleTableRowHeader ^57!
atkRoleDocumentPresentation ^91!
atkRoleFooter ^70!
atkRoleScrollPane ^48!
atkRoleTreeItem ^89!
atkRoleUnknown ^66!
atkRoleTreeTable ^65!
atkRolePageTabList ^37!
atkRoleMath ^111!
atkRoleSlider ^50!
atkRoleImage ^26!
atkRoleDocumentFrame ^80!
atkRoleTableCell ^55!
atkRoleRootPane ^45!
atkRoleToolBar ^62!
atkRoleLabel ^28!
atkRoleFrame ^22!
atkRoleDescriptionList ^114!
atkRoleDocumentText ^92!
atkRoleHtmlContainer ^24!
atkRoleRadioMenuItem ^44!
atkRoleArticle ^107!
atkRoleDesktopIcon ^13!
atkRoleText ^60!
atkRolePageTab ^36!
atkRoleDefinition ^106!
atkRoleDirectoryPane ^17!
atkRoleTerminal ^59!
atkRoleFontChooser ^21!
atkRoleDocumentSpreadsheet ^90!
atkRoleRedundantObject ^84!
atkRoleBlockQuote ^103!
atkRoleNotification ^99!
atkRoleEditbar ^75!
atkRolePanel ^38!
atkRoleToolTip ^63!
atkRoleGlassPane ^23!
atkRolePopupMenu ^40!
atkRoleInvalid ^0!
atkRoleRating ^112!
atkRoleParagraph ^71!
atkRoleIcon ^25!
atkRoleMarquee ^110!
atkRoleLayeredPane ^29!
atkRoleToggleButton ^61!
atkRoleTitleBar ^102!
atkRoleOptionPane ^35!
atkRoleSpinButton ^52!
atkRoleTableColumnHeader ^56!
atkRolePushButton ^42!
atkRoleListItem ^31!
atkRoleSplitPane ^51!
atkRoleImageMap ^98!
atkRoleAnimation ^3!
atkRoleComboBox ^11!
atkRoleCanvas ^6!
atkRoleEntry ^77!
atkRoleDocumentWeb ^93!
atkRoleList ^30!
atkRoleDocumentEmail ^94!
atkRoleInternalFrame ^27!
atkRoleFileChooser ^19!
atkRoleLastDefined ^117!
atkRoleTimer ^113!
atkRoleTearOffMenuItem ^58!
atkRoleApplication ^73!
atkRoleHeader ^69!
atkRoleStatusbar ^53!
atkRoleArrow ^4!
atkRoleInputMethodWindow ^87!
atkRoleDrawingArea ^18!
atkRoleViewport ^67!
atkRoleScrollBar ^47!
atkRoleWindow ^68!
atkRoleRowHeader ^46!
atkRoleDescriptionTerm ^115!
atkRoleGrouping ^97!
atkRoleSeparator ^49!
atkRoleAutocomplete ^74!
atkRoleRuler ^72!
atkRoleDateEditor ^12!
atkRoleCalendar ^5!
atkRoleMenuBar ^33!
atkRoleLandmark ^108!
atkRolePasswordText ^39!
atkRoleSection ^83!
atkRoleInfoBar ^100!
atkRoleListBox ^96!
atkRoleDesktopFrame ^14!
atkRoleEmbedded ^76!
atkRolePage ^82!
atkRoleCaption ^79!
atkRoleTable ^54!
atkRoleLevelBar ^101!
atkRoleProgressBar ^41! !

!Atk class methodsFor: 'AtkLayer'!

atkLayerCanvas ^2!
atkLayerBackground ^1!
atkLayerInvalid ^0!
atkLayerWindow ^7!
atkLayerWidget ^3!
atkLayerOverlay ^6!
atkLayerPopup ^5!
atkLayerMdi ^4! !

!Atk class methodsFor: 'AtkKeyEventType'!

atkKeyEventPress ^0!
atkKeyEventRelease ^1!
atkKeyEventLastDefined ^2! !

!Atk class methodsFor: 'enumerations'!

atkXyScreen ^0!
atkXyWindow ^1! !

!Atk class methodsFor: 'AtkTextAttribute'!

atkTextAttrPixelsAboveLines ^6!
atkTextAttrFgColor ^19!
atkTextAttrDirection ^23!
atkTextAttrStrikethrough ^12!
atkTextAttrStretch ^25!
atkTextAttrWeight ^15!
atkTextAttrPixelsBelowLines ^7!
atkTextAttrVariant ^26!
atkTextAttrBgStipple ^20!
atkTextAttrBgColor ^18!
atkTextAttrLanguage ^16!
atkTextAttrSize ^13!
atkTextAttrPixelsInsideWrap ^8!
atkTextAttrIndent ^3!
atkTextAttrInvisible ^4!
atkTextAttrInvalid ^0!
atkTextAttrLastDefined ^28!
atkTextAttrStyle ^27!
atkTextAttrUnderline ^11!
atkTextAttrBgFullHeight ^9!
atkTextAttrFamilyName ^17!
atkTextAttrRise ^10!
atkTextAttrFgStipple ^21!
atkTextAttrRightMargin ^2!
atkTextAttrLeftMargin ^1!
atkTextAttrScale ^14!
atkTextAttrJustification ^24!
atkTextAttrWrapMode ^22!
atkTextAttrEditable ^5! !

!Atk class methodsFor: 'AtkTextBoundary'!

atkTextBoundaryWordStart ^1!
atkTextBoundaryWordEnd ^2!
atkTextBoundaryLineStart ^5!
atkTextBoundarySentenceEnd ^4!
atkTextBoundarySentenceStart ^3!
atkTextBoundaryLineEnd ^6!
atkTextBoundaryChar ^0! !

!Atk class methodsFor: 'AtkTextGranularity'!

atkTextGranularitySentence ^2!
atkTextGranularityWord ^1!
atkTextGranularityChar ^0!
atkTextGranularityLine ^3!
atkTextGranularityParagraph ^4! !

!Atk class methodsFor: 'AtkTextClipType'!

atkTextClipNone ^0!
atkTextClipBoth ^3!
atkTextClipMin ^1!
atkTextClipMax ^2! !

!Atk class methodsFor: 'AtkHyperlinkStateFlags'!

atkHyperlinkIsInline ^1! !

!Atk class methodsFor: 'enumerations'!

atkValueHigh ^8!
atkValueMedium ^7!
atkValueBest ^14!
atkValueVeryGood ^13!
atkValueVeryLow ^5!
atkValueVeryWeak ^0!
atkValueWeak ^1!
atkValueAcceptable ^2!
atkValueLastDefined ^15!
atkValueGood ^12!
atkValueBad ^11!
atkValueVeryHigh ^9!
atkValueStrong ^3!
atkValueVeryBad ^10!
atkValueLow ^6!
atkValueVeryStrong ^4! !

!Gtk class methodsFor: 'GtkWidgetFlags'!

gtkNoShowAll ^4194304!
gtkReceivesDefault ^1048576!
gtkHasGrab ^32768!
gtkCanDefault ^8192!
gtkCompositeChild ^131072!
gtkHasDefault ^16384!
gtkCanFocus ^2048!
gtkRealized ^64!
gtkToplevel ^16!
gtkDoubleBuffered ^2097152!
gtkParentSensitive ^1024!
gtkRcStyle ^65536!
gtkNoWindow ^32!
gtkAppPaintable ^524288!
gtkHasFocus ^4096!
gtkMapped ^128!
gtkSensitive ^512!
gtkVisible ^256! !

!Gtk class methodsFor: 'GtkWidgetHelpType'!

gtkWidgetHelpWhatsThis ^1!
gtkWidgetHelpTooltip ^0! !

!Gtk class methodsFor: 'GtkDialogFlags'!

gtkDialogModal ^1!
gtkDialogDestroyWithParent ^2!
gtkDialogNoSeparator ^4! !

!Gtk class methodsFor: 'GtkResponseType'!

gtkResponseApply ^-10!
gtkResponseOk ^-5!
gtkResponseNo ^-9!
gtkResponseYes ^-8!
gtkResponseHelp ^-11!
gtkResponseReject ^-2!
gtkResponseCancel ^-6!
gtkResponseDeleteEvent ^-4!
gtkResponseAccept ^-3!
gtkResponseNone ^-1!
gtkResponseClose ^-7! !

!Gtk class methodsFor: 'GtkAssistantPageType'!

gtkAssistantPageProgress ^4!
gtkAssistantPageSummary ^3!
gtkAssistantPageContent ^0!
gtkAssistantPageConfirm ^2!
gtkAssistantPageIntro ^1! !

!Gtk class methodsFor: 'GtkBuilderError'!

gtkBuilderErrorInvalidValue ^6!
gtkBuilderErrorUnhandledTag ^1!
gtkBuilderErrorDuplicateId ^8!
gtkBuilderErrorMissingAttribute ^2!
gtkBuilderErrorInvalidTag ^4!
gtkBuilderErrorInvalidTypeFunction ^0!
gtkBuilderErrorVersionMismatch ^7!
gtkBuilderErrorInvalidAttribute ^3!
gtkBuilderErrorMissingPropertyValue ^5! !

!Gtk class methodsFor: 'GtkImageType'!

gtkImageAnimation ^6!
gtkImagePixmap ^1!
gtkImageImage ^2!
gtkImageEmpty ^0!
gtkImageGicon ^8!
gtkImageIconSet ^5!
gtkImageIconName ^7!
gtkImageStock ^4!
gtkImagePixbuf ^3! !

!Gtk class methodsFor: 'GtkCalendarDisplayOptions'!

gtkCalendarWeekStartMonday ^16!
gtkCalendarShowDayNames ^2!
gtkCalendarNoMonthChange ^4!
gtkCalendarShowDetails ^32!
gtkCalendarShowHeading ^1!
gtkCalendarShowWeekNumbers ^8! !

!Gtk class methodsFor: 'GtkCellRendererState'!

gtkCellRendererSelected ^1!
gtkCellRendererFocused ^16!
gtkCellRendererPrelit ^2!
gtkCellRendererInsensitive ^4!
gtkCellRendererSorted ^8! !

!Gtk class methodsFor: 'GtkCellRendererMode'!

gtkCellRendererModeInert ^0!
gtkCellRendererModeEditable ^2!
gtkCellRendererModeActivatable ^1! !

!Gtk class methodsFor: 'GtkTreeModelFlags'!

gtkTreeModelItersPersist ^1!
gtkTreeModelListOnly ^2! !

!Gtk class methodsFor: 'enumerations'!

gtkTreeSortableUnsortedSortColumnId ^-2!
gtkTreeSortableDefaultSortColumnId ^-1! !

!Gtk class methodsFor: 'GtkTreeViewColumnSizing'!

gtkTreeViewColumnGrowOnly ^0!
gtkTreeViewColumnAutosize ^1!
gtkTreeViewColumnFixed ^2! !

!Gtk class methodsFor: 'GtkCellRendererAccelMode'!

gtkCellRendererAccelModeOther ^1!
gtkCellRendererAccelModeGtk ^0! !

!Gtk class methodsFor: 'GtkTextSearchFlags'!

gtkTextSearchVisibleOnly ^1!
gtkTextSearchTextOnly ^2! !

!Gtk class methodsFor: 'GtkDestDefaults'!

gtkDestDefaultAll ^7!
gtkDestDefaultMotion ^1!
gtkDestDefaultHighlight ^2!
gtkDestDefaultDrop ^4! !

!Gtk class methodsFor: 'GtkTargetFlags'!

gtkTargetSameWidget ^2!
gtkTargetOtherApp ^4!
gtkTargetOtherWidget ^8!
gtkTargetSameApp ^1! !

!Gtk class methodsFor: 'GtkEntryIconPosition'!

gtkEntryIconSecondary ^1!
gtkEntryIconPrimary ^0! !

!Gtk class methodsFor: 'GtkTreeViewDropPosition'!

gtkTreeViewDropAfter ^1!
gtkTreeViewDropIntoOrAfter ^3!
gtkTreeViewDropBefore ^0!
gtkTreeViewDropIntoOrBefore ^2! !

!Gtk class methodsFor: 'GtkFileFilterFlags'!

gtkFileFilterDisplayName ^4!
gtkFileFilterUri ^2!
gtkFileFilterMimeType ^8!
gtkFileFilterFilename ^1! !

!Gtk class methodsFor: 'GtkFileChooserAction'!

gtkFileChooserActionSelectFolder ^2!
gtkFileChooserActionOpen ^0!
gtkFileChooserActionCreateFolder ^3!
gtkFileChooserActionSave ^1! !

!Gtk class methodsFor: 'GtkFileChooserConfirmation'!

gtkFileChooserConfirmationSelectAgain ^2!
gtkFileChooserConfirmationConfirm ^0!
gtkFileChooserConfirmationAcceptFilename ^1! !

!Gtk class methodsFor: 'GtkFileChooserError'!

gtkFileChooserErrorIncompleteHostname ^3!
gtkFileChooserErrorBadFilename ^1!
gtkFileChooserErrorNonexistent ^0!
gtkFileChooserErrorAlreadyExists ^2! !

!Gtk class methodsFor: 'GtkIconLookupFlags'!

gtkIconLookupUseBuiltin ^4!
gtkIconLookupNoSvg ^1!
gtkIconLookupGenericFallback ^8!
gtkIconLookupForceSize ^16!
gtkIconLookupForceSvg ^2! !

!Gtk class methodsFor: 'GtkIconThemeError'!

gtkIconThemeFailed ^1!
gtkIconThemeNotFound ^0! !

!Gtk class methodsFor: 'GtkIconViewDropPosition'!

gtkIconViewNoDrop ^0!
gtkIconViewDropRight ^3!
gtkIconViewDropBelow ^5!
gtkIconViewDropAbove ^4!
gtkIconViewDropLeft ^2!
gtkIconViewDropInto ^1! !

!Gtk class methodsFor: 'GtkSizeGroupMode'!

gtkSizeGroupNone ^0!
gtkSizeGroupVertical ^2!
gtkSizeGroupBoth ^3!
gtkSizeGroupHorizontal ^1! !

!Gtk class methodsFor: 'GtkButtonsType'!

gtkButtonsOkCancel ^5!
gtkButtonsOk ^1!
gtkButtonsCancel ^3!
gtkButtonsYesNo ^4!
gtkButtonsClose ^2!
gtkButtonsNone ^0! !

!Gtk class methodsFor: 'GtkNotebookTab'!

gtkNotebookTabFirst ^0!
gtkNotebookTabLast ^1! !

!Gtk class methodsFor: 'GtkPrintStatus'!

gtkPrintStatusFinishedAborted ^8!
gtkPrintStatusPending ^4!
gtkPrintStatusPendingIssue ^5!
gtkPrintStatusGeneratingData ^2!
gtkPrintStatusPrinting ^6!
gtkPrintStatusInitial ^0!
gtkPrintStatusSendingData ^3!
gtkPrintStatusPreparing ^1!
gtkPrintStatusFinished ^7! !

!Gtk class methodsFor: 'GtkPrintOperationResult'!

gtkPrintOperationResultCancel ^2!
gtkPrintOperationResultInProgress ^3!
gtkPrintOperationResultError ^0!
gtkPrintOperationResultApply ^1! !

!Gtk class methodsFor: 'GtkPrintOperationAction'!

gtkPrintOperationActionPrint ^1!
gtkPrintOperationActionPreview ^2!
gtkPrintOperationActionExport ^3!
gtkPrintOperationActionPrintDialog ^0! !

!Gtk class methodsFor: 'GtkPrintError'!

gtkPrintErrorNomem ^2!
gtkPrintErrorGeneral ^0!
gtkPrintErrorInvalidFile ^3!
gtkPrintErrorInternalError ^1! !

!Gtk class methodsFor: 'GtkProgressBarStyle'!

gtkProgressContinuous ^0!
gtkProgressDiscrete ^1! !

!Gtk class methodsFor: 'GtkProgressBarOrientation'!

gtkProgressTopToBottom ^3!
gtkProgressBottomToTop ^2!
gtkProgressLeftToRight ^0!
gtkProgressRightToLeft ^1! !

!Gtk class methodsFor: 'GtkRecentManagerError'!

gtkRecentManagerErrorRead ^4!
gtkRecentManagerErrorNotRegistered ^3!
gtkRecentManagerErrorUnknown ^6!
gtkRecentManagerErrorNotFound ^0!
gtkRecentManagerErrorWrite ^5!
gtkRecentManagerErrorInvalidEncoding ^2!
gtkRecentManagerErrorInvalidUri ^1! !

!Gtk class methodsFor: 'GtkRecentFilterFlags'!

gtkRecentFilterApplication ^8!
gtkRecentFilterMimeType ^4!
gtkRecentFilterDisplayName ^2!
gtkRecentFilterUri ^1!
gtkRecentFilterAge ^32!
gtkRecentFilterGroup ^16! !

!Gtk class methodsFor: 'GtkRecentSortType'!

gtkRecentSortLru ^2!
gtkRecentSortNone ^0!
gtkRecentSortMru ^1!
gtkRecentSortCustom ^3! !

!Gtk class methodsFor: 'GtkRecentChooserError'!

gtkRecentChooserErrorNotFound ^0!
gtkRecentChooserErrorInvalidUri ^1! !

!Gtk class methodsFor: 'GtkSpinButtonUpdatePolicy'!

gtkUpdateIfValid ^1!
gtkUpdateAlways ^0! !

!Gtk class methodsFor: 'GtkSpinType'!

gtkSpinPageBackward ^3!
gtkSpinStepBackward ^1!
gtkSpinUserDefined ^6!
gtkSpinEnd ^5!
gtkSpinStepForward ^0!
gtkSpinHome ^4!
gtkSpinPageForward ^2! !

!Gtk class methodsFor: 'GtkTextBufferTargetInfo'!

gtkTextBufferTargetInfoBufferContents ^-1!
gtkTextBufferTargetInfoText ^-3!
gtkTextBufferTargetInfoRichText ^-2! !

!Gtk class methodsFor: 'GtkTextWindowType'!

gtkTextWindowRight ^4!
gtkTextWindowText ^2!
gtkTextWindowWidget ^1!
gtkTextWindowTop ^5!
gtkTextWindowPrivate ^0!
gtkTextWindowBottom ^6!
gtkTextWindowLeft ^3! !

!Gtk class methodsFor: 'GtkToolbarSpaceStyle'!

gtkToolbarSpaceEmpty ^0!
gtkToolbarSpaceLine ^1! !

!Gtk class methodsFor: 'enumerations'!

gtkToolPaletteDragItems ^1!
gtkToolPaletteDragGroups ^2! !

!Gtk class methodsFor: 'GtkUIManagerItemType'!

gtkUiManagerToolitem ^64!
gtkUiManagerMenu ^2!
gtkUiManagerToolbar ^4!
gtkUiManagerMenubar ^1!
gtkUiManagerAccelerator ^256!
gtkUiManagerPopup ^16!
gtkUiManagerPlaceholder ^8!
gtkUiManagerPopupWithAccels ^512!
gtkUiManagerSeparator ^128!
gtkUiManagerMenuitem ^32!
gtkUiManagerAuto ^0! !

!Gtk class methodsFor: 'enumerations'!

gtkClistReorderable ^128!
gtkClistAddMode ^16!
gtkClistDrawDragRect ^1024!
gtkClistDrawDragLine ^512!
gtkClistShowTitles ^4!
gtkClistRowHeightSet ^2!
gtkClistAutoResizeBlocked ^64!
gtkClistUseDragIcons ^256!
gtkClistInDrag ^1!
gtkClistAutoSort ^32! !

!Gtk class methodsFor: 'GtkCellType'!

gtkCellText ^1!
gtkCellPixtext ^3!
gtkCellEmpty ^0!
gtkCellPixmap ^2!
gtkCellWidget ^4! !

!Gtk class methodsFor: 'GtkCListDragPos'!

gtkClistDragBefore ^1!
gtkClistDragNone ^0!
gtkClistDragInto ^2!
gtkClistDragAfter ^3! !

!Gtk class methodsFor: 'GtkButtonAction'!

gtkButtonSelects ^1!
gtkButtonIgnored ^0!
gtkButtonExpands ^4!
gtkButtonDrags ^2! !

!Gtk class methodsFor: 'GtkCTreePos'!

gtkCtreePosAfter ^2!
gtkCtreePosAsChild ^1!
gtkCtreePosBefore ^0! !

!Gtk class methodsFor: 'GtkCTreeLineStyle'!

gtkCtreeLinesDotted ^2!
gtkCtreeLinesNone ^0!
gtkCtreeLinesTabbed ^3!
gtkCtreeLinesSolid ^1! !

!Gtk class methodsFor: 'GtkCTreeExpanderStyle'!

gtkCtreeExpanderNone ^0!
gtkCtreeExpanderTriangle ^2!
gtkCtreeExpanderSquare ^1!
gtkCtreeExpanderCircular ^3! !

!Gtk class methodsFor: 'GtkCTreeExpansionType'!

gtkCtreeExpansionCollapseRecursive ^3!
gtkCtreeExpansionToggle ^4!
gtkCtreeExpansionToggleRecursive ^5!
gtkCtreeExpansionExpandRecursive ^1!
gtkCtreeExpansionCollapse ^2!
gtkCtreeExpansionExpand ^0! !

!GValue class methodsFor: 'fundamental types'!

gTypeInvalid ^0!
gTypeNone ^4!
gTypeInterface ^8!
gTypeChar ^12!
gTypeUchar ^16!
gTypeBoolean ^20!
gTypeInt ^24!
gTypeUint ^28!
gTypeLong ^32!
gTypeUlong ^36!
gTypeInt64 ^40!
gTypeUint64 ^44!
gTypeEnum ^48!
gTypeFlags ^52!
gTypeFloat ^56!
gTypeDouble ^60!
gTypeString ^64!
gTypePointer ^68!
gTypeBoxed ^72!
gTypeParam ^76!
gTypeObject ^80! !

!Gtk class methodsFor: 'stock objects'!

gtkStockDialogInfo ^'gtk-dialog-info'!
gtkStockDialogWarning ^'gtk-dialog-warning'!
gtkStockDialogError ^'gtk-dialog-error'!
gtkStockDialogQuestion ^'gtk-dialog-question'!
gtkStockDnd ^'gtk-dnd'!
gtkStockDndMultiple ^'gtk-dnd-multiple'!
gtkStockAdd   ^'gtk-add'!
gtkStockApply ^'gtk-apply'!
gtkStockBold  ^'gtk-bold'!
gtkStockCancel ^'gtk-cancel'!
gtkStockCdrom ^'gtk-cdrom'!
gtkStockClear ^'gtk-clear'!
gtkStockClose ^'gtk-close'!
gtkStockColorPicker ^'gtk-color-picker'!
gtkStockConvert ^'gtk-convert'!
gtkStockCopy ^'gtk-copy'!
gtkStockCut ^'gtk-cut'!
gtkStockDelete ^'gtk-delete'!
gtkStockExecute ^'gtk-execute'!
gtkStockFind ^'gtk-find'!
gtkStockFindAndReplace ^'gtk-find-and-replace'!
gtkStockFloppy ^'gtk-floppy'!
gtkStockGotoBottom ^'gtk-goto-bottom'!
gtkStockGotoFirst ^'gtk-goto-first'!
gtkStockGotoLast ^'gtk-goto-last'!
gtkStockGotoTop ^'gtk-goto-top'!
gtkStockGoBack ^'gtk-go-back'!
gtkStockGoDown ^'gtk-go-down'!
gtkStockGoForward ^'gtk-go-forward'!
gtkStockGoUp ^'gtk-go-up'!
gtkStockHelp ^'gtk-help'!
gtkStockHome ^'gtk-home'!
gtkStockIndex ^'gtk-index'!
gtkStockItalic ^'gtk-italic'!
gtkStockJumpTo ^'gtk-jump-to'!
gtkStockJustifyCenter ^'gtk-justify-center'!
gtkStockJustifyFill ^'gtk-justify-fill'!
gtkStockJustifyLeft ^'gtk-justify-left'!
gtkStockJustifyRight ^'gtk-justify-right'!
gtkStockMissingImage ^'gtk-missing-image'!
gtkStockNew ^'gtk-new'!
gtkStockNo ^'gtk-no'!
gtkStockOk ^'gtk-ok'!
gtkStockOpen ^'gtk-open'!
gtkStockPaste ^'gtk-paste'!
gtkStockPreferences ^'gtk-preferences'!
gtkStockPrint ^'gtk-print'!
gtkStockPrintPreview ^'gtk-print-preview'!
gtkStockProperties ^'gtk-properties'!
gtkStockQuit ^'gtk-quit'!
gtkStockRedo ^'gtk-redo'!
gtkStockRefresh ^'gtk-refresh'!
gtkStockRemove ^'gtk-remove'!
gtkStockRevertToSaved ^'gtk-revert-to-saved'!
gtkStockSave ^'gtk-save'!
gtkStockSaveAs ^'gtk-save-as'!
gtkStockSelectColor ^'gtk-select-color'!
gtkStockSelectFont ^'gtk-select-font'!
gtkStockSortAscending ^'gtk-sort-ascending'!
gtkStockSortDescending ^'gtk-sort-descending'!
gtkStockSpellCheck ^'gtk-spell-check'!
gtkStockStop ^'gtk-stop'!
gtkStockStrikethrough ^'gtk-strikethrough'!
gtkStockUndelete ^'gtk-undelete'!
gtkStockUnderline ^'gtk-underline'!
gtkStockUndo ^'gtk-undo'!
gtkStockYes ^'gtk-yes'!
gtkStockZoom100 ^'gtk-zoom-100'!
gtkStockZoomFit ^'gtk-zoom-fit'!
gtkStockZoomIn ^'gtk-zoom-in'!
gtkStockZoomOut ^'gtk-zoom-out'! !

