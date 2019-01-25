PK
     
{I�vKw.  .    package.xmlUT	 �5�W�5�Wux �e  d   <package>
  <name>GLUT</name>
  <namespace>OpenGL</namespace>
  <prereq>OpenGL</prereq>
  <module>gstglut</module>

  <filein>OpenGlut.st</filein>
  <filein>OpenGlutEnum.st</filein>
  <filein>OpenGlutCallbacks.st</filein>
  <filein>OpenGlutExampleObjects.st</filein>
  <file>ChangeLog</file>
</package>PK
     gwBy����-  �-    OpenGlut.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Glut Method Definitions
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Olivier Blanc.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
| 
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
| 
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



Object subclass: Glut [
    <category: 'OpenGL'>
    <comment: 'My instances are interfaces to OpenGL library with access to Glut.
See OpenGL programming guide for more informations.'>

    | init |
    glutInit: aName [
	<category: 'GLUT'>
	init isNil 
	    ifTrue: 
		[self cacheGlutInit: aName.
		init := true]
    ]

    cacheGlutInit: aName [
	<category: 'GLUT'>
	<cCall: 'glutInit' returning: #void args: #( #string )>
	
    ]

    glutInitWindowPosition: aVertex [
	<category: 'GLUT'>
	self glutInitWindowPosition: aVertex x asInteger y: aVertex y asInteger
    ]

    glutInitWindowPosition: aX y: aY [
	<category: 'GLUT'>
	<cCall: 'glutInitWindowPosition' returning: #void args: #( #int #int )>
	
    ]

    glutInitWindowSize: aVertex [
	<category: 'GLUT'>
	self glutInitWindowSize: aVertex x asInteger height: aVertex y asInteger
    ]

    glutInitWindowSize: x height: y [
	<category: 'GLUT'>
	<cCall: 'glutInitWindowSize' returning: #void args: #( #int #int )>
	
    ]

    glutInitDisplayMode: mode [
	<category: 'GLUT'>
	<cCall: 'glutInitDisplayMode' returning: #void args: #( #int )>
	
    ]

    glutMainLoop [
	<category: 'GLUT'>
	<cCall: 'glutMainLoop' returning: #void args: #()>
	
    ]

    glutCreateWindow: aName [
	<category: 'GLUT'>
	<cCall: 'glutCreateWindow' returning: #int args: #( #string )>
	
    ]

    glutCreateSubWindow: aWindow from: startPoint to: size [
	<category: 'GLUT'>
	self 
	    glutCreateSubWindow: aWindow
	    x: startPoint x
	    y: startPoint y
	    width: size x
	    height: size y
    ]

    glutCreateSubWindow: aWindow x: startPointX y: startPointY width: sizeX height: sizeY [
	<category: 'GLUT'>
	<cCall: 'glutCreateSubWindow' returning: #int args: #( #int #int #int #int #int )>
	
    ]

    glutDestroyWindow [
	<category: 'GLUT'>
	<cCall: 'glutDestroyWindow' returning: #void args: #( #int )>
	
    ]

    glutSetWindow: aWindow [
	<category: 'GLUT'>
	<cCall: 'glutSetWindow' returning: #void args: #( #int )>
	
    ]

    glutGetWindow [
	<category: 'GLUT'>
	<cCall: 'glutGetWindow' returning: #int args: #( #void )>
	
    ]

    glutSetWindowTitle: aTitle [
	<category: 'GLUT'>
	<cCall: 'glutSetWindowTitle' returning: #void args: #( #string )>
	
    ]

    glutSetIconTitle: aTitle [
	<category: 'GLUT'>
	<cCall: 'glutSetIconTitle' returning: #void args: #( #string )>
	
    ]

    glutReshapeWindow: aVertex [
	<category: 'GLUT'>
	self glutReshapeWindow: aVertex x asInteger height: aVertex y asInteger
    ]

    glutReshapeWindow: aWidth height: aHeight [
	<category: 'GLUT'>
	<cCall: 'glutReshapeWindow' returning: #void args: #( #int #int )>
	
    ]

    glutPositionWindow: aVertex [
	<category: 'GLUT'>
	self glutPositionWindow: aVertex x asInteger height: aVertex y asInteger
    ]

    glutPositionWindow: aX y: ay [
	<category: 'GLUT'>
	<cCall: 'glutPositionWindow' returning: #void args: #( #int #int )>
	
    ]

    glutShowWindow [
	<category: 'GLUT'>
	<cCall: 'glutShowWindow' returning: #void args: #( )>
	
    ]

    glutHideWindow [
	<category: 'GLUT'>
	<cCall: 'glutHideWindow' returning: #void args: #( )>
	
    ]

    glutIconifyWindow [
	<category: 'GLUT'>
	<cCall: 'glutIconifyWindow' returning: #void args: #( )>
	
    ]

    glutPushWindow [
	<category: 'GLUT'>
	<cCall: 'glutPushWindow' returning: #void args: #( )>
	
    ]

    glutPopWindow [
	<category: 'GLUT'>
	<cCall: 'glutPopWindow' returning: #void args: #( )>
	
    ]

    glutFullScreen [
	<category: 'GLUT'>
	<cCall: 'glutFullScreen' returning: #void args: #( )>
	
    ]

    glutPostWindowRedisplay: aWindow [
	<category: 'GLUT'>
	<cCall: 'glutPostWindowRedisplay' returning: #void args: #( #int )>
	
    ]

    glutPostRedisplay [
	<category: 'GLUT'>
	<cCall: 'glutPostRedisplay' returning: #void args: #()>
	
    ]

    glutSwapBuffers [
	<category: 'GLUT'>
	<cCall: 'glutSwapBuffers' returning: #void args: #( )>
	
    ]

    glutWarpPointers: aVertex [
	<category: 'GLUT'>
	self glutWarpPointers: aVertex x asInteger y: aVertex y asInteger
    ]

    glutWarpPointers: aX y: aY [
	<category: 'GLUT'>
	<cCall: 'glutPostRedisplay' returning: #void args: #( #int #int )>
	
    ]

    glutEstablishOverlay [
	<category: 'GLUT'>
	<cCall: 'glutEstablishOverlay' returning: #void args: #( )>
	
    ]

    glutRemoveOverlay [
	<category: 'GLUT'>
	<cCall: 'glutRemoveOverlay' returning: #void args: #( )>
	
    ]

    glutUseLayer: aLayer [
	<category: 'GLUT'>
	<cCall: 'glutUseLayer' returning: #void args: #( #int )>
	
    ]

    glutPostOverlayRedisplay [
	<category: 'GLUT'>
	<cCall: 'glutPostOverlayRedisplay' returning: #void args: #( )>
	
    ]

    glutPostWindowOverlayRedisplay: aWindow [
	<category: 'GLUT'>
	<cCall: 'glutPostWindowOverlayRedisplay' returning: #void args: #( #int )>
	
    ]

    glutShowOverlay [
	<category: 'GLUT'>
	<cCall: 'glutShowOverlay' returning: #void args: #( )>
	
    ]

    glutHideOverlay [
	<category: 'GLUT'>
	<cCall: 'glutHideOverlay' returning: #void args: #( )>
	
    ]

    glutCreateMenu: aSymbol [
	"glutCreateMenu A creer... cependant il y a un callback !"

	<category: 'GLUT'>
	<cCall: 'glutCreateMenu' returning: #int args: #( #smalltalk )>
	
    ]

    glutDestroyMenu: aMenu [
	<category: 'GLUT'>
	<cCall: 'glutDestroyMenu' returning: #void args: #( #int )>
	
    ]

    glutGetMenu [
	<category: 'GLUT'>
	<cCall: 'glutGetMenu' returning: #int args: #( )>
	
    ]

    glutSetMenu: aMenu [
	<category: 'GLUT'>
	<cCall: 'glutSetMenu' returning: #void args: #( #int )>
	
    ]

    glutAddMenuEntry: aLabel value: aValue [
	<category: 'GLUT'>
	<cCall: 'glutAddMenuEntry' returning: #void args: #( #string #int )>
	
    ]

    glutAddSubMenu: aLabel subMenu: aSubMenu [
	<category: 'GLUT'>
	<cCall: 'glutAddSubMenu' returning: #void args: #( #string #int )>
	
    ]

    glutChangeToMenuEntry: aItem label: aLabel value: aValue [
	<category: 'GLUT'>
	<cCall: 'glutChangeToMenuEntry' returning: #void args: #( #int #string #int )>
	
    ]

    glutChangeToSubMenu: aItem label: aLabel value: aValue [
	<category: 'GLUT'>
	<cCall: 'glutChangeToSubMenu' returning: #void args: #( #int #string #int )>
	
    ]

    glutRemoveMenuItem: item [
	<category: 'GLUT'>
	<cCall: 'glutRemoveMenuItem' returning: #void args: #( #int )>
	
    ]

    glutAttachMenu: button [
	<category: 'GLUT'>
	<cCall: 'glutAttachMenu' returning: #void args: #( #int )>
	
    ]

    glutDetachMenu: button [
	<category: 'GLUT'>
	<cCall: 'glutDetachMenu' returning: #void args: #( #int )>
	
    ]

    glutTimerFunc: time value: aValue [
	<category: 'GLUT'>
	<cCall: 'glutTimerFunc' returning: #void args: #( #int #int)>
	
    ]

    glutGet: aQuery [
	<category: 'GLUT'>
	<cCall: 'glutGet' returning: #int args: #( #int )>
	
    ]

    glutDeviceGet: aQuery [
	<category: 'GLUT'>
	<cCall: 'glutDeviceGet' returning: #int args: #( #int )>
	
    ]

    glutGetModifiers [
	<category: 'GLUT'>
	<cCall: 'glutGetModifiers' returning: #int args: #( )>
	
    ]

    glutLayerGet: aQuery [
	<category: 'GLUT'>
	<cCall: 'glutLayerGet' returning: #int args: #( #int )>
	
    ]

    glutGameModeString: aString [
	<category: 'GLUT'>
	<cCall: 'glutGameModeString' returning: #void args: #( #string )>
	
    ]

    glutEnterGameMode [
	<category: 'GLUT'>
	<cCall: 'glutEnterGameMode' returning: #void args: #( )>
	
    ]

    glutLeaveGameMode [
	<category: 'GLUT'>
	<cCall: 'glutLeaveGameMode' returning: #void args: #( )>
	
    ]

    glutGameModeGet: aQuery [
	<category: 'GLUT'>
	<cCall: 'glutGameModeGet' returning: #int args: #( #int )>
	
    ]

    glutVideoResizeGet: aQuery [
	<category: 'GLUT'>
	<cCall: 'glutVideoResizeGet' returning: #int args: #( #int )>
	
    ]

    glutSetupVideoResizing [
	<category: 'GLUT'>
	<cCall: 'glutSetupVideoResizing' returning: #void args: #( )>
	
    ]

    glutStopVideoResizing [
	<category: 'GLUT'>
	<cCall: 'glutStopVideoResizing' returning: #void args: #( )>
	
    ]

    glutVideoResize: startPoint to: aSize [
	<category: 'GLUT'>
	self 
	    glutVideoResize: startPoint x
	    y: startPoint y
	    width: aSize x
	    height: aSize y
    ]

    glutVideoResize: x y: y width: width height: height [
	<category: 'GLUT'>
	<cCall: 'glutVideoResize' returning: #void args: #( #int #int #int #int )>
	
    ]

    glutVideoPan: startPoint to: aSize [
	<category: 'GLUT'>
	self 
	    glutVideoPan: startPoint x
	    y: startPoint y
	    width: aSize x
	    height: aSize y
    ]

    glutVideoPan: x y: y width: width height: height [
	<category: 'GLUT'>
	<cCall: 'glutVideoPan' returning: #void args: #( #int #int #int #int )>
	
    ]

    glutSetColor: colorNumber color: aColor [
	<category: 'GLUT'>
	self 
	    glutSetColor: colorNumber
	    red: aColor red
	    green: aColor green
	    blue: aColor blue
    ]

    glutSetColor: colorNumber red: red green: green blue: blue [
	<category: 'GLUT'>
	<cCall: 'glutSetColor' returning: #void args: #( #int #float #float #float )>
	
    ]

    glutGetColor: colorNumber [
	<category: 'GLUT'>
	^Color 
	    red: (self glutGetColor: colorNumber component: Glut glutRed)
	    green: (self glutGetColor: colorNumber component: Glut glutGreen)
	    blue: (self glutGetColor: colorNumber component: Glut glutBlue)
    ]

    glutGetColor: colorNumber component: aComponent [
	<category: 'GLUT'>
	<cCall: 'glutGetColor' returning: #void args: #( #int #int )>
	
    ]

    glutCopyColormap: window [
	<category: 'GLUT'>
	<cCall: 'glutCopyColormap' returning: #void args: #( #int )>
	
    ]

    glutIgnoreKeyRepeat: ingnore [
	<category: 'GLUT'>
	<cCall: 'glutIgnoreKeyRepeat' returning: #void args: #( #int )>
	
    ]

    glutSetKeyRepeat: repeatMode [
	<category: 'GLUT'>
	<cCall: 'glutSetKeyRepeat' returning: #void args: #( #int )>
	
    ]

    glutExtensionSupported: extension [
	<category: 'GLUT'>
	<cCall: 'glutExtensionSupported' returning: #int args: #( #string )>
	
    ]

    glutReportErrors [
	<category: 'GLUT'>
	<cCall: 'glutReportErrors' returning: #void args: #( )>
	
    ]

    mainIteration [
	<category: 'Main interactions'>
	^ ([self realMainIteration] 
		forkAt: Processor userBackgroundPriority)
	    name: 'OpenGLMainIteration';
		resume;
		yourself
	
    ]

    realMainIteration [
	<category: 'Main interactions'>
	<cCall: 'glutMainLoop' returning: #void args: #( )>
	
    ]

    openGLInterface [
	<category: 'context'>
	^OpenGLInterface current
    ]

    doesNotUnderstand: aMessage [
	<category: 'context'>
	^aMessage sendTo: self openGLInterface
    ]
]

PK
     gwB�����0  �0    OpenGlutEnum.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Glut Constant Definitions
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Olivier Blanc.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
| 
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
| 
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



Glut class extend [

    glutActionExit [
	<category: 'constants'>
	^0
    ]

    glutActionGlutmainloopReturns [
	<category: 'constants'>
	^1
    ]

    glutActionContinueExecution [
	<category: 'constants'>
	^2
    ]

    glutCreateNewContext [
	<category: 'constants'>
	^0
    ]

    glutUseCurrentContext [
	<category: 'constants'>
	^1
    ]

    glutForceIndirectContext [
	<category: 'constants'>
	^0
    ]

    glutAllowDirectContext [
	<category: 'constants'>
	^1
    ]

    glutTryDirectContext [
	<category: 'constants'>
	^2
    ]

    glutForceDirectContext [
	<category: 'constants'>
	^3
    ]

    glutActionOnWindowClose [
	<category: 'constants'>
	^4345
    ]

    glutWindowBorderWidth [
	<category: 'constants'>
	^69386
    ]

    glutWindowHeaderHeight [
	<category: 'constants'>
	^69387
    ]

    glutVersion [
	<category: 'constants'>
	^69388
    ]

    glutRenderingContext [
	<category: 'constants'>
	^69389
    ]

    glutDirectRendering [
	<category: 'constants'>
	^69390
    ]

    glutAux1 [
	<category: 'constants'>
	^4096
    ]

    glutAux2 [
	<category: 'constants'>
	^8192
    ]

    glutAux3 [
	<category: 'constants'>
	^16384
    ]

    glutAux4 [
	<category: 'constants'>
	^32768
    ]

    glutApiVersion [
	<category: 'constants'>
	^4
    ]

    glutXlibImplementation [
	<category: 'constants'>
	^13
    ]

    glutKeyF1 [
	<category: 'constants'>
	^1
    ]

    glutKeyF2 [
	<category: 'constants'>
	^2
    ]

    glutKeyF3 [
	<category: 'constants'>
	^3
    ]

    glutKeyF4 [
	<category: 'constants'>
	^4
    ]

    glutKeyF5 [
	<category: 'constants'>
	^5
    ]

    glutKeyF6 [
	<category: 'constants'>
	^6
    ]

    glutKeyF7 [
	<category: 'constants'>
	^7
    ]

    glutKeyF8 [
	<category: 'constants'>
	^8
    ]

    glutKeyF9 [
	<category: 'constants'>
	^9
    ]

    glutKeyF10 [
	<category: 'constants'>
	^10
    ]

    glutKeyF11 [
	<category: 'constants'>
	^11
    ]

    glutKeyF12 [
	<category: 'constants'>
	^12
    ]

    glutKeyLeft [
	<category: 'constants'>
	^100
    ]

    glutKeyUp [
	<category: 'constants'>
	^101
    ]

    glutKeyRight [
	<category: 'constants'>
	^102
    ]

    glutKeyDown [
	<category: 'constants'>
	^103
    ]

    glutKeyPageUp [
	<category: 'constants'>
	^104
    ]

    glutKeyPageDown [
	<category: 'constants'>
	^105
    ]

    glutKeyHome [
	<category: 'constants'>
	^1546
    ]

    glutKeyEnd [
	<category: 'constants'>
	^1547
    ]

    glutKeyInsert [
	<category: 'constants'>
	^1548
    ]

    glutLeftButton [
	<category: 'constants'>
	^0
    ]

    glutMiddleButton [
	<category: 'constants'>
	^1
    ]

    glutRightButton [
	<category: 'constants'>
	^2
    ]

    glutDown [
	<category: 'constants'>
	^0
    ]

    glutUp [
	<category: 'constants'>
	^1
    ]

    glutLeft [
	<category: 'constants'>
	^0
    ]

    glutEntered [
	<category: 'constants'>
	^1
    ]

    glutRgb [
	<category: 'constants'>
	^0
    ]

    glutRgba [
	<category: 'constants'>
	^0
    ]

    glutIndex [
	<category: 'constants'>
	^1
    ]

    glutSingle [
	<category: 'constants'>
	^0
    ]

    glutDouble [
	<category: 'constants'>
	^2
    ]

    glutAccum [
	<category: 'constants'>
	^4
    ]

    glutAlpha [
	<category: 'constants'>
	^8
    ]

    glutDepth [
	<category: 'constants'>
	^16
    ]

    glutStencil [
	<category: 'constants'>
	^32
    ]

    glutMultisample [
	<category: 'constants'>
	^128
    ]

    glutStereo [
	<category: 'constants'>
	^256
    ]

    glutLuminance [
	<category: 'constants'>
	^512
    ]

    glutMenuNotInUse [
	<category: 'constants'>
	^0
    ]

    glutMenuInUse [
	<category: 'constants'>
	^1
    ]

    glutNotVisible [
	<category: 'constants'>
	^0
    ]

    glutVisible [
	<category: 'constants'>
	^1
    ]

    glutHidden [
	<category: 'constants'>
	^0
    ]

    glutFullyRetained [
	<category: 'constants'>
	^1
    ]

    glutPartiallyRetained [
	<category: 'constants'>
	^2
    ]

    glutFullyCovered [
	<category: 'constants'>
	^3
    ]

    glutWindowX [
	<category: 'constants'>
	^100
    ]

    glutWindowY [
	<category: 'constants'>
	^101
    ]

    glutWindowWidth [
	<category: 'constants'>
	^102
    ]

    glutWindowHeight [
	<category: 'constants'>
	^103
    ]

    glutWindowBufferSize [
	<category: 'constants'>
	^104
    ]

    glutWindowStencilSize [
	<category: 'constants'>
	^105
    ]

    glutWindowDepthSize [
	<category: 'constants'>
	^1546
    ]

    glutWindowRedSize [
	<category: 'constants'>
	^1547
    ]

    glutWindowGreenSize [
	<category: 'constants'>
	^1548
    ]

    glutWindowBlueSize [
	<category: 'constants'>
	^1549
    ]

    glutWindowAlphaSize [
	<category: 'constants'>
	^1550
    ]

    glutWindowAccumRedSize [
	<category: 'constants'>
	^1551
    ]

    glutWindowAccumGreenSize [
	<category: 'constants'>
	^112
    ]

    glutWindowAccumBlueSize [
	<category: 'constants'>
	^113
    ]

    glutWindowAccumAlphaSize [
	<category: 'constants'>
	^114
    ]

    glutWindowDoublebuffer [
	<category: 'constants'>
	^115
    ]

    glutWindowRgba [
	<category: 'constants'>
	^116
    ]

    glutWindowParent [
	<category: 'constants'>
	^117
    ]

    glutWindowNumChildren [
	<category: 'constants'>
	^118
    ]

    glutWindowColormapSize [
	<category: 'constants'>
	^119
    ]

    glutWindowNumSamples [
	<category: 'constants'>
	^120
    ]

    glutWindowStereo [
	<category: 'constants'>
	^121
    ]

    glutWindowCursor [
	<category: 'constants'>
	^1802
    ]

    glutScreenWidth [
	<category: 'constants'>
	^200
    ]

    glutScreenHeight [
	<category: 'constants'>
	^201
    ]

    glutScreenWidthMm [
	<category: 'constants'>
	^3082
    ]

    glutScreenHeightMm [
	<category: 'constants'>
	^3083
    ]

    glutMenuNumItems [
	<category: 'constants'>
	^4620
    ]

    glutDisplayModePossible [
	<category: 'constants'>
	^400
    ]

    glutInitWindowX [
	<category: 'constants'>
	^4340
    ]

    glutInitWindowY [
	<category: 'constants'>
	^4341
    ]

    glutInitWindowWidth [
	<category: 'constants'>
	^4342
    ]

    glutInitWindowHeight [
	<category: 'constants'>
	^4343
    ]

    glutInitDisplayMode [
	<category: 'constants'>
	^4344
    ]

    glutElapsedTime [
	<category: 'constants'>
	^133900
    ]

    glutWindowFormatId [
	<category: 'constants'>
	^1803
    ]

    glutInitState [
	<category: 'constants'>
	^1804
    ]

    glutHasKeyboard [
	<category: 'constants'>
	^600
    ]

    glutHasMouse [
	<category: 'constants'>
	^601
    ]

    glutHasSpaceball [
	<category: 'constants'>
	^9482
    ]

    glutHasDialAndButtonBox [
	<category: 'constants'>
	^9483
    ]

    glutHasTablet [
	<category: 'constants'>
	^9484
    ]

    glutNumMouseButtons [
	<category: 'constants'>
	^9485
    ]

    glutNumSpaceballButtons [
	<category: 'constants'>
	^9486
    ]

    glutNumButtonBoxButtons [
	<category: 'constants'>
	^9487
    ]

    glutNumDials [
	<category: 'constants'>
	^608
    ]

    glutNumTabletButtons [
	<category: 'constants'>
	^609
    ]

    glutDeviceIgnoreKeyRepeat [
	<category: 'constants'>
	^610
    ]

    glutDeviceKeyRepeat [
	<category: 'constants'>
	^611
    ]

    glutHasJoystick [
	<category: 'constants'>
	^612
    ]

    glutOwnsJoystick [
	<category: 'constants'>
	^613
    ]

    glutJoystickButtons [
	<category: 'constants'>
	^614
    ]

    glutJoystickAxes [
	<category: 'constants'>
	^615
    ]

    glutJoystickPollRate [
	<category: 'constants'>
	^616
    ]

    glutOverlayPossible [
	<category: 'constants'>
	^800
    ]

    glutLayerInUse [
	<category: 'constants'>
	^801
    ]

    glutHasOverlay [
	<category: 'constants'>
	^802
    ]

    glutTransparentIndex [
	<category: 'constants'>
	^803
    ]

    glutNormalDamaged [
	<category: 'constants'>
	^804
    ]

    glutOverlayDamaged [
	<category: 'constants'>
	^805
    ]

    glutVideoResizePossible [
	<category: 'constants'>
	^900
    ]

    glutVideoResizeInUse [
	<category: 'constants'>
	^901
    ]

    glutVideoResizeXDelta [
	<category: 'constants'>
	^902
    ]

    glutVideoResizeYDelta [
	<category: 'constants'>
	^903
    ]

    glutVideoResizeWidthDelta [
	<category: 'constants'>
	^904
    ]

    glutVideoResizeHeightDelta [
	<category: 'constants'>
	^905
    ]

    glutVideoResizeX [
	<category: 'constants'>
	^14346
    ]

    glutVideoResizeY [
	<category: 'constants'>
	^14347
    ]

    glutVideoResizeWidth [
	<category: 'constants'>
	^14348
    ]

    glutVideoResizeHeight [
	<category: 'constants'>
	^14349
    ]

    glutNormal [
	<category: 'constants'>
	^0
    ]

    glutOverlay [
	<category: 'constants'>
	^1
    ]

    glutActiveShift [
	<category: 'constants'>
	^1
    ]

    glutActiveCtrl [
	<category: 'constants'>
	^2
    ]

    glutActiveAlt [
	<category: 'constants'>
	^4
    ]

    glutCursorRightArrow [
	<category: 'constants'>
	^0
    ]

    glutCursorLeftArrow [
	<category: 'constants'>
	^1
    ]

    glutCursorInfo [
	<category: 'constants'>
	^2
    ]

    glutCursorDestroy [
	<category: 'constants'>
	^3
    ]

    glutCursorHelp [
	<category: 'constants'>
	^4
    ]

    glutCursorCycle [
	<category: 'constants'>
	^5
    ]

    glutCursorSpray [
	<category: 'constants'>
	^6
    ]

    glutCursorWait [
	<category: 'constants'>
	^7
    ]

    glutCursorText [
	<category: 'constants'>
	^8
    ]

    glutCursorCrosshair [
	<category: 'constants'>
	^9
    ]

    glutCursorUpDown [
	<category: 'constants'>
	^10
    ]

    glutCursorLeftRight [
	<category: 'constants'>
	^11
    ]

    glutCursorTopSide [
	<category: 'constants'>
	^12
    ]

    glutCursorBottomSide [
	<category: 'constants'>
	^13
    ]

    glutCursorLeftSide [
	<category: 'constants'>
	^14
    ]

    glutCursorRightSide [
	<category: 'constants'>
	^15
    ]

    glutCursorTopLeftCorner [
	<category: 'constants'>
	^16
    ]

    glutCursorTopRightCorner [
	<category: 'constants'>
	^17
    ]

    glutCursorBottomRightCorner [
	<category: 'constants'>
	^18
    ]

    glutCursorBottomLeftCorner [
	<category: 'constants'>
	^19
    ]

    glutCursorInherit [
	<category: 'constants'>
	^100
    ]

    glutCursorNone [
	<category: 'constants'>
	^101
    ]

    glutCursorFullCrosshair [
	<category: 'constants'>
	^102
    ]

    glutRed [
	<category: 'constants'>
	^0
    ]

    glutGreen [
	<category: 'constants'>
	^1
    ]

    glutBlue [
	<category: 'constants'>
	^2
    ]

    glutKeyRepeatOff [
	<category: 'constants'>
	^0
    ]

    glutKeyRepeatOn [
	<category: 'constants'>
	^1
    ]

    glutKeyRepeatDefault [
	<category: 'constants'>
	^2
    ]

    glutJoystickButtonA [
	<category: 'constants'>
	^1
    ]

    glutJoystickButtonB [
	<category: 'constants'>
	^2
    ]

    glutJoystickButtonC [
	<category: 'constants'>
	^4
    ]

    glutJoystickButtonD [
	<category: 'constants'>
	^8
    ]

    glutGameModeActive [
	<category: 'constants'>
	^0
    ]

    glutGameModePossible [
	<category: 'constants'>
	^1
    ]

    glutGameModeWidth [
	<category: 'constants'>
	^2
    ]

    glutGameModeHeight [
	<category: 'constants'>
	^3
    ]

    glutGameModePixelDepth [
	<category: 'constants'>
	^4
    ]

    glutGameModeRefreshRate [
	<category: 'constants'>
	^5
    ]

    glutGameModeDisplayChanged [
	<category: 'constants'>
	^6
    ]

]

PK
     gwB�db��  �    OpenGlutCallbacks.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Glut Method Definitions for C->Smalltalk callbacks
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Olivier Blanc.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
| 
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
| 
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



Glut extend [

    | callbacks |

    Glut class >> createMenuEvent [
	<category: 'Events definition'>
	^1
    ]

    Glut class >> timerFuncEvent [
	<category: 'Events definition'>
	^2
    ]

    Glut class >> idleFuncEvent [
	<category: 'Events definition'>
	^3
    ]

    Glut class >> keyboardFuncEvent [
	<category: 'Events definition'>
	^4
    ]

    Glut class >> specialFuncEvent [
	<category: 'Events definition'>
	^5
    ]

    Glut class >> reshapeFuncEvent [
	<category: 'Events definition'>
	^6
    ]

    Glut class >> visibilityFuncEvent [
	<category: 'Events definition'>
	^7
    ]

    Glut class >> displayFuncEvent [
	<category: 'Events definition'>
	^8
    ]

    Glut class >> mouseFuncEvent [
	<category: 'Events definition'>
	^9
    ]

    Glut class >> motionFuncEvent [
	<category: 'Events definition'>
	^10
    ]

    Glut class >> passiveMotionFuncEvent [
	<category: 'Events definition'>
	^11
    ]

    Glut class >> entryFuncEvent [
	<category: 'Events definition'>
	^12
    ]

    Glut class >> keyboardUpFuncEvent [
	<category: 'Events definition'>
	^13
    ]

    Glut class >> specialUpFuncEvent [
	<category: 'Events definition'>
	^14
    ]

    Glut class >> joystickFuncEvent [
	<category: 'Events definition'>
	^15
    ]

    Glut class >> menuStateFuncEvent [
	<category: 'Events definition'>
	^16
    ]

    Glut class >> menuStatusFuncEvent [
	<category: 'Events definition'>
	^17
    ]

    Glut class >> overlayDisplayFuncEvent [
	<category: 'Events definition'>
	^18
    ]

    Glut class >> windowStatusFuncEvent [
	<category: 'Events definition'>
	^19
    ]

    Glut class >> spaceballMotionFuncEvent [
	<category: 'Events definition'>
	^20
    ]

    Glut class >> spaceballRotateFuncEvent [
	<category: 'Events definition'>
	^21
    ]

    Glut class >> spaceballButtonFuncEvent [
	<category: 'Events definition'>
	^22
    ]

    Glut class >> buttonBoxFuncEvent [
	<category: 'Events definition'>
	^23
    ]

    Glut class >> dialsFuncEvent [
	<category: 'Events definition'>
	^24
    ]

    Glut class >> tabletMotionFuncEvent [
	<category: 'Events definition'>
	^25
    ]

    Glut class >> tabletButtonFuncEvent [
	<category: 'Events definition'>
	^26
    ]

    Glut class >> mouseWheelFuncEvent [
	<category: 'Events definition'>
	^27
    ]

    Glut class >> closeFuncEvent [
	<category: 'Events definition'>
	^28
    ]

    Glut class >> wMCloseFuncEvent [
	<category: 'Events definition'>
	^29
    ]

    Glut class >> menuDestroyFuncEvent [
	<category: 'Events definition'>
	^30
    ]

    Glut class >> lastEventIndex [
	<category: 'Events definition'>
	^30
    ]

    callbacks [
	<category: 'callbacks definition'>
	^callbacks
    ]

    callback: anEvent to: aBlock [
	<category: 'callbacks definition'>
	callbacks isNil 
	    ifTrue: [callbacks := Array new: Glut lastEventIndex].
	callbacks at: anEvent put: (Array with: aBlock with: nil).
	self connect: anEvent.
	^self
    ]

    callback: anEvent to: anObject selector: aSelector [
	<category: 'callbacks definition'>
	callbacks isNil 
	    ifTrue: [callbacks := Array new: Glut lastEventIndex].
	callbacks at: anEvent put: (Array with: anObject with: aSelector).
	self connect: anEvent.
	^self
    ]

    getCallback: anEvent [
	<category: 'callbacks definition'>
	^callbacks at: anEvent
    ]

    connect: event [
	<category: 'Main interactions'>
	<cCall: 'openglutConnectSignal' 
		returning: #void
		args: #( #selfSmalltalk  #int )>
	
    ]

]

PK
     gwB�E�  �    OpenGlutExampleObjects.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Glut Method Definitions for quadrics and other example 3D objects
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Olivier Blanc.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
| 
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
| 
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



OpenGLInterface extend [
    glutWireCube: aScale [
	<category: 'GLUT'>
	<cCall: 'glutWireCube' returning: #void args: #( #double )>
	
    ]

    glutSolidCube: aScale [
	<category: 'GLUT'>
	<cCall: 'glutSolidCube' returning: #void args: #( #double )>
	
    ]

    glutWireSphere: radius slices: slices stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutWireSphere' returning: #void args: #( #double #int #int )>
	
    ]

    glutSolidSphere: radius slices: slices stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutSolidSphere' returning: #void args: #( #double #int #int )>
	
    ]

    glutWireCone: base height: height slices: slices stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutWireCone' returning: #void args: #( #double #double #int #int )>
	
    ]

    glutSolidCone: base height: height slices: slices stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutSolidCone' returning: #void args: #( #double #double #int #int )>
	
    ]

    glutWireTorus: innerRadius outerRadius: outerRadius sides: sides stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutWireCone' returning: #void args: #( #double #double #int #int )>
	
    ]

    glutSolidTorus: innerRadius outerRadius: outerRadius sides: sides stacks: stacks [
	<category: 'GLUT'>
	<cCall: 'glutSolidTorus' returning: #void args: #( #double #double #int #int )>
	
    ]

    glutWireDodecahedron [
	<category: 'GLUT'>
	<cCall: 'glutWireDodecahedron' returning: #void args: #( )>
	
    ]

    glutSolidDodecahedron [
	<category: 'GLUT'>
	<cCall: 'glutSolidDodecahedron' returning: #void args: #( )>
	
    ]

    glutWireOctahedron [
	<category: 'GLUT'>
	<cCall: 'glutWireOctahedron' returning: #void args: #( )>
	
    ]

    glutSolidOctahedron [
	<category: 'GLUT'>
	<cCall: 'glutSolidOctahedron' returning: #void args: #( )>
	
    ]

    glutWireTetrahedron [
	<category: 'GLUT'>
	<cCall: 'glutWireTetrahedron' returning: #void args: #( )>
	
    ]

    glutSolidTetrahedron [
	<category: 'GLUT'>
	<cCall: 'glutSolidTetrahedron' returning: #void args: #( )>
	
    ]

    glutWireIcosahedron [
	<category: 'GLUT'>
	<cCall: 'glutWireIcosahedron' returning: #void args: #( )>
	
    ]

    glutSolidIcosahedron [
	<category: 'GLUT'>
	<cCall: 'glutSolidIcosahedron' returning: #void args: #( )>
	
    ]

    glutWireTeapot: aScale [
	<category: 'GLUT'>
	<cCall: 'glutWireTeapot' returning: #void args: #( #double )>
	
    ]

    glutSolidTeapot: aScale [
	<category: 'GLUT'>
	<cCall: 'glutSolidTeapot' returning: #void args: #( #double )>
	
    ]
]
PK    gwBJ]���   �  	  ChangeLogUT	 �NQ�NQux �e  d   ���N�0���)|Fj�V��4M�&�X���벹q�8���i�	q@n����~�֕.���7 φ�a�����s�nCVܷ�����h�ɴ�������C��=e�	�{O�1mREQk}_껲� �g�=l�7"x��NzM&rTe�5�e�";��J����3� w1�C9������x�1r/`����˛&�$Ӏr��]rܖ��g���t���Gt2�y����$��OPK
     
{I�vKw.  .            ��    package.xmlUT �5�Wux �e  d   PK
     gwBy����-  �-            ��s  OpenGlut.stUT �NQux �e  d   PK
     gwB�����0  �0            ��c/  OpenGlutEnum.stUT �NQux �e  d   PK
     gwB�db��  �            ��B`  OpenGlutCallbacks.stUT �NQux �e  d   PK
     gwB�E�  �            ��%s  OpenGlutExampleObjects.stUT �NQux �e  d   PK    gwBJ]���   �  	         ��Z�  ChangeLogUT �NQux �e  d   PK      �  ��    