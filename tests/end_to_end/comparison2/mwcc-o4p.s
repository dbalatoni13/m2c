.include "macros.inc"

.section .text  # 0x0 - 0x4e8

.global test_s32
test_s32:
/* 00000000 00000000  7C 03 20 50 */	subf r0, r3, r4
/* 00000004 00000004  7C 88 1A 78 */	xor r8, r4, r3
/* 00000008 00000008  7C 00 00 34 */	cntlzw r0, r0
/* 0000000C 0000000C  54 69 0F FE */	srwi r9, r3, 0x1f
/* 00000010 00000010  54 07 D9 7E */	srwi r7, r0, 5
/* 00000014 00000014  7C C3 28 50 */	subf r6, r3, r5
/* 00000018 00000018  7C 05 18 50 */	subf r0, r5, r3
/* 0000001C 0000001C  90 E0 00 00 */	stw r7, global@sda21(r2)
/* 00000020 00000020  7C C0 03 78 */	or r0, r6, r0
/* 00000024 00000024  7D 05 0E 70 */	srawi r5, r8, 1
/* 00000028 00000028  54 07 0F FE */	srwi r7, r0, 0x1f
/* 0000002C 0000002C  7D 00 20 38 */	and r0, r8, r4
/* 00000030 00000030  7C C0 28 50 */	subf r6, r0, r5
/* 00000034 00000034  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 00000038 00000038  7C 03 20 10 */	subfc r0, r3, r4
/* 0000003C 0000003C  90 E0 00 00 */	stw r7, global@sda21(r2)
/* 00000040 00000040  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 00000044 00000044  7C E5 49 14 */	adde r7, r5, r9
/* 00000048 00000048  90 00 00 00 */	stw r0, global@sda21(r2)
/* 0000004C 0000004C  7D 05 0E 70 */	srawi r5, r8, 1
/* 00000050 00000050  7D 00 18 38 */	and r0, r8, r3
/* 00000054 00000054  7C 66 FE 70 */	srawi r6, r3, 0x1f
/* 00000058 00000058  7C 00 28 50 */	subf r0, r0, r5
/* 0000005C 0000005C  90 E0 00 00 */	stw r7, global@sda21(r2)
/* 00000060 00000060  54 08 0F FE */	srwi r8, r0, 0x1f
/* 00000064 00000064  54 85 0F FE */	srwi r5, r4, 0x1f
/* 00000068 00000068  7C 04 18 10 */	subfc r0, r4, r3
/* 0000006C 0000006C  7C 67 00 34 */	cntlzw r7, r3
/* 00000070 00000070  7C 04 00 D0 */	neg r0, r4
/* 00000074 00000074  91 00 00 00 */	stw r8, global@sda21(r2)
/* 00000078 00000078  7C A6 29 14 */	adde r5, r6, r5
/* 0000007C 0000007C  54 E6 D9 7E */	srwi r6, r7, 5
/* 00000080 00000080  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000084 00000084  7C 00 23 78 */	or r0, r0, r4
/* 00000088 00000088  54 05 0F FE */	srwi r5, r0, 0x1f
/* 0000008C 0000008C  38 80 00 01 */	li r4, 1
/* 00000090 00000090  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000094 00000094  7C 03 00 D0 */	neg r0, r3
/* 00000098 00000098  7C 00 18 78 */	andc r0, r0, r3
/* 0000009C 0000009C  5C 84 3F FE */	rlwnm r4, r4, r7, 0x1f, 0x1f
/* 000000A0 000000A0  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 000000A4 000000A4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 000000A8 000000A8  69 20 00 01 */	xori r0, r9, 1
/* 000000AC 000000AC  91 20 00 00 */	stw r9, global@sda21(r2)
/* 000000B0 000000B0  90 80 00 00 */	stw r4, global@sda21(r2)
/* 000000B4 000000B4  90 60 00 00 */	stw r3, global@sda21(r2)
/* 000000B8 000000B8  90 00 00 00 */	stw r0, global@sda21(r2)
/* 000000BC 000000BC  4E 80 00 20 */	blr 

.global test_u32
test_u32:
/* 000000C0 000000C0  7D 63 20 50 */	subf r11, r3, r4
/* 000000C4 000000C4  7C 80 1A 78 */	xor r0, r4, r3
/* 000000C8 000000C8  7D 67 00 34 */	cntlzw r7, r11
/* 000000CC 000000CC  7C C4 18 50 */	subf r6, r4, r3
/* 000000D0 000000D0  54 E9 D9 7E */	srwi r9, r7, 5
/* 000000D4 000000D4  7D 03 28 50 */	subf r8, r3, r5
/* 000000D8 000000D8  7C E5 18 50 */	subf r7, r5, r3
/* 000000DC 000000DC  91 20 00 00 */	stw r9, global@sda21(r2)
/* 000000E0 000000E0  7C 09 00 34 */	cntlzw r9, r0
/* 000000E4 000000E4  7C 65 00 34 */	cntlzw r5, r3
/* 000000E8 000000E8  7D 07 3B 78 */	or r7, r8, r7
/* 000000EC 000000EC  7C 04 00 D0 */	neg r0, r4
/* 000000F0 000000F0  54 E8 0F FE */	srwi r8, r7, 0x1f
/* 000000F4 000000F4  7C 87 48 30 */	slw r7, r4, r9
/* 000000F8 000000F8  91 00 00 00 */	stw r8, global@sda21(r2)
/* 000000FC 000000FC  54 EA 0F FE */	srwi r10, r7, 0x1f
/* 00000100 00000100  7C 88 1B 38 */	orc r8, r4, r3
/* 00000104 00000104  55 67 F8 7E */	srwi r7, r11, 1
/* 00000108 00000108  7D 07 40 50 */	subf r8, r7, r8
/* 0000010C 0000010C  7C 67 48 30 */	slw r7, r3, r9
/* 00000110 00000110  91 40 00 00 */	stw r10, global@sda21(r2)
/* 00000114 00000114  55 09 0F FE */	srwi r9, r8, 0x1f
/* 00000118 00000118  54 E8 0F FE */	srwi r8, r7, 0x1f
/* 0000011C 0000011C  7C 67 23 38 */	orc r7, r3, r4
/* 00000120 00000120  91 20 00 00 */	stw r9, global@sda21(r2)
/* 00000124 00000124  54 C6 F8 7E */	srwi r6, r6, 1
/* 00000128 00000128  7C C6 38 50 */	subf r6, r6, r7
/* 0000012C 0000012C  7C 04 23 78 */	or r4, r0, r4
/* 00000130 00000130  91 00 00 00 */	stw r8, global@sda21(r2)
/* 00000134 00000134  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 00000138 00000138  54 A6 D9 7E */	srwi r6, r5, 5
/* 0000013C 0000013C  7C 03 00 D0 */	neg r0, r3
/* 00000140 00000140  90 E0 00 00 */	stw r7, global@sda21(r2)
/* 00000144 00000144  54 85 0F FE */	srwi r5, r4, 0x1f
/* 00000148 00000148  7C 00 1B 78 */	or r0, r0, r3
/* 0000014C 0000014C  38 80 00 00 */	li r4, 0
/* 00000150 00000150  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000154 00000154  54 03 0F FE */	srwi r3, r0, 0x1f
/* 00000158 00000158  38 00 00 01 */	li r0, 1
/* 0000015C 0000015C  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000160 00000160  90 80 00 00 */	stw r4, global@sda21(r2)
/* 00000164 00000164  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000168 00000168  90 60 00 00 */	stw r3, global@sda21(r2)
/* 0000016C 0000016C  90 00 00 00 */	stw r0, global@sda21(r2)
/* 00000170 00000170  4E 80 00 20 */	blr 

.global test_s16
test_s16:
/* 00000174 00000174  7C 60 07 34 */	extsh r0, r3
/* 00000178 00000178  7C 8A 07 34 */	extsh r10, r4
/* 0000017C 0000017C  7C 80 50 50 */	subf r4, r0, r10
/* 00000180 00000180  7C A3 07 34 */	extsh r3, r5
/* 00000184 00000184  7C 84 00 34 */	cntlzw r4, r4
/* 00000188 00000188  7D 47 02 78 */	xor r7, r10, r0
/* 0000018C 0000018C  54 85 D9 7E */	srwi r5, r4, 5
/* 00000190 00000190  7C 80 18 50 */	subf r4, r0, r3
/* 00000194 00000194  7C 63 00 50 */	subf r3, r3, r0
/* 00000198 00000198  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 0000019C 0000019C  7C 83 1B 78 */	or r3, r4, r3
/* 000001A0 000001A0  7C E4 0E 70 */	srawi r4, r7, 1
/* 000001A4 000001A4  54 69 0F FE */	srwi r9, r3, 0x1f
/* 000001A8 000001A8  7C E3 50 38 */	and r3, r7, r10
/* 000001AC 000001AC  7C A3 20 50 */	subf r5, r3, r4
/* 000001B0 000001B0  7D 44 FE 70 */	srawi r4, r10, 0x1f
/* 000001B4 000001B4  54 08 0F FE */	srwi r8, r0, 0x1f
/* 000001B8 000001B8  7C 60 50 10 */	subfc r3, r0, r10
/* 000001BC 000001BC  7C C4 41 14 */	adde r6, r4, r8
/* 000001C0 000001C0  91 20 00 00 */	stw r9, global@sda21(r2)
/* 000001C4 000001C4  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 000001C8 000001C8  7C E4 0E 70 */	srawi r4, r7, 1
/* 000001CC 000001CC  90 60 00 00 */	stw r3, global@sda21(r2)
/* 000001D0 000001D0  7C E3 00 38 */	and r3, r7, r0
/* 000001D4 000001D4  7C 63 20 50 */	subf r3, r3, r4
/* 000001D8 000001D8  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 000001DC 000001DC  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 000001E0 000001E0  54 66 0F FE */	srwi r6, r3, 0x1f
/* 000001E4 000001E4  7C 07 00 34 */	cntlzw r7, r0
/* 000001E8 000001E8  55 44 0F FE */	srwi r4, r10, 0x1f
/* 000001EC 000001EC  7C 6A 00 10 */	subfc r3, r10, r0
/* 000001F0 000001F0  7C 6A 00 D0 */	neg r3, r10
/* 000001F4 000001F4  7C 63 53 78 */	or r3, r3, r10
/* 000001F8 000001F8  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 000001FC 000001FC  7C 85 21 14 */	adde r4, r5, r4
/* 00000200 00000200  54 E6 D9 7E */	srwi r6, r7, 5
/* 00000204 00000204  90 80 00 00 */	stw r4, global@sda21(r2)
/* 00000208 00000208  54 65 0F FE */	srwi r5, r3, 0x1f
/* 0000020C 0000020C  38 80 00 01 */	li r4, 1
/* 00000210 00000210  7C 60 00 D0 */	neg r3, r0
/* 00000214 00000214  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000218 00000218  7C 63 00 78 */	andc r3, r3, r0
/* 0000021C 0000021C  5C 84 3F FE */	rlwnm r4, r4, r7, 0x1f, 0x1f
/* 00000220 00000220  69 00 00 01 */	xori r0, r8, 1
/* 00000224 00000224  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000228 00000228  54 63 0F FE */	srwi r3, r3, 0x1f
/* 0000022C 0000022C  91 00 00 00 */	stw r8, global@sda21(r2)
/* 00000230 00000230  90 80 00 00 */	stw r4, global@sda21(r2)
/* 00000234 00000234  90 60 00 00 */	stw r3, global@sda21(r2)
/* 00000238 00000238  90 00 00 00 */	stw r0, global@sda21(r2)
/* 0000023C 0000023C  4E 80 00 20 */	blr 

.global test_u16
test_u16:
/* 00000240 00000240  54 6A 04 3E */	clrlwi r10, r3, 0x10
/* 00000244 00000244  54 89 04 3E */	clrlwi r9, r4, 0x10
/* 00000248 00000248  7D 0A 48 50 */	subf r8, r10, r9
/* 0000024C 0000024C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 00000250 00000250  7D 03 00 34 */	cntlzw r3, r8
/* 00000254 00000254  7C E9 50 50 */	subf r7, r9, r10
/* 00000258 00000258  54 64 D9 7E */	srwi r4, r3, 5
/* 0000025C 0000025C  7C 6A 00 50 */	subf r3, r10, r0
/* 00000260 00000260  7C 00 50 50 */	subf r0, r0, r10
/* 00000264 00000264  90 80 00 00 */	stw r4, global@sda21(r2)
/* 00000268 00000268  7C 60 03 78 */	or r0, r3, r0
/* 0000026C 0000026C  7D 44 00 34 */	cntlzw r4, r10
/* 00000270 00000270  54 03 0F FE */	srwi r3, r0, 0x1f
/* 00000274 00000274  7C 09 00 D0 */	neg r0, r9
/* 00000278 00000278  90 60 00 00 */	stw r3, global@sda21(r2)
/* 0000027C 0000027C  54 E6 0F FE */	srwi r6, r7, 0x1f
/* 00000280 00000280  7D 25 53 38 */	orc r5, r9, r10
/* 00000284 00000284  55 03 F8 7E */	srwi r3, r8, 1
/* 00000288 00000288  7C 63 28 50 */	subf r3, r3, r5
/* 0000028C 0000028C  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000290 00000290  54 65 0F FE */	srwi r5, r3, 0x1f
/* 00000294 00000294  7C 03 4B 78 */	or r3, r0, r9
/* 00000298 00000298  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 0000029C 0000029C  55 06 0F FE */	srwi r6, r8, 0x1f
/* 000002A0 000002A0  7D 45 4B 38 */	orc r5, r10, r9
/* 000002A4 000002A4  54 E0 F8 7E */	srwi r0, r7, 1
/* 000002A8 000002A8  7C 00 28 50 */	subf r0, r0, r5
/* 000002AC 000002AC  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 000002B0 000002B0  54 05 0F FE */	srwi r5, r0, 0x1f
/* 000002B4 000002B4  7C 0A 00 D0 */	neg r0, r10
/* 000002B8 000002B8  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 000002BC 000002BC  54 86 D9 7E */	srwi r6, r4, 5
/* 000002C0 000002C0  7C 00 53 78 */	or r0, r0, r10
/* 000002C4 000002C4  54 65 0F FE */	srwi r5, r3, 0x1f
/* 000002C8 000002C8  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 000002CC 000002CC  38 80 00 00 */	li r4, 0
/* 000002D0 000002D0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 000002D4 000002D4  38 00 00 01 */	li r0, 1
/* 000002D8 000002D8  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 000002DC 000002DC  90 80 00 00 */	stw r4, global@sda21(r2)
/* 000002E0 000002E0  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 000002E4 000002E4  90 60 00 00 */	stw r3, global@sda21(r2)
/* 000002E8 000002E8  90 00 00 00 */	stw r0, global@sda21(r2)
/* 000002EC 000002EC  4E 80 00 20 */	blr 

.global test_s8
test_s8:
/* 000002F0 000002F0  7C 60 07 74 */	extsb r0, r3
/* 000002F4 000002F4  7C 8A 07 74 */	extsb r10, r4
/* 000002F8 000002F8  7C 80 50 50 */	subf r4, r0, r10
/* 000002FC 000002FC  7C A3 07 74 */	extsb r3, r5
/* 00000300 00000300  7C 84 00 34 */	cntlzw r4, r4
/* 00000304 00000304  7D 47 02 78 */	xor r7, r10, r0
/* 00000308 00000308  54 85 D9 7E */	srwi r5, r4, 5
/* 0000030C 0000030C  7C 80 18 50 */	subf r4, r0, r3
/* 00000310 00000310  7C 63 00 50 */	subf r3, r3, r0
/* 00000314 00000314  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000318 00000318  7C 83 1B 78 */	or r3, r4, r3
/* 0000031C 0000031C  7C E4 0E 70 */	srawi r4, r7, 1
/* 00000320 00000320  54 69 0F FE */	srwi r9, r3, 0x1f
/* 00000324 00000324  7C E3 50 38 */	and r3, r7, r10
/* 00000328 00000328  7C A3 20 50 */	subf r5, r3, r4
/* 0000032C 0000032C  7D 44 FE 70 */	srawi r4, r10, 0x1f
/* 00000330 00000330  54 08 0F FE */	srwi r8, r0, 0x1f
/* 00000334 00000334  7C 60 50 10 */	subfc r3, r0, r10
/* 00000338 00000338  7C C4 41 14 */	adde r6, r4, r8
/* 0000033C 0000033C  91 20 00 00 */	stw r9, global@sda21(r2)
/* 00000340 00000340  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 00000344 00000344  7C E4 0E 70 */	srawi r4, r7, 1
/* 00000348 00000348  90 60 00 00 */	stw r3, global@sda21(r2)
/* 0000034C 0000034C  7C E3 00 38 */	and r3, r7, r0
/* 00000350 00000350  7C 63 20 50 */	subf r3, r3, r4
/* 00000354 00000354  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 00000358 00000358  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 0000035C 0000035C  54 66 0F FE */	srwi r6, r3, 0x1f
/* 00000360 00000360  7C 07 00 34 */	cntlzw r7, r0
/* 00000364 00000364  55 44 0F FE */	srwi r4, r10, 0x1f
/* 00000368 00000368  7C 6A 00 10 */	subfc r3, r10, r0
/* 0000036C 0000036C  7C 6A 00 D0 */	neg r3, r10
/* 00000370 00000370  7C 63 53 78 */	or r3, r3, r10
/* 00000374 00000374  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000378 00000378  7C 85 21 14 */	adde r4, r5, r4
/* 0000037C 0000037C  54 E6 D9 7E */	srwi r6, r7, 5
/* 00000380 00000380  90 80 00 00 */	stw r4, global@sda21(r2)
/* 00000384 00000384  54 65 0F FE */	srwi r5, r3, 0x1f
/* 00000388 00000388  38 80 00 01 */	li r4, 1
/* 0000038C 0000038C  7C 60 00 D0 */	neg r3, r0
/* 00000390 00000390  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000394 00000394  7C 63 00 78 */	andc r3, r3, r0
/* 00000398 00000398  5C 84 3F FE */	rlwnm r4, r4, r7, 0x1f, 0x1f
/* 0000039C 0000039C  69 00 00 01 */	xori r0, r8, 1
/* 000003A0 000003A0  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 000003A4 000003A4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 000003A8 000003A8  91 00 00 00 */	stw r8, global@sda21(r2)
/* 000003AC 000003AC  90 80 00 00 */	stw r4, global@sda21(r2)
/* 000003B0 000003B0  90 60 00 00 */	stw r3, global@sda21(r2)
/* 000003B4 000003B4  90 00 00 00 */	stw r0, global@sda21(r2)
/* 000003B8 000003B8  4E 80 00 20 */	blr 

.global test_u8
test_u8:
/* 000003BC 000003BC  54 6A 06 3E */	clrlwi r10, r3, 0x18
/* 000003C0 000003C0  54 89 06 3E */	clrlwi r9, r4, 0x18
/* 000003C4 000003C4  7D 0A 48 50 */	subf r8, r10, r9
/* 000003C8 000003C8  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 000003CC 000003CC  7D 03 00 34 */	cntlzw r3, r8
/* 000003D0 000003D0  7C E9 50 50 */	subf r7, r9, r10
/* 000003D4 000003D4  54 64 D9 7E */	srwi r4, r3, 5
/* 000003D8 000003D8  7C 6A 00 50 */	subf r3, r10, r0
/* 000003DC 000003DC  7C 00 50 50 */	subf r0, r0, r10
/* 000003E0 000003E0  90 80 00 00 */	stw r4, global@sda21(r2)
/* 000003E4 000003E4  7C 60 03 78 */	or r0, r3, r0
/* 000003E8 000003E8  7D 44 00 34 */	cntlzw r4, r10
/* 000003EC 000003EC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 000003F0 000003F0  7C 09 00 D0 */	neg r0, r9
/* 000003F4 000003F4  90 60 00 00 */	stw r3, global@sda21(r2)
/* 000003F8 000003F8  54 E6 0F FE */	srwi r6, r7, 0x1f
/* 000003FC 000003FC  7D 25 53 38 */	orc r5, r9, r10
/* 00000400 00000400  55 03 F8 7E */	srwi r3, r8, 1
/* 00000404 00000404  7C 63 28 50 */	subf r3, r3, r5
/* 00000408 00000408  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 0000040C 0000040C  54 65 0F FE */	srwi r5, r3, 0x1f
/* 00000410 00000410  7C 03 4B 78 */	or r3, r0, r9
/* 00000414 00000414  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000418 00000418  55 06 0F FE */	srwi r6, r8, 0x1f
/* 0000041C 0000041C  7D 45 4B 38 */	orc r5, r10, r9
/* 00000420 00000420  54 E0 F8 7E */	srwi r0, r7, 1
/* 00000424 00000424  7C 00 28 50 */	subf r0, r0, r5
/* 00000428 00000428  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 0000042C 0000042C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 00000430 00000430  7C 0A 00 D0 */	neg r0, r10
/* 00000434 00000434  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000438 00000438  54 86 D9 7E */	srwi r6, r4, 5
/* 0000043C 0000043C  7C 00 53 78 */	or r0, r0, r10
/* 00000440 00000440  54 65 0F FE */	srwi r5, r3, 0x1f
/* 00000444 00000444  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000448 00000448  38 80 00 00 */	li r4, 0
/* 0000044C 0000044C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 00000450 00000450  38 00 00 01 */	li r0, 1
/* 00000454 00000454  90 A0 00 00 */	stw r5, global@sda21(r2)
/* 00000458 00000458  90 80 00 00 */	stw r4, global@sda21(r2)
/* 0000045C 0000045C  90 C0 00 00 */	stw r6, global@sda21(r2)
/* 00000460 00000460  90 60 00 00 */	stw r3, global@sda21(r2)
/* 00000464 00000464  90 00 00 00 */	stw r0, global@sda21(r2)
/* 00000468 00000468  4E 80 00 20 */	blr 

.global test
test:
/* 0000046C 0000046C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000470 00000470  7C 08 02 A6 */	mflr r0
/* 00000474 00000474  38 60 00 01 */	li r3, 1
/* 00000478 00000478  38 80 00 02 */	li r4, 2
/* 0000047C 0000047C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000480 00000480  38 A0 00 03 */	li r5, 3
/* 00000484 00000484  48 00 00 01 */	bl test_s32
/* 00000488 00000488  38 60 00 01 */	li r3, 1
/* 0000048C 0000048C  38 80 00 02 */	li r4, 2
/* 00000490 00000490  38 A0 00 03 */	li r5, 3
/* 00000494 00000494  48 00 00 01 */	bl test_u32
/* 00000498 00000498  38 60 00 01 */	li r3, 1
/* 0000049C 0000049C  38 80 00 02 */	li r4, 2
/* 000004A0 000004A0  38 A0 00 03 */	li r5, 3
/* 000004A4 000004A4  48 00 00 01 */	bl test_s16
/* 000004A8 000004A8  38 60 00 01 */	li r3, 1
/* 000004AC 000004AC  38 80 00 02 */	li r4, 2
/* 000004B0 000004B0  38 A0 00 03 */	li r5, 3
/* 000004B4 000004B4  48 00 00 01 */	bl test_u16
/* 000004B8 000004B8  38 60 00 01 */	li r3, 1
/* 000004BC 000004BC  38 80 00 02 */	li r4, 2
/* 000004C0 000004C0  38 A0 00 03 */	li r5, 3
/* 000004C4 000004C4  48 00 00 01 */	bl test_s8
/* 000004C8 000004C8  38 60 00 01 */	li r3, 1
/* 000004CC 000004CC  38 80 00 02 */	li r4, 2
/* 000004D0 000004D0  38 A0 00 03 */	li r5, 3
/* 000004D4 000004D4  48 00 00 01 */	bl test_u8
/* 000004D8 000004D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004DC 000004DC  7C 08 03 A6 */	mtlr r0
/* 000004E0 000004E0  38 21 00 10 */	addi r1, r1, 0x10
/* 000004E4 000004E4  4E 80 00 20 */	blr 

.section .sbss  # 0x0 - 0x4

.global global
global:
	.word 0x00000000

