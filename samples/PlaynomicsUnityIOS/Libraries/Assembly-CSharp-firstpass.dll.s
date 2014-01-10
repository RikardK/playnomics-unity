#if defined(__arm__)
.text
	.align 3
methods:
	.space 16
	.align 2
Lm_4:
m_Playnomics__ctor:
_m_4:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_4:
	.align 2
Lm_5:
m_Playnomics__cctor:
_m_5:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . -4
	.byte 1,16,159,231,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - .
	.byte 0,0,159,231,0,16,128,229,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_5:
	.align 2
Lm_6:
m_Playnomics_get_PlacementDelegate:
_m_6:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,13,176,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_6:
	.align 2
Lm_7:
m_Playnomics_set_PlacementDelegate_IPlaynomicsPlacementDelegate:
_m_7:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,16,155,229,0,16,128,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_7:
	.align 2
Lm_12:
m_Playnomics_StartSDK_long:
_m_12:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,155,229,4,16,155,229
bl p_2
bl p_3

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_12:
	.align 2
Lm_13:
m_Playnomics_StartSDK_long_string:
_m_13:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 8,32,139,229,0,0,155,229,4,16,155,229,8,32,155,229
bl p_4
bl p_3

	.byte 16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_13:
	.align 2
Lm_14:
m_Playnomics_InitializeGameObjects:
_m_14:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 8
	.byte 0,0,159,231,0,0,208,229,0,0,80,227,42,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 12
	.byte 0,0,159,231,4,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 16
	.byte 0,0,159,231
bl p_5

	.byte 4,16,155,229,0,0,139,229
bl p_6

	.byte 0,16,155,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 20
	.byte 0,0,159,231,0,16,128,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 20
	.byte 0,0,159,231,0,32,144,229,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 24
	.byte 1,16,159,231,2,0,160,225,0,224,146,229
bl p_7

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 20
	.byte 0,0,159,231,0,0,144,229
bl p_8

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 8
	.byte 0,0,159,231,1,16,160,227,0,16,192,229,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_14:
	.align 2
Lm_15:
m_Playnomics_CustomEvent_string:
_m_15:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_9

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_15:
	.align 2
Lm_16:
m_Playnomics_TransactionInUSD_single_int:
_m_16:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,8,0,139,229,12,16,139,229
	.byte 2,10,155,237,192,42,183,238,194,11,183,238,2,10,13,237,8,0,29,229,12,16,155,229
bl p_10

	.byte 16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_16:
	.align 2
Lm_17:
m_Playnomics_PreloadPlacements_string__:
_m_17:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,112,89,45,233,12,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
	.byte 12,0,144,229,0,0,80,227,15,0,0,10,0,80,155,229,0,64,160,227,9,0,0,234,12,0,149,229,4,0,80,225
	.byte 13,0,0,155,4,1,160,225,0,0,133,224,16,0,128,226,0,96,144,229,6,0,160,225
bl p_11

	.byte 1,64,132,226,12,0,149,229,0,0,84,225,242,255,255,186,12,208,139,226,112,9,189,232,8,112,157,229,0,160,157,232
	.byte 14,16,160,225,0,0,159,229
bl p_12

	.byte 120,6,0,2

Lme_17:
	.align 2
Lm_18:
m_Playnomics_ShowPlacement_string:
_m_18:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_13

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_18:
	.align 2
Lm_19:
m_Playnomics_HidePlacement_string:
_m_19:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_14

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_19:
	.align 2
Lm_1a:
m_Playnomics_AttributeInstall_string:
_m_1a:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_15

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1a:
	.align 2
Lm_1b:
m_Playnomics_AttributeInstall_string_string:
_m_1b:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,155,229,4,16,155,229
bl p_16

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1b:
	.align 2
Lm_1c:
m_Playnomics_AttributeInstall_string_string_System_DateTime:
_m_1c:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,104,208,77,226,13,176,160,225,84,0,139,229,88,16,139,229
	.byte 92,32,139,229,96,48,139,229,128,224,157,229,100,224,139,229,0,0,160,227,24,0,139,229,0,0,160,227,28,0,139,229
	.byte 0,0,160,227,32,0,139,229,0,0,160,227,44,0,139,229,0,0,160,227,48,0,139,229,24,0,139,226,178,16,160,227
	.byte 7,28,129,226,1,32,160,227,1,48,160,227,0,192,160,227,0,192,141,229,0,192,160,227,4,192,141,229,0,192,160,227
	.byte 8,192,141,229,1,192,160,227,12,192,141,229
bl p_17

	.byte 92,16,139,226,60,0,139,226
bl p_18

	.byte 24,0,155,229,72,0,139,229,28,0,155,229,76,0,139,229,32,0,155,229,80,0,139,229,44,0,139,226,60,16,155,229
	.byte 64,32,155,229,68,48,155,229,72,192,155,229,0,192,141,229,76,192,155,229,4,192,141,229,80,192,155,229,8,192,141,229
bl p_19

	.byte 44,0,139,226
bl p_20

	.byte 18,11,65,236,2,43,141,237,8,0,157,229,12,16,157,229
bl p_21

	.byte 56,16,139,229,52,0,139,229,36,0,139,229,56,0,155,229,40,0,139,229,84,0,155,229,88,16,155,229,52,32,155,229
	.byte 56,48,155,229
bl p_22

	.byte 104,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1c:
	.align 2
Lm_1d:
m_Playnomics_OnShow_string:
_m_1d:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,19,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,8,0,139,229,0,0,155,229,4,16,155,229
bl _m_21

	.byte 0,16,160,225,8,32,155,229,2,0,160,225,0,32,146,229,0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 28
	.byte 8,128,159,231,4,224,143,226,64,240,18,229,0,0,0,0,16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1d:
	.align 2
Lm_1e:
m_Playnomics_OnClose_string:
_m_1e:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,19,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,8,0,139,229,0,0,155,229,4,16,155,229
bl _m_21

	.byte 0,16,160,225,8,32,155,229,2,0,160,225,0,32,146,229,0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 32
	.byte 8,128,159,231,4,224,143,226,44,240,18,229,0,0,0,0,16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1e:
	.align 2
Lm_1f:
m_Playnomics_OnTouch_string:
_m_1f:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,19,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,8,0,139,229,0,0,155,229,4,16,155,229
bl _m_21

	.byte 0,16,160,225,8,32,155,229,2,0,160,225,0,32,146,229,0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 36
	.byte 8,128,159,231,4,224,143,226,56,240,18,229,0,0,0,0,16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1f:
	.align 2
Lm_20:
m_Playnomics_OnRenderFailed_string:
_m_20:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,13,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 4
	.byte 0,0,159,231,0,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 40
	.byte 8,128,159,231,4,224,143,226,60,240,17,229,0,0,0,0,8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_20:
	.align 2
Lm_21:
m_Playnomics_GetJsonData_string:
_m_21:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,64,89,45,233,52,208,77,226,13,176,160,225,40,0,139,229,44,16,139,229
	.byte 0,0,160,227,0,0,139,229,0,0,160,227,4,0,139,229,44,0,155,229
bl p_23

	.byte 0,0,80,227,1,0,0,10,0,96,160,227,25,0,0,234,44,0,155,229
bl p_24

	.byte 0,96,160,225,21,0,0,234,8,0,155,229,8,0,155,229,0,0,139,229
bl p_25

	.byte 32,0,139,229,0,0,80,227,1,0,0,10,32,0,155,229
bl p_26

	.byte 9,0,0,234,12,0,155,229,12,0,155,229,4,0,139,229
bl p_25

	.byte 36,0,139,229,0,0,80,227,1,0,0,10,36,0,155,229
bl p_26

	.byte 255,255,255,234,0,0,160,227,1,0,0,234,6,0,160,225,255,255,255,234,52,208,139,226,64,9,189,232,8,112,157,229
	.byte 0,160,157,232

Lme_21:
	.align 2
Lm_23:
m_wrapper_managed_to_native_System_Array_GetGenericValueImpl_int_object_:
_m_23:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
bl p_27

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,0,0,80,227,16,0,0,10,0,0,155,229,4,16,155,229,8,32,155,229
bl p_28

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,10,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232,150,0,160,227,6,12,128,226,2,4,128,226
bl p_29
bl p_26
bl p_30

	.byte 242,255,255,234

Lme_23:
	.align 2
Lm_24:
m_wrapper_managed_to_native_Playnomics_PNStart_long:
_m_24:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229
bl p_27

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,4,16,155,229
bl p_31

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,5,0,0,26,8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232
bl p_30

	.byte 247,255,255,234

Lme_24:
	.align 2
Lm_25:
m_wrapper_managed_to_native_Playnomics_PNStartWithUserId_long_string:
_m_25:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,2,160,160,225
bl p_27

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225,0,0,155,229,4,16,155,229,10,32,160,225
bl p_33

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_25:
	.align 2
Lm_26:
m_wrapper_managed_to_native_Playnomics_PNCustomEvent_string:
_m_26:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225
bl p_35

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_26:
	.align 2
Lm_27:
m_wrapper_managed_to_native_Playnomics_PNTransactionInUSD_single_int:
_m_27:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,8,0,139,229,12,16,139,229
bl p_27

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 2,10,155,237,192,42,183,238,194,11,183,238,2,10,13,237,8,0,29,229,12,16,155,229
bl p_36

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,5,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232
bl p_30

	.byte 247,255,255,234

Lme_27:
	.align 2
Lm_28:
m_wrapper_managed_to_native_Playnomics_PNPreloadPlacement_string:
_m_28:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225
bl p_37

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_28:
	.align 2
Lm_29:
m_wrapper_managed_to_native_Playnomics_PNShowPlacement_string:
_m_29:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225
bl p_38

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_29:
	.align 2
Lm_2a:
m_wrapper_managed_to_native_Playnomics_PNHidePlacement_string:
_m_2a:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225
bl p_39

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_2a:
	.align 2
Lm_2b:
m_wrapper_managed_to_native_Playnomics_PNAttributeInstall_string:
_m_2b:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 10,0,160,225
bl p_32

	.byte 0,160,160,225
bl p_40

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,7,0,0,26,10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 245,255,255,234

Lme_2b:
	.align 2
Lm_2c:
m_wrapper_managed_to_native_Playnomics_PNAttributeInstallWithCampaign_string_string:
_m_2c:

	.byte 13,192,160,225,240,95,45,233,104,208,77,226,13,176,160,225,0,96,160,225,1,160,160,225
bl p_27

	.byte 0,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 6,0,160,225
bl p_32

	.byte 0,96,160,225,10,0,160,225
bl p_32

	.byte 0,160,160,225,6,0,160,225,10,16,160,225
bl p_41

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,9,0,0,26,6,0,160,225
bl p_34

	.byte 10,0,160,225
bl p_34

	.byte 0,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 243,255,255,234

Lme_2c:
	.align 2
Lm_2d:
m_wrapper_managed_to_native_Playnomics_PNAttributeInstallWithCampaignTime_string_string_long:
_m_2d:

	.byte 13,192,160,225,240,95,45,233,112,208,77,226,13,176,160,225,0,96,160,225,1,160,160,225,0,32,139,229,4,48,139,229
bl p_27

	.byte 8,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 6,0,160,225
bl p_32

	.byte 0,96,160,225,10,0,160,225
bl p_32

	.byte 0,160,160,225,6,0,160,225,10,16,160,225,0,32,155,229,4,48,155,229
bl p_42

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 44
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,9,0,0,26,6,0,160,225
bl p_34

	.byte 10,0,160,225
bl p_34

	.byte 8,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229,104,208,130,226,240,175,157,232
bl p_30

	.byte 243,255,255,234

Lme_2d:
.text
	.align 3
methods_end:
.data
	.align 3
method_addresses:
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long _m_4
	.align 2
	.long _m_5
	.align 2
	.long _m_6
	.align 2
	.long _m_7
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long _m_12
	.align 2
	.long _m_13
	.align 2
	.long _m_14
	.align 2
	.long _m_15
	.align 2
	.long _m_16
	.align 2
	.long _m_17
	.align 2
	.long _m_18
	.align 2
	.long _m_19
	.align 2
	.long _m_1a
	.align 2
	.long _m_1b
	.align 2
	.long _m_1c
	.align 2
	.long _m_1d
	.align 2
	.long _m_1e
	.align 2
	.long _m_1f
	.align 2
	.long _m_20
	.align 2
	.long _m_21
	.align 2
	.long 0
	.align 2
	.long _m_23
	.align 2
	.long _m_24
	.align 2
	.long _m_25
	.align 2
	.long _m_26
	.align 2
	.long _m_27
	.align 2
	.long _m_28
	.align 2
	.long _m_29
	.align 2
	.long _m_2a
	.align 2
	.long _m_2b
	.align 2
	.long _m_2c
	.align 2
	.long _m_2d
.text
	.align 3
method_offsets:

	.long -1,-1,-1,-1,Lm_4 - methods,Lm_5 - methods,Lm_6 - methods,Lm_7 - methods
	.long -1,-1,-1,-1,-1,-1,-1,-1
	.long -1,-1,Lm_12 - methods,Lm_13 - methods,Lm_14 - methods,Lm_15 - methods,Lm_16 - methods,Lm_17 - methods
	.long Lm_18 - methods,Lm_19 - methods,Lm_1a - methods,Lm_1b - methods,Lm_1c - methods,Lm_1d - methods,Lm_1e - methods,Lm_1f - methods
	.long Lm_20 - methods,Lm_21 - methods,-1,Lm_23 - methods,Lm_24 - methods,Lm_25 - methods,Lm_26 - methods,Lm_27 - methods
	.long Lm_28 - methods,Lm_29 - methods,Lm_2a - methods,Lm_2b - methods,Lm_2c - methods,Lm_2d - methods

.text
	.align 3
method_info:
mi:
Lm_4_p:

	.byte 3,0,0
Lm_5_p:

	.byte 3,0,2,2,3
Lm_6_p:

	.byte 3,0,1,4
Lm_7_p:

	.byte 3,0,1,4
Lm_12_p:

	.byte 3,0,0
Lm_13_p:

	.byte 3,0,0
Lm_14_p:

	.byte 3,0,8,5,6,7,8,8,9,8,5
Lm_15_p:

	.byte 3,0,0
Lm_16_p:

	.byte 3,0,0
Lm_17_p:

	.byte 3,0,0
Lm_18_p:

	.byte 3,0,0
Lm_19_p:

	.byte 3,0,0
Lm_1a_p:

	.byte 3,0,0
Lm_1b_p:

	.byte 3,0,0
Lm_1c_p:

	.byte 3,0,0
Lm_1d_p:

	.byte 3,0,3,4,4,10
Lm_1e_p:

	.byte 3,0,3,4,4,11
Lm_1f_p:

	.byte 3,0,3,4,4,12
Lm_20_p:

	.byte 3,0,3,4,4,13
Lm_21_p:

	.byte 3,0,0
Lm_23_p:

	.byte 0,1,14
Lm_24_p:

	.byte 3,0,1,14
Lm_25_p:

	.byte 3,0,1,14
Lm_26_p:

	.byte 3,0,1,14
Lm_27_p:

	.byte 3,0,1,14
Lm_28_p:

	.byte 3,0,1,14
Lm_29_p:

	.byte 3,0,1,14
Lm_2a_p:

	.byte 3,0,1,14
Lm_2b_p:

	.byte 3,0,1,14
Lm_2c_p:

	.byte 3,0,1,14
Lm_2d_p:

	.byte 3,0,1,14
.text
	.align 3
method_info_offsets:

	.long 0,0,0,0,Lm_4_p - mi,Lm_5_p - mi,Lm_6_p - mi,Lm_7_p - mi
	.long 0,0,0,0,0,0,0,0
	.long 0,0,Lm_12_p - mi,Lm_13_p - mi,Lm_14_p - mi,Lm_15_p - mi,Lm_16_p - mi,Lm_17_p - mi
	.long Lm_18_p - mi,Lm_19_p - mi,Lm_1a_p - mi,Lm_1b_p - mi,Lm_1c_p - mi,Lm_1d_p - mi,Lm_1e_p - mi,Lm_1f_p - mi
	.long Lm_20_p - mi,Lm_21_p - mi,0,Lm_23_p - mi,Lm_24_p - mi,Lm_25_p - mi,Lm_26_p - mi,Lm_27_p - mi
	.long Lm_28_p - mi,Lm_29_p - mi,Lm_2a_p - mi,Lm_2b_p - mi,Lm_2c_p - mi,Lm_2d_p - mi

.text
	.align 3
extra_method_info:

	.byte 0,1,6,83,121,115,116,101,109,46,65,114,114,97,121,58,71,101,116,71,101,110,101,114,105,99,86,97,108,117,101,73
	.byte 109,112,108,32,40,105,110,116,44,111,98,106,101,99,116,38,41,0,1,6,80,108,97,121,110,111,109,105,99,115,58,80
	.byte 78,83,116,97,114,116,32,40,108,111,110,103,41,0,1,6,80,108,97,121,110,111,109,105,99,115,58,80,78,83,116,97
	.byte 114,116,87,105,116,104,85,115,101,114,73,100,32,40,108,111,110,103,44,115,116,114,105,110,103,41,0,1,6,80,108,97
	.byte 121,110,111,109,105,99,115,58,80,78,67,117,115,116,111,109,69,118,101,110,116,32,40,115,116,114,105,110,103,41,0,1
	.byte 6,80,108,97,121,110,111,109,105,99,115,58,80,78,84,114,97,110,115,97,99,116,105,111,110,73,110,85,83,68,32,40
	.byte 115,105,110,103,108,101,44,105,110,116,41,0,1,6,80,108,97,121,110,111,109,105,99,115,58,80,78,80,114,101,108,111
	.byte 97,100,80,108,97,99,101,109,101,110,116,32,40,115,116,114,105,110,103,41,0,1,6,80,108,97,121,110,111,109,105,99
	.byte 115,58,80,78,83,104,111,119,80,108,97,99,101,109,101,110,116,32,40,115,116,114,105,110,103,41,0,1,6,80,108,97
	.byte 121,110,111,109,105,99,115,58,80,78,72,105,100,101,80,108,97,99,101,109,101,110,116,32,40,115,116,114,105,110,103,41
	.byte 0,1,6,80,108,97,121,110,111,109,105,99,115,58,80,78,65,116,116,114,105,98,117,116,101,73,110,115,116,97,108,108
	.byte 32,40,115,116,114,105,110,103,41,0,1,6,80,108,97,121,110,111,109,105,99,115,58,80,78,65,116,116,114,105,98,117
	.byte 116,101,73,110,115,116,97,108,108,87,105,116,104,67,97,109,112,97,105,103,110,32,40,115,116,114,105,110,103,44,115,116
	.byte 114,105,110,103,41,0,1,6,80,108,97,121,110,111,109,105,99,115,58,80,78,65,116,116,114,105,98,117,116,101,73,110
	.byte 115,116,97,108,108,87,105,116,104,67,97,109,112,97,105,103,110,84,105,109,101,32,40,115,116,114,105,110,103,44,115,116
	.byte 114,105,110,103,44,108,111,110,103,41,0

.text
	.align 3
extra_method_table:

	.long 19,0,0,0,0,0,0,0
	.long 0,0,0,0,0,78,37,21
	.long 0,0,0,422,45,0,0,0
	.long 0,50,36,19,123,38,0,204
	.long 40,0,0,0,0,0,0,0
	.long 321,43,0,0,0,0,1,35
	.long 0,0,0,0,0,0,0,245
	.long 41,20,159,39,0,283,42,0
	.long 362,44,0
.text
	.align 3
extra_method_info_offsets:

	.long 11,35,1,36,50,37,78,38
	.long 123,39,159,40,204,41,245,42
	.long 283,43,321,44,362,45,422
.text
	.align 3
method_order:

	.long 4,16777215,4,5,6,7,18,19
	.long 20,21,22,23,24,25,26,27
	.long 28,29,30,31,32,33,35,36
	.long 37,38,39,40,41,42,43,44
	.long 45

.text
method_order_end:
.text
	.align 3
class_name_table:

	.short 11, 1, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 3, 0, 2
	.short 0, 0, 0, 0, 0, 0, 0
.text
	.align 3
got_info:

	.byte 12,0,39,17,0,1,16,3,0,3,16,3,0,4,16,3,0,1,17,0,89,14,128,215,1,16,3,0,2,19,0,194
	.byte 0,0,3,0,6,1,6,3,6,2,6,4,33,3,193,0,23,185,3,9,3,21,3,10,7,23,109,111,110,111,95,111
	.byte 98,106,101,99,116,95,110,101,119,95,112,116,114,102,114,101,101,0,3,193,0,8,156,3,193,0,8,222,3,193,0,24
	.byte 79,3,11,3,12,3,13,7,32,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,99,111,114,108,105,98,95
	.byte 101,120,99,101,112,116,105,111,110,0,3,14,3,15,3,16,3,17,3,194,0,61,40,3,194,0,61,148,3,194,0,61
	.byte 156,3,194,0,64,175,7,18,95,95,101,109,117,108,95,102,99,111,110,118,95,116,111,95,105,56,0,3,18,3,194,0
	.byte 2,41,3,195,0,0,233,7,36,109,111,110,111,95,116,104,114,101,97,100,95,103,101,116,95,117,110,100,101,110,105,97
	.byte 98,108,101,95,101,120,99,101,112,116,105,111,110,0,7,25,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95
	.byte 101,120,99,101,112,116,105,111,110,0,7,17,109,111,110,111,95,103,101,116,95,108,109,102,95,97,100,100,114,0,31,255
	.byte 254,0,0,0,41,2,2,198,0,4,3,0,1,1,2,2,7,30,109,111,110,111,95,99,114,101,97,116,101,95,99,111
	.byte 114,108,105,98,95,101,120,99,101,112,116,105,111,110,95,48,0,7,35,109,111,110,111,95,116,104,114,101,97,100,95,105
	.byte 110,116,101,114,114,117,112,116,105,111,110,95,99,104,101,99,107,112,111,105,110,116,0,31,9,7,20,109,111,110,111,95
	.byte 115,116,114,105,110,103,95,116,111,95,108,112,115,116,114,0,31,10,7,17,109,111,110,111,95,109,97,114,115,104,97,108
	.byte 95,102,114,101,101,0,31,11,31,12,31,13,31,14,31,15,31,16,31,17,31,18
.text
	.align 3
got_info_offsets:

	.long 0,2,3,6,10,14,18,21
	.long 25,29,36,38,40,42,44
.text
	.align 3
ex_info:
ex:
Le_4_p:

	.byte 52,2,0,0
Le_5_p:

	.byte 72,2,26,0
Le_6_p:

	.byte 56,2,26,0
Le_7_p:

	.byte 68,2,0,0
Le_12_p:

	.byte 64,2,0,0
Le_13_p:

	.byte 72,2,49,0
Le_14_p:

	.byte 128,240,2,0,0
Le_15_p:

	.byte 52,2,0,0
Le_16_p:

	.byte 76,2,49,0
Le_17_p:

	.byte 128,140,2,75,0
Le_18_p:

	.byte 52,2,0,0
Le_19_p:

	.byte 52,2,0,0
Le_1a_p:

	.byte 52,2,0,0
Le_1b_p:

	.byte 60,2,0,0
Le_1c_p:

	.byte 129,52,2,107,0
Le_1d_p:

	.byte 128,156,2,49,0
Le_1e_p:

	.byte 128,156,2,49,0
Le_1f_p:

	.byte 128,156,2,49,0
Le_20_p:

	.byte 128,132,2,0,0
Le_21_p:

	.byte 128,200,6,128,134,2,0,8,1,7,3,48,88,88,0,12,1,57,2,48,88,128,128,0
Le_23_p:

	.byte 128,172,2,128,162,0
Le_24_p:

	.byte 128,132,2,128,196,0
Le_25_p:

	.byte 128,160,2,128,196,0
Le_26_p:

	.byte 128,140,2,128,230,0
Le_27_p:

	.byte 128,148,2,128,162,0
Le_28_p:

	.byte 128,140,2,128,230,0
Le_29_p:

	.byte 128,140,2,128,230,0
Le_2a_p:

	.byte 128,140,2,128,230,0
Le_2b_p:

	.byte 128,140,2,128,230,0
Le_2c_p:

	.byte 128,172,2,128,230,0
Le_2d_p:

	.byte 128,188,2,128,196,0
.text
	.align 3
ex_info_offsets:

	.long 0,0,0,0,Le_4_p - ex,Le_5_p - ex,Le_6_p - ex,Le_7_p - ex
	.long 0,0,0,0,0,0,0,0
	.long 0,0,Le_12_p - ex,Le_13_p - ex,Le_14_p - ex,Le_15_p - ex,Le_16_p - ex,Le_17_p - ex
	.long Le_18_p - ex,Le_19_p - ex,Le_1a_p - ex,Le_1b_p - ex,Le_1c_p - ex,Le_1d_p - ex,Le_1e_p - ex,Le_1f_p - ex
	.long Le_20_p - ex,Le_21_p - ex,0,Le_23_p - ex,Le_24_p - ex,Le_25_p - ex,Le_26_p - ex,Le_27_p - ex
	.long Le_28_p - ex,Le_29_p - ex,Le_2a_p - ex,Le_2b_p - ex,Le_2c_p - ex,Le_2d_p - ex

.text
	.align 3
unwind_info:

	.byte 25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,32,68,13,11,22,12,13,0,76,14
	.byte 8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139
	.byte 5,140,4,142,3,68,14,40,68,13,11,31,12,13,0,76,14,8,135,2,68,14,36,132,9,133,8,134,7,136,6,139
	.byte 5,140,4,142,3,68,14,48,68,13,11,26,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68
	.byte 14,128,1,68,13,11,27,12,13,0,76,14,8,135,2,68,14,28,134,7,136,6,139,5,140,4,142,3,68,14,80,68
	.byte 13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68,14,160
	.byte 1,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142,1,68
	.byte 14,152,1,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2,142
	.byte 1,68,14,144,1,68,13,11
.text
	.align 3
class_info:
LK_I_0:

	.byte 0,128,144,8,0,0,1
LK_I_1:

	.byte 0,128,144,8,0,0,1
LK_I_2:

	.byte 4,128,196,6,16,16,0,4,193,0,24,87,193,0,24,59,194,0,0,4,193,0,24,58
.text
	.align 3
class_info_offsets:

	.long LK_I_0 - class_info,LK_I_1 - class_info,LK_I_2 - class_info


.text
	.align 4
plt:
mono_aot_Assembly_CSharp_firstpass_plt:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 56,0
p_1:
plt_UnityEngine_MonoBehaviour__ctor:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 60,45
p_2:
plt_Playnomics_PNStart_long:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 64,50
p_3:
plt_Playnomics_InitializeGameObjects:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 68,52
p_4:
plt_Playnomics_PNStartWithUserId_long_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 72,54
p_5:
plt__jit_icall_mono_object_new_ptrfree:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 76,56
p_6:
plt_UnityEngine_GameObject__ctor_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 80,82
p_7:
plt_UnityEngine_GameObject_AddComponent_System_Type:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 84,87
p_8:
plt_UnityEngine_Object_DontDestroyOnLoad_UnityEngine_Object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 88,92
p_9:
plt_Playnomics_PNCustomEvent_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 92,97
p_10:
plt_Playnomics_PNTransactionInUSD_single_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 96,99
p_11:
plt_Playnomics_PNPreloadPlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 100,101
p_12:
plt__jit_icall_mono_arch_throw_corlib_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 104,103
p_13:
plt_Playnomics_PNShowPlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 108,138
p_14:
plt_Playnomics_PNHidePlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 112,140
p_15:
plt_Playnomics_PNAttributeInstall_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 116,142
p_16:
plt_Playnomics_PNAttributeInstallWithCampaign_string_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 120,144
p_17:
plt_System_DateTime__ctor_int_int_int_int_int_int_System_DateTimeKind:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 124,146
p_18:
plt_System_DateTime_ToUniversalTime:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 128,151
p_19:
plt_System_DateTime_op_Subtraction_System_DateTime_System_DateTime:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 132,156
p_20:
plt_System_TimeSpan_get_TotalMilliseconds:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 136,161
p_21:
plt__jit_icall___emul_fconv_to_i8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 140,166
p_22:
plt_Playnomics_PNAttributeInstallWithCampaignTime_string_string_long:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 144,187
p_23:
plt_string_IsNullOrEmpty_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 148,189
p_24:
plt_Play_LitJson_JsonMapper_ToObject_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 152,194
p_25:
plt__jit_icall_mono_thread_get_undeniable_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 156,199
p_26:
plt__jit_icall_mono_arch_throw_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 160,238
p_27:
plt__jit_icall_mono_get_lmf_addr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 164,266
p_28:
plt__icall_native_System_Array_GetGenericValueImpl_object_int_object_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 168,286
p_29:
plt__jit_icall_mono_create_corlib_exception_0:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 172,304
p_30:
plt__jit_icall_mono_thread_interruption_checkpoint:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 176,337
p_31:
plt__icall_native_Playnomics_PNStart_long:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 180,375
p_32:
plt__jit_icall_mono_string_to_lpstr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 184,377
p_33:
plt__icall_native_Playnomics_PNStartWithUserId_long_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 188,400
p_34:
plt__jit_icall_mono_marshal_free:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 192,402
p_35:
plt__icall_native_Playnomics_PNCustomEvent_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 196,422
p_36:
plt__icall_native_Playnomics_PNTransactionInUSD_single_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 200,424
p_37:
plt__icall_native_Playnomics_PNPreloadPlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 204,426
p_38:
plt__icall_native_Playnomics_PNShowPlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 208,428
p_39:
plt__icall_native_Playnomics_PNHidePlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 212,430
p_40:
plt__icall_native_Playnomics_PNAttributeInstall_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 216,432
p_41:
plt__icall_native_Playnomics_PNAttributeInstallWithCampaign_string_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 220,434
p_42:
plt__icall_native_Playnomics_PNAttributeInstallWithCampaignTime_string_string_long:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_firstpass_got - . + 224,436
plt_end:
.text
	.align 3
mono_image_table:

	.long 4
	.asciz "Assembly-CSharp-firstpass"
	.asciz "A070C654-1DC5-497D-BCCB-41210448F379"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "UnityEngine"
	.asciz "7FE03927-FA14-4ED4-A3E7-158E25B33B2C"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,0,0,0
	.asciz "mscorlib"
	.asciz "3847BFC7-C7E7-4B6D-9F66-5B991D3097CA"
	.asciz ""
	.asciz "7cec85d7bea7798e"
	.align 3

	.long 1,2,0,5,0
	.asciz "Play.LitJson"
	.asciz "9E708298-F1EA-4B96-869C-62D2DAFBC5DA"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,7,0,0
.data
	.align 3
mono_aot_Assembly_CSharp_firstpass_got:
	.space 232
got_end:
.data
	.align 3
mono_aot_got_addr:
	.align 2
	.long mono_aot_Assembly_CSharp_firstpass_got
.data
	.align 3
mono_aot_file_info:

	.long 15,232,43,46,1024,1024,128,0
	.long 0,0,0,0,0
.text
	.align 2
mono_assembly_guid:
	.asciz "A070C654-1DC5-497D-BCCB-41210448F379"
.text
	.align 2
mono_aot_version:
	.asciz "66"
.text
	.align 2
mono_aot_opt_flags:
	.asciz "55650815"
.text
	.align 2
mono_aot_full_aot:
	.asciz "TRUE"
.text
	.align 2
mono_runtime_version:
	.asciz ""
.text
	.align 2
mono_aot_assembly_name:
	.asciz "Assembly-CSharp-firstpass"
.text
	.align 3
Lglobals_hash:

	.short 73, 27, 0, 0, 0, 0, 0, 0
	.short 0, 15, 0, 19, 0, 0, 0, 0
	.short 0, 6, 0, 0, 0, 3, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 29
	.short 0, 13, 0, 5, 0, 0, 0, 0
	.short 0, 4, 0, 28, 0, 0, 0, 9
	.short 0, 0, 0, 0, 0, 0, 0, 14
	.short 0, 1, 0, 0, 0, 0, 0, 12
	.short 74, 0, 0, 0, 0, 0, 0, 30
	.short 0, 2, 75, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 22, 0, 0, 0, 0, 0, 0
	.short 0, 11, 0, 17, 0, 8, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 16, 0, 20
	.short 0, 7, 73, 24, 0, 10, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 21, 0, 18, 76, 23, 0, 25
	.short 0, 26, 0
.text
	.align 2
name_0:
	.asciz "methods"
.text
	.align 2
name_1:
	.asciz "methods_end"
.text
	.align 2
name_2:
	.asciz "method_addresses"
.text
	.align 2
name_3:
	.asciz "method_offsets"
.text
	.align 2
name_4:
	.asciz "method_info"
.text
	.align 2
name_5:
	.asciz "method_info_offsets"
.text
	.align 2
name_6:
	.asciz "extra_method_info"
.text
	.align 2
name_7:
	.asciz "extra_method_table"
.text
	.align 2
name_8:
	.asciz "extra_method_info_offsets"
.text
	.align 2
name_9:
	.asciz "method_order"
.text
	.align 2
name_10:
	.asciz "method_order_end"
.text
	.align 2
name_11:
	.asciz "class_name_table"
.text
	.align 2
name_12:
	.asciz "got_info"
.text
	.align 2
name_13:
	.asciz "got_info_offsets"
.text
	.align 2
name_14:
	.asciz "ex_info"
.text
	.align 2
name_15:
	.asciz "ex_info_offsets"
.text
	.align 2
name_16:
	.asciz "unwind_info"
.text
	.align 2
name_17:
	.asciz "class_info"
.text
	.align 2
name_18:
	.asciz "class_info_offsets"
.text
	.align 2
name_19:
	.asciz "plt"
.text
	.align 2
name_20:
	.asciz "plt_end"
.text
	.align 2
name_21:
	.asciz "mono_image_table"
.text
	.align 2
name_22:
	.asciz "mono_aot_got_addr"
.text
	.align 2
name_23:
	.asciz "mono_aot_file_info"
.text
	.align 2
name_24:
	.asciz "mono_assembly_guid"
.text
	.align 2
name_25:
	.asciz "mono_aot_version"
.text
	.align 2
name_26:
	.asciz "mono_aot_opt_flags"
.text
	.align 2
name_27:
	.asciz "mono_aot_full_aot"
.text
	.align 2
name_28:
	.asciz "mono_runtime_version"
.text
	.align 2
name_29:
	.asciz "mono_aot_assembly_name"
.data
	.align 3
Lglobals:
	.align 2
	.long Lglobals_hash
	.align 2
	.long name_0
	.align 2
	.long methods
	.align 2
	.long name_1
	.align 2
	.long methods_end
	.align 2
	.long name_2
	.align 2
	.long method_addresses
	.align 2
	.long name_3
	.align 2
	.long method_offsets
	.align 2
	.long name_4
	.align 2
	.long method_info
	.align 2
	.long name_5
	.align 2
	.long method_info_offsets
	.align 2
	.long name_6
	.align 2
	.long extra_method_info
	.align 2
	.long name_7
	.align 2
	.long extra_method_table
	.align 2
	.long name_8
	.align 2
	.long extra_method_info_offsets
	.align 2
	.long name_9
	.align 2
	.long method_order
	.align 2
	.long name_10
	.align 2
	.long method_order_end
	.align 2
	.long name_11
	.align 2
	.long class_name_table
	.align 2
	.long name_12
	.align 2
	.long got_info
	.align 2
	.long name_13
	.align 2
	.long got_info_offsets
	.align 2
	.long name_14
	.align 2
	.long ex_info
	.align 2
	.long name_15
	.align 2
	.long ex_info_offsets
	.align 2
	.long name_16
	.align 2
	.long unwind_info
	.align 2
	.long name_17
	.align 2
	.long class_info
	.align 2
	.long name_18
	.align 2
	.long class_info_offsets
	.align 2
	.long name_19
	.align 2
	.long plt
	.align 2
	.long name_20
	.align 2
	.long plt_end
	.align 2
	.long name_21
	.align 2
	.long mono_image_table
	.align 2
	.long name_22
	.align 2
	.long mono_aot_got_addr
	.align 2
	.long name_23
	.align 2
	.long mono_aot_file_info
	.align 2
	.long name_24
	.align 2
	.long mono_assembly_guid
	.align 2
	.long name_25
	.align 2
	.long mono_aot_version
	.align 2
	.long name_26
	.align 2
	.long mono_aot_opt_flags
	.align 2
	.long name_27
	.align 2
	.long mono_aot_full_aot
	.align 2
	.long name_28
	.align 2
	.long mono_runtime_version
	.align 2
	.long name_29
	.align 2
	.long mono_aot_assembly_name

	.long 0,0
	.globl _mono_aot_module_Assembly_CSharp_firstpass_info
	.align 3
_mono_aot_module_Assembly_CSharp_firstpass_info:
	.align 2
	.long Lglobals
.text
	.align 3
mem_end:
#endif
