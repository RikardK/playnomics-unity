#if defined(__arm__)
.text
	.align 3
methods:
	.space 16
	.align 2
Lm_0:
m_Integration__ctor:
_m_0:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,0,0,155,229
bl p_1

	.byte 8,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_0:
	.align 2
Lm_1:
m_Integration_Start:
_m_1:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,48,208,77,226,13,176,160,225,16,0,139,229,213,0,160,227
	.byte 50,12,128,226,206,8,128,226,81,4,128,226,169,16,160,227,136,28,129,226,46,24,129,226,10,20,129,226
bl p_2

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . -4
	.byte 0,0,159,231,5,16,160,227
bl p_3

	.byte 0,16,160,225,40,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 2,32,159,231,0,16,160,227
bl p_4

	.byte 40,0,155,229,0,16,160,225,36,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 2,32,159,231,1,16,160,227
bl p_4

	.byte 36,0,155,229,0,16,160,225,32,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 8
	.byte 2,32,159,231,2,16,160,227
bl p_4

	.byte 32,0,155,229,0,16,160,225,28,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 12
	.byte 2,32,159,231,3,16,160,227
bl p_4

	.byte 28,0,155,229,0,16,160,225,24,16,139,229,0,32,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 16
	.byte 2,32,159,231,4,16,160,227
bl p_4

	.byte 24,0,155,229
bl p_5

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 20
	.byte 0,0,159,231
bl p_6

	.byte 0,16,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 24
	.byte 0,0,159,231,0,16,128,229,48,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_1:
	.align 2
Lm_2:
m_Integration_Update:
_m_2:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,8,208,139,226
	.byte 0,9,189,232,8,112,157,229,0,160,157,232

Lme_2:
	.align 2
Lm_3:
m_Integration_OnGUI:
_m_3:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,82,223,77,226,13,176,160,225,68,1,139,229,0,0,160,227
	.byte 44,0,139,229,0,0,160,227,48,0,139,229,0,0,160,227,52,0,139,229,2,0,160,227
bl p_7
bl p_8

	.byte 10,16,160,227
bl p_9

	.byte 16,10,0,238,192,10,184,238,192,42,183,238,194,11,183,238,4,10,139,237
bl p_10

	.byte 16,10,0,238,192,10,184,238,192,42,183,238,0,58,159,237,0,0,0,234,0,0,0,63,195,58,183,238,3,43,34,238
	.byte 194,11,183,238,5,10,139,237,0,42,159,237,0,0,0,234,0,0,32,65,194,42,183,238,194,11,183,238,6,10,139,237
bl p_10

	.byte 16,10,0,238,192,10,184,238,192,42,183,238,5,10,155,237,192,58,183,238,67,43,50,238,0,58,159,237,0,0,0,234
	.byte 0,0,0,64,195,58,183,238,3,43,130,238,194,11,183,238,7,10,139,237,0,42,159,237,0,0,0,234,0,0,0,0
	.byte 194,42,183,238,194,11,183,238,8,10,139,237,7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237
	.byte 192,58,183,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,64,0,139,229,0,0,160,227,68,0,139,229
	.byte 0,0,160,227,72,0,139,229,0,0,160,227,76,0,139,229,64,0,139,226,197,11,183,238,2,10,13,237,8,16,29,229
	.byte 196,11,183,238,2,10,13,237,8,32,29,229,195,11,183,238,2,10,13,237,8,48,29,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 64,0,155,229,196,0,139,229,68,0,155,229,200,0,139,229,72,0,155,229,204,0,139,229,76,0,155,229,208,0,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 28
	.byte 12,192,159,231,196,0,155,229,200,16,155,229,204,32,155,229,208,48,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,18,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 32
	.byte 0,0,159,231,36,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 36
	.byte 0,0,159,231,40,0,139,229,44,0,139,226
bl p_13

	.byte 36,0,155,229,40,16,155,229,44,32,155,229,48,48,155,229,52,192,155,229,0,192,141,229
bl p_14

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,80,0,139,229,0,0,160,227,84,0,139,229
	.byte 0,0,160,227,88,0,139,229,0,0,160,227,92,0,139,229,80,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 80,0,155,229,212,0,139,229,84,0,155,229,216,0,139,229,88,0,155,229,220,0,139,229,92,0,155,229,224,0,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 40
	.byte 12,192,159,231,212,0,155,229,216,16,155,229,220,32,155,229,224,48,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,14,0,0,10,0,42,159,237,0,0,0,234,164,112,125,63,194,42,183,238,194,11,183,238,14,10,139,237
	.byte 1,0,160,227,60,0,139,229,14,10,155,237,192,42,183,238,194,11,183,238,0,10,141,237,0,0,157,229,1,16,160,227
bl p_15

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,100,0,139,229,0,0,160,227,104,0,139,229
	.byte 0,0,160,227,108,0,139,229,0,0,160,227,112,0,139,229,100,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 100,0,155,229,228,0,139,229,104,0,155,229,232,0,139,229,108,0,155,229,236,0,139,229,112,0,155,229,240,0,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 44
	.byte 12,192,159,231,228,0,155,229,232,16,155,229,236,32,155,229,240,48,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 48
	.byte 0,0,159,231
bl p_16

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,116,0,139,229,0,0,160,227,120,0,139,229
	.byte 0,0,160,227,124,0,139,229,0,0,160,227,128,0,139,229,116,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 116,0,155,229,244,0,139,229,120,0,155,229,248,0,139,229,124,0,155,229,252,0,139,229,128,0,155,229,0,1,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 52
	.byte 12,192,159,231,244,0,155,229,248,16,155,229,252,32,155,229,0,49,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - .
	.byte 0,0,159,231
bl p_17

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,132,0,139,229,0,0,160,227,136,0,139,229
	.byte 0,0,160,227,140,0,139,229,0,0,160,227,144,0,139,229,132,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 132,0,155,229,4,1,139,229,136,0,155,229,8,1,139,229,140,0,155,229,12,1,139,229,144,0,155,229,16,1,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 56
	.byte 12,192,159,231,4,1,155,229,8,17,155,229,12,33,155,229,16,49,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 4
	.byte 0,0,159,231
bl p_17

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,148,0,139,229,0,0,160,227,152,0,139,229
	.byte 0,0,160,227,156,0,139,229,0,0,160,227,160,0,139,229,148,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 148,0,155,229,20,1,139,229,152,0,155,229,24,1,139,229,156,0,155,229,28,1,139,229,160,0,155,229,32,1,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 60
	.byte 12,192,159,231,20,1,155,229,24,17,155,229,28,33,155,229,32,49,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 16
	.byte 0,0,159,231
bl p_17

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,164,0,139,229,0,0,160,227,168,0,139,229
	.byte 0,0,160,227,172,0,139,229,0,0,160,227,176,0,139,229,164,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 164,0,155,229,36,1,139,229,168,0,155,229,40,1,139,229,172,0,155,229,44,1,139,229,176,0,155,229,48,1,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 64
	.byte 12,192,159,231,36,1,155,229,40,17,155,229,44,33,155,229,48,49,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 12
	.byte 0,0,159,231
bl p_17

	.byte 7,10,155,237,192,90,183,238,8,10,155,237,192,42,183,238,6,10,155,237,192,58,183,238,4,10,155,237,192,74,183,238
	.byte 4,59,51,238,3,43,50,238,66,43,176,238,66,75,176,238,68,75,176,238,66,43,176,238,194,11,183,238,8,10,139,237
	.byte 5,10,155,237,192,58,183,238,4,10,155,237,192,42,183,238,0,0,160,227,180,0,139,229,0,0,160,227,184,0,139,229
	.byte 0,0,160,227,188,0,139,229,0,0,160,227,192,0,139,229,180,0,139,226,197,11,183,238,0,10,141,237,0,16,157,229
	.byte 196,11,183,238,0,10,141,237,0,32,157,229,195,11,183,238,0,10,141,237,0,48,157,229,194,11,183,238,0,10,141,237
bl p_11

	.byte 180,0,155,229,52,1,139,229,184,0,155,229,56,1,139,229,188,0,155,229,60,1,139,229,192,0,155,229,64,1,139,229
	.byte 0,192,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 68
	.byte 12,192,159,231,52,1,155,229,56,17,155,229,60,33,155,229,64,49,155,229,0,192,141,229
bl p_12

	.byte 0,0,80,227,4,0,0,10,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 8
	.byte 0,0,159,231
bl p_17

	.byte 82,223,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_3:
	.align 2
Lm_4:
m_PlacementDelegate__ctor:
_m_4:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,8,208,77,226,13,176,160,225,0,0,139,229,8,208,139,226
	.byte 0,9,189,232,8,112,157,229,0,160,157,232

Lme_4:
	.align 2
Lm_5:
m_PlacementDelegate_OnShow_Playnomics_LitJson_JsonData:
_m_5:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,32,93,45,233,24,208,77,226,13,176,160,225,8,0,139,229,1,160,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 72
	.byte 0,0,159,231,4,0,139,229,0,0,90,227,5,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 76
	.byte 0,0,159,231,0,160,144,229,2,0,0,234,10,0,160,225
bl p_18

	.byte 0,160,160,225,4,0,155,229,10,16,160,225
bl p_19

	.byte 0,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 80
	.byte 0,0,159,231
bl p_20

	.byte 16,0,139,229
bl p_21

	.byte 16,0,155,229,0,80,160,225,5,32,160,225,2,0,160,225,0,16,155,229,0,224,146,229
bl p_22

	.byte 5,0,160,225
bl p_23

	.byte 24,208,139,226,32,13,189,232,8,112,157,229,0,160,157,232

Lme_5:
	.align 2
Lm_6:
m_PlacementDelegate_OnTouch_Playnomics_LitJson_JsonData:
_m_6:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,32,93,45,233,24,208,77,226,13,176,160,225,8,0,139,229,1,160,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 84
	.byte 0,0,159,231,4,0,139,229,0,0,90,227,5,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 76
	.byte 0,0,159,231,0,160,144,229,2,0,0,234,10,0,160,225
bl p_18

	.byte 0,160,160,225,4,0,155,229,10,16,160,225
bl p_19

	.byte 0,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 80
	.byte 0,0,159,231
bl p_20

	.byte 16,0,139,229
bl p_21

	.byte 16,0,155,229,0,80,160,225,5,32,160,225,2,0,160,225,0,16,155,229,0,224,146,229
bl p_22

	.byte 5,0,160,225
bl p_23

	.byte 24,208,139,226,32,13,189,232,8,112,157,229,0,160,157,232

Lme_6:
	.align 2
Lm_7:
m_PlacementDelegate_OnClose_Playnomics_LitJson_JsonData:
_m_7:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,32,93,45,233,24,208,77,226,13,176,160,225,8,0,139,229,1,160,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 88
	.byte 0,0,159,231,4,0,139,229,0,0,90,227,5,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 76
	.byte 0,0,159,231,0,160,144,229,2,0,0,234,10,0,160,225
bl p_18

	.byte 0,160,160,225,4,0,155,229,10,16,160,225
bl p_19

	.byte 0,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 80
	.byte 0,0,159,231
bl p_20

	.byte 16,0,139,229
bl p_21

	.byte 16,0,155,229,0,80,160,225,5,32,160,225,2,0,160,225,0,16,155,229,0,224,146,229
bl p_22

	.byte 5,0,160,225
bl p_23

	.byte 24,208,139,226,32,13,189,232,8,112,157,229,0,160,157,232

Lme_7:
	.align 2
Lm_8:
m_PlacementDelegate_OnRenderFailed:
_m_8:

	.byte 13,192,160,225,128,64,45,233,13,112,160,225,0,89,45,233,16,208,77,226,13,176,160,225,0,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 80
	.byte 0,0,159,231
bl p_20

	.byte 12,0,139,229
bl p_21

	.byte 12,0,155,229,8,0,139,229,0,32,160,225,0,16,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 92
	.byte 1,16,159,231,2,0,160,225,0,224,146,229
bl p_22

	.byte 8,0,155,229
bl p_23

	.byte 16,208,139,226,0,9,189,232,8,112,157,229,0,160,157,232

Lme_8:
	.align 2
Lm_a:
m_wrapper_managed_to_native_System_Array_GetGenericValueImpl_int_object_:
_m_a:

	.byte 13,192,160,225,240,95,45,233,120,208,77,226,13,176,160,225,0,0,139,229,4,16,139,229,8,32,139,229
bl p_24

	.byte 16,16,141,226,4,0,129,229,0,32,144,229,0,32,129,229,0,16,128,229,16,208,129,229,15,32,160,225,20,32,129,229
	.byte 0,0,155,229,0,0,80,227,16,0,0,10,0,0,155,229,4,16,155,229,8,32,155,229
bl p_25

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Assembly_CSharp_got - . + 96
	.byte 0,0,159,231,0,0,144,229,0,0,80,227,10,0,0,26,16,32,139,226,0,192,146,229,4,224,146,229,0,192,142,229
	.byte 104,208,130,226,240,175,157,232,150,0,160,227,6,12,128,226,2,4,128,226
bl p_26
bl p_27
bl p_28

	.byte 242,255,255,234

Lme_a:
.text
	.align 3
methods_end:
.data
	.align 3
method_addresses:
	.align 2
	.long _m_0
	.align 2
	.long _m_1
	.align 2
	.long _m_2
	.align 2
	.long _m_3
	.align 2
	.long _m_4
	.align 2
	.long _m_5
	.align 2
	.long _m_6
	.align 2
	.long _m_7
	.align 2
	.long _m_8
	.align 2
	.long 0
	.align 2
	.long _m_a
.text
	.align 3
method_offsets:

	.long Lm_0 - methods,Lm_1 - methods,Lm_2 - methods,Lm_3 - methods,Lm_4 - methods,Lm_5 - methods,Lm_6 - methods,Lm_7 - methods
	.long Lm_8 - methods,-1,Lm_a - methods

.text
	.align 3
method_info:
mi:
Lm_0_p:

	.byte 0,0
Lm_1_p:

	.byte 0,8,2,3,4,5,6,7,8,9
Lm_2_p:

	.byte 0,0
Lm_3_p:

	.byte 0,16,10,11,12,13,14,15,16,3,17,4,18,7,19,6,20,5
Lm_4_p:

	.byte 0,0
Lm_5_p:

	.byte 0,3,21,22,23
Lm_6_p:

	.byte 0,3,24,22,23
Lm_7_p:

	.byte 0,3,25,22,23
Lm_8_p:

	.byte 0,2,23,26
Lm_a_p:

	.byte 0,1,27
.text
	.align 3
method_info_offsets:

	.long Lm_0_p - mi,Lm_1_p - mi,Lm_2_p - mi,Lm_3_p - mi,Lm_4_p - mi,Lm_5_p - mi,Lm_6_p - mi,Lm_7_p - mi
	.long Lm_8_p - mi,0,Lm_a_p - mi

.text
	.align 3
extra_method_info:

	.byte 0,1,6,83,121,115,116,101,109,46,65,114,114,97,121,58,71,101,116,71,101,110,101,114,105,99,86,97,108,117,101,73
	.byte 109,112,108,32,40,105,110,116,44,111,98,106,101,99,116,38,41,0

.text
	.align 3
extra_method_table:

	.long 11,0,0,0,1,10,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
.text
	.align 3
extra_method_info_offsets:

	.long 1,10,1
.text
	.align 3
method_order:

	.long 0,16777215,0,1,2,3,4,5
	.long 6,7,8,10

.text
method_order_end:
.text
	.align 3
class_name_table:

	.short 11, 1, 11, 0, 0, 0, 0, 0
	.short 0, 3, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 2
	.short 0
.text
	.align 3
got_info:

	.byte 12,0,39,14,194,0,0,0,1,1,28,1,17,0,1,17,0,11,17,0,17,17,0,31,17,0,41,14,3,0,16,3
	.byte 2,4,17,0,63,17,0,99,17,0,113,17,0,128,131,17,0,128,155,17,0,128,195,17,0,128,215,17,0,128,225,17
	.byte 0,128,233,17,0,129,1,17,0,129,11,17,0,129,27,16,28,1,42,14,129,167,3,17,0,129,49,17,0,129,73,17
	.byte 0,129,97,33,3,195,0,23,185,3,194,0,0,19,7,23,109,111,110,111,95,97,114,114,97,121,95,110,101,119,95,115
	.byte 112,101,99,105,102,105,99,0,3,255,253,0,0,0,21,3,194,0,0,24,7,23,109,111,110,111,95,111,98,106,101,99
	.byte 116,95,110,101,119,95,112,116,114,102,114,101,101,0,3,195,0,15,11,3,195,0,13,162,7,14,95,95,101,109,117,108
	.byte 95,111,112,95,105,100,105,118,0,3,195,0,13,161,3,195,0,19,121,3,195,0,15,36,3,193,0,61,76,3,194,0
	.byte 0,29,3,194,0,0,23,3,194,0,0,22,3,194,0,0,25,3,196,0,0,229,3,193,0,2,68,7,24,109,111,110
	.byte 111,95,111,98,106,101,99,116,95,110,101,119,95,115,112,101,99,105,102,105,99,0,3,195,0,18,113,3,195,0,18,126
	.byte 3,195,0,18,156,7,17,109,111,110,111,95,103,101,116,95,108,109,102,95,97,100,100,114,0,31,255,254,0,0,0,41
	.byte 1,1,198,0,4,3,0,1,1,2,1,7,30,109,111,110,111,95,99,114,101,97,116,101,95,99,111,114,108,105,98,95
	.byte 101,120,99,101,112,116,105,111,110,95,48,0,7,25,109,111,110,111,95,97,114,99,104,95,116,104,114,111,119,95,101,120
	.byte 99,101,112,116,105,111,110,0,7,35,109,111,110,111,95,116,104,114,101,97,100,95,105,110,116,101,114,114,117,112,116,105
	.byte 111,110,95,99,104,101,99,107,112,111,105,110,116,0
.text
	.align 3
got_info_offsets:

	.long 0,2,3,12,15,18,21,24
	.long 27,30,34,37,40,43,47,51
	.long 55,59,63,67,71,75,79,83
	.long 87,91,95,99
.text
	.align 3
ex_info:
ex:
Le_0_p:

	.byte 52,2,0,0
Le_1_p:

	.byte 129,76,2,26,0
Le_2_p:

	.byte 44,2,0,0
Le_3_p:

	.byte 137,148,2,52,0
Le_4_p:

	.byte 44,2,0,0
Le_5_p:

	.byte 128,192,2,79,0
Le_6_p:

	.byte 128,192,2,79,0
Le_7_p:

	.byte 128,192,2,79,0
Le_8_p:

	.byte 120,2,109,0
Le_a_p:

	.byte 128,172,2,128,135,0
.text
	.align 3
ex_info_offsets:

	.long Le_0_p - ex,Le_1_p - ex,Le_2_p - ex,Le_3_p - ex,Le_4_p - ex,Le_5_p - ex,Le_6_p - ex,Le_7_p - ex
	.long Le_8_p - ex,0,Le_a_p - ex

.text
	.align 3
unwind_info:

	.byte 25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,32,68,13,11,25,12,13,0,76,14
	.byte 8,135,2,68,14,24,136,6,139,5,140,4,142,3,68,14,72,68,13,11,26,12,13,0,76,14,8,135,2,68,14,24
	.byte 136,6,139,5,140,4,142,3,68,14,224,2,68,13,11,29,12,13,0,76,14,8,135,2,68,14,32,133,8,136,7,138
	.byte 6,139,5,140,4,142,3,68,14,56,68,13,11,25,12,13,0,76,14,8,135,2,68,14,24,136,6,139,5,140,4,142
	.byte 3,68,14,40,68,13,11,33,12,13,0,72,14,40,132,10,133,9,134,8,135,7,136,6,137,5,138,4,139,3,140,2
	.byte 142,1,68,14,160,1,68,13,11
.text
	.align 3
class_info:
LK_I_0:

	.byte 0,128,144,8,0,0,1
LK_I_1:

	.byte 4,128,144,16,0,0,4,195,0,24,87,195,0,24,59,193,0,0,4,195,0,24,58
LK_I_2:

	.byte 8,128,144,8,0,0,1,193,0,0,8,193,0,0,5,193,0,0,4,193,0,0,2,6,7,8,9
.text
	.align 3
class_info_offsets:

	.long LK_I_0 - class_info,LK_I_1 - class_info,LK_I_2 - class_info


.text
	.align 4
plt:
mono_aot_Assembly_CSharp_plt:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 108,0
p_1:
plt_UnityEngine_MonoBehaviour__ctor:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 112,100
p_2:
plt_PlayUnity_StartSDK_long:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 116,105
p_3:
plt__jit_icall_mono_array_new_specific:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 120,110
p_4:
plt_wrapper_stelemref_object_stelemref_object_intptr_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 124,136
p_5:
plt_PlayUnity_PreloadPlacements_string__:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 128,143
p_6:
plt__jit_icall_mono_object_new_ptrfree:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 132,148
p_7:
plt_UnityEngine_GUI_set_depth_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 136,174
p_8:
plt_UnityEngine_Screen_get_height:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 140,179
p_9:
plt__jit_icall___emul_op_idiv:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 144,184
p_10:
plt_UnityEngine_Screen_get_width:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 148,201
p_11:
plt_UnityEngine_Rect__ctor_single_single_single_single:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 152,206
p_12:
plt_UnityEngine_GUI_Button_UnityEngine_Rect_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 156,211
p_13:
plt_System_DateTime_get_UtcNow:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 160,216
p_14:
plt_PlayUnity_AttributeInstall_string_string_System_DateTime:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 164,221
p_15:
plt_PlayUnity_TransactionInUSD_single_int:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 168,226
p_16:
plt_PlayUnity_CustomEvent_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 172,231
p_17:
plt_PlayUnity_ShowPlacement_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 176,236
p_18:
plt_Playnomics_LitJson_JsonMapper_ToJson_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 180,241
p_19:
plt_string_Format_string_object:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 184,246
p_20:
plt__jit_icall_mono_object_new_specific:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 188,251
p_21:
plt_UnityEngine_LocalNotification__ctor:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 192,278
p_22:
plt_UnityEngine_LocalNotification_set_alertBody_string:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 196,283
p_23:
plt_UnityEngine_NotificationServices_PresentLocalNotificationNow_UnityEngine_LocalNotification:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 200,288
p_24:
plt__jit_icall_mono_get_lmf_addr:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 204,293
p_25:
plt__icall_native_System_Array_GetGenericValueImpl_object_int_object_:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 208,313
p_26:
plt__jit_icall_mono_create_corlib_exception_0:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 212,331
p_27:
plt__jit_icall_mono_arch_throw_exception:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 216,364
p_28:
plt__jit_icall_mono_thread_interruption_checkpoint:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Assembly_CSharp_got - . + 220,392
plt_end:
.text
	.align 3
mono_image_table:

	.long 5
	.asciz "Assembly-CSharp"
	.asciz "FAF032CD-DA48-4D23-BF68-1105660949E5"
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
	.asciz "Assembly-CSharp-firstpass"
	.asciz "C988F89A-7C84-430A-A06E-951F9F330BFC"
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
	.asciz "Playnomics.LitJson"
	.asciz "FF3F3AB6-2F40-4528-AACB-E7038C506F55"
	.asciz ""
	.asciz ""
	.align 3

	.long 0,0,7,0,0
.data
	.align 3
mono_aot_Assembly_CSharp_got:
	.space 228
got_end:
.data
	.align 3
mono_aot_got_addr:
	.align 2
	.long mono_aot_Assembly_CSharp_got
.data
	.align 3
mono_aot_file_info:

	.long 28,228,29,11,1024,1024,128,0
	.long 0,0,0,0,0
.text
	.align 2
mono_assembly_guid:
	.asciz "FAF032CD-DA48-4D23-BF68-1105660949E5"
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
	.asciz "Assembly-CSharp"
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
	.globl _mono_aot_module_Assembly_CSharp_info
	.align 3
_mono_aot_module_Assembly_CSharp_info:
	.align 2
	.long Lglobals
.text
	.align 3
mem_end:
#endif
