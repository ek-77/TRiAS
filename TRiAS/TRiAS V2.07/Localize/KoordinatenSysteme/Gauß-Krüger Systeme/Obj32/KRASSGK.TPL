; Moduldefinitionsdatei f�r eine Koordinatentransformation

LIBRARY		KRASSGK

DESCRIPTION	'Koordinatentransformation Gau�-Kr�ger (Krassovski) V@A.@B.@C, (C) #@D'

EXPORTS
	COORDTRANSLOAD			= _CoordTransLoad@4			@1
	COORDTRANSUNLOAD		= _CoordTransUnLoad@0		@2
	COORDTRANSDESCRIPTION	= _CoordTransDescription@4	@3
	COORDTRANSASPECTRATIO	= _CoordTransAspectRatio@8	@4
	COORDTRANSMODE			= _CoordTransMode@4			@5
	TRANSFORM				= _Transform@8				@6
	INVTRANSFORM			= _InvTransform@8			@7
	COORDTRANSDISTANCE		= _CoordTransDistance@8		@8
	COORDTRANSTOSTRING		= _CoordTransToString@20	@9
	COORDTRANSTOVALUE		= _CoordTransToValue@4		@10
	COORDTRANSRECTANGLE		= _CoordTransRectangle@12	@11
	COORDTRANSISMETRIC		= _CoordTransIsMetric@0		@12
	COORDTRANSNATIVE		= _CoordTransNative@8		@13
	COORDTRANSMETRIC		= _CoordTransMetric@8		@14

	COORDTRANSNATIVEEX		= _CoordTransNativeEx@12	@15
	COORDTRANSMETRICEX		= _CoordTransMetricEx@12	@16
	COORDTRANSNATIVEPARAM	= _CoordTransNativeParam@8	@17
	COORDTRANSMETRICPARAM	= _CoordTransMetricParam@8	@18

	TRANSFORMEX				= _TransformEx@12			@19
	INVTRANSFORMEX			= _InvTransformEx@12		@20
;
	DllGetClassObject       = _DllGetClassObject@12		@21
	DllCanUnloadNow         = _DllCanUnloadNow@0		@22
	DllRegisterServer       = _DllRegisterServer@0		@23
	DllUnregisterServer     = _DllUnregisterServer@0	@24
