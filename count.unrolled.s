digit = $401           ; VTAB 1:HTAB 2

    ORG $800

    LDX #'0' + $80
    LDY #'1' + $80      ; A,BCD,EFG
    STX digit - 1       ; 0,BCD,EFG
    STX digit + 0       ; 0,0CD,EFG
    STX digit + 1       ; 0,00D,EFG
    STX digit + 2       ; 0,000,EFG
    STX digit + 3       ; 0,000,0FG
    STX digit + 4       ; 0,000,00G
    STX digit + 5       ; 0,000,000

    JSR Count_100_000   ; 100000
    JSR Count_100_000   ; 200000
    JSR Count_100_000   ; 300000
    JSR Count_100_000   ; 400000
    JSR Count_100_000   ; 500000
    JSR Count_100_000   ; 600000
    JSR Count_100_000   ; 700000
    JSR Count_100_000   ; 800000
    JSR Count_100_000   ; 900000
    JSR Count_100_000   ; 000000
    STX digit + 0       ; 000000
    STY digit - 1       ;1000000
    RTS

Count_100_000
    JSR Count_10_000    ; 010000
    JSR Count_10_000    ; 020000
    JSR Count_10_000    ; 030000
    JSR Count_10_000    ; 040000
    JSR Count_10_000    ; 050000
    JSR Count_10_000    ; 060000
    JSR Count_10_000    ; 070000
    JSR Count_10_000    ; 080000
    JSR Count_10_000    ; 090000
    JSR Count_10_000    ;  00000
    STX digit + 1       ; 000000
    INC digit + 0       ; 100000
    RTS

Count_10_000
    STY digit + 5       ; 000001  @ 0819
    INC digit + 5       ; 000002
    INC digit + 5       ; 000003
    INC digit + 5       ; 000004
    INC digit + 5       ; 000005
    INC digit + 5       ; 000006
    INC digit + 5       ; 000007
    INC digit + 5       ; 000008
    INC digit + 5       ; 000009
    STX digit + 5       ; 000000  @ 0834
    STY digit + 4       ; 000010  @ 0837

    STY digit + 5       ; 000011  @ 083A
    INC digit + 5       ; 000012
    INC digit + 5       ; 000013
    INC digit + 5       ; 000014
    INC digit + 5       ; 000015
    INC digit + 5       ; 000016
    INC digit + 5       ; 000017
    INC digit + 5       ; 000018
    INC digit + 5       ; 000019
    STX digit + 5       ; 000010  @ 0855
    INC digit + 4       ; 000020

    STY digit + 5       ; 000021  @ 085B
    INC digit + 5       ; 000022
    INC digit + 5       ; 000023
    INC digit + 5       ; 000024
    INC digit + 5       ; 000025
    INC digit + 5       ; 000026
    INC digit + 5       ; 000027
    INC digit + 5       ; 000028
    INC digit + 5       ; 000029
    STX digit + 5       ; 000020  @ 0876
    INC digit + 4       ; 000030

    STY digit + 5       ; 000031  @ 087C
    INC digit + 5       ; 000032
    INC digit + 5       ; 000033
    INC digit + 5       ; 000034
    INC digit + 5       ; 000035
    INC digit + 5       ; 000036
    INC digit + 5       ; 000037
    INC digit + 5       ; 000038
    INC digit + 5       ; 000039
    STX digit + 5       ; 000030  @ 0897
    INC digit + 4       ; 000040

    STY digit + 5       ; 000041  @ 089D
    INC digit + 5       ; 000042
    INC digit + 5       ; 000043
    INC digit + 5       ; 000044
    INC digit + 5       ; 000045
    INC digit + 5       ; 000046
    INC digit + 5       ; 000047
    INC digit + 5       ; 000048
    INC digit + 5       ; 000049
    STX digit + 5       ; 000040  @ 08B8
    INC digit + 4       ; 000050

    STY digit + 5       ; 000051  @ 08BE
    INC digit + 5       ; 000052
    INC digit + 5       ; 000053
    INC digit + 5       ; 000054
    INC digit + 5       ; 000055
    INC digit + 5       ; 000056
    INC digit + 5       ; 000057
    INC digit + 5       ; 000058
    INC digit + 5       ; 000059
    STX digit + 5       ; 000050  @ 08D9
    INC digit + 4       ; 000060

    STY digit + 5       ; 000061  @ 08DF
    INC digit + 5       ; 000062
    INC digit + 5       ; 000063
    INC digit + 5       ; 000064
    INC digit + 5       ; 000065
    INC digit + 5       ; 000066
    INC digit + 5       ; 000067
    INC digit + 5       ; 000068
    INC digit + 5       ; 000069
    STX digit + 5       ; 000060  @ 08FA
    INC digit + 4       ; 000070

    STY digit + 5       ; 000071  @ 0900
    INC digit + 5       ; 000072
    INC digit + 5       ; 000073
    INC digit + 5       ; 000074
    INC digit + 5       ; 000075
    INC digit + 5       ; 000076
    INC digit + 5       ; 000077
    INC digit + 5       ; 000078
    INC digit + 5       ; 000079
    STX digit + 5       ; 000070  @ 091B
    INC digit + 4       ; 000080

    STY digit + 5       ; 000081  @ 0921
    INC digit + 5       ; 000082
    INC digit + 5       ; 000083
    INC digit + 5       ; 000084
    INC digit + 5       ; 000085
    INC digit + 5       ; 000086
    INC digit + 5       ; 000087
    INC digit + 5       ; 000088
    INC digit + 5       ; 000089
    STX digit + 5       ; 000080  @ 093C
    INC digit + 4       ; 000090

    STY digit + 5       ; 000091  @ 0942
    INC digit + 5       ; 000092
    INC digit + 5       ; 000093
    INC digit + 5       ; 000094
    INC digit + 5       ; 000095
    INC digit + 5       ; 000096
    INC digit + 5       ; 000097
    INC digit + 5       ; 000098
    INC digit + 5       ; 000099
    STX digit + 5       ; 000090  @ 095D
    STX digit + 4       ; 000000  @ 0960
    STY digit + 3       ; 000100  @ 0963

    STY digit + 5       ; 000101  @ 0966
    INC digit + 5       ; 000102
    INC digit + 5       ; 000103
    INC digit + 5       ; 000104
    INC digit + 5       ; 000105
    INC digit + 5       ; 000106
    INC digit + 5       ; 000107
    INC digit + 5       ; 000108
    INC digit + 5       ; 000109
    STX digit + 5       ; 000100  @ 0981
    STY digit + 4       ; 000110  @ 0984

    STY digit + 5       ; 000111  @ 0987
    INC digit + 5       ; 000112
    INC digit + 5       ; 000113
    INC digit + 5       ; 000114
    INC digit + 5       ; 000115
    INC digit + 5       ; 000116
    INC digit + 5       ; 000117
    INC digit + 5       ; 000118
    INC digit + 5       ; 000119
    STX digit + 5       ; 000110  @ 09A2
    INC digit + 4       ; 000120

    STY digit + 5       ; 000121  @ 09A8
    INC digit + 5       ; 000122
    INC digit + 5       ; 000123
    INC digit + 5       ; 000124
    INC digit + 5       ; 000125
    INC digit + 5       ; 000126
    INC digit + 5       ; 000127
    INC digit + 5       ; 000128
    INC digit + 5       ; 000129
    STX digit + 5       ; 000120  @ 09C3
    INC digit + 4       ; 000130

    STY digit + 5       ; 000131  @ 09C9
    INC digit + 5       ; 000132
    INC digit + 5       ; 000133
    INC digit + 5       ; 000134
    INC digit + 5       ; 000135
    INC digit + 5       ; 000136
    INC digit + 5       ; 000137
    INC digit + 5       ; 000138
    INC digit + 5       ; 000139
    STX digit + 5       ; 000130  @ 09E4
    INC digit + 4       ; 000140

    STY digit + 5       ; 000141  @ 09EA
    INC digit + 5       ; 000142
    INC digit + 5       ; 000143
    INC digit + 5       ; 000144
    INC digit + 5       ; 000145
    INC digit + 5       ; 000146
    INC digit + 5       ; 000147
    INC digit + 5       ; 000148
    INC digit + 5       ; 000149
    STX digit + 5       ; 000140  @ 0A05
    INC digit + 4       ; 000150

    STY digit + 5       ; 000151  @ 0A0B
    INC digit + 5       ; 000152
    INC digit + 5       ; 000153
    INC digit + 5       ; 000154
    INC digit + 5       ; 000155
    INC digit + 5       ; 000156
    INC digit + 5       ; 000157
    INC digit + 5       ; 000158
    INC digit + 5       ; 000159
    STX digit + 5       ; 000150  @ 0A26
    INC digit + 4       ; 000160

    STY digit + 5       ; 000161  @ 0A2C
    INC digit + 5       ; 000162
    INC digit + 5       ; 000163
    INC digit + 5       ; 000164
    INC digit + 5       ; 000165
    INC digit + 5       ; 000166
    INC digit + 5       ; 000167
    INC digit + 5       ; 000168
    INC digit + 5       ; 000169
    STX digit + 5       ; 000160  @ 0A47
    INC digit + 4       ; 000170

    STY digit + 5       ; 000171  @ 0A4D
    INC digit + 5       ; 000172
    INC digit + 5       ; 000173
    INC digit + 5       ; 000174
    INC digit + 5       ; 000175
    INC digit + 5       ; 000176
    INC digit + 5       ; 000177
    INC digit + 5       ; 000178
    INC digit + 5       ; 000179
    STX digit + 5       ; 000170  @ 0A68
    INC digit + 4       ; 000180

    STY digit + 5       ; 000181  @ 0A6E
    INC digit + 5       ; 000182
    INC digit + 5       ; 000183
    INC digit + 5       ; 000184
    INC digit + 5       ; 000185
    INC digit + 5       ; 000186
    INC digit + 5       ; 000187
    INC digit + 5       ; 000188
    INC digit + 5       ; 000189
    STX digit + 5       ; 000180  @ 0A89
    INC digit + 4       ; 000190

    STY digit + 5       ; 000191  @ 0A8F
    INC digit + 5       ; 000192
    INC digit + 5       ; 000193
    INC digit + 5       ; 000194
    INC digit + 5       ; 000195
    INC digit + 5       ; 000196
    INC digit + 5       ; 000197
    INC digit + 5       ; 000198
    INC digit + 5       ; 000199
    STX digit + 5       ; 000190  @ 0AAA
    STX digit + 4       ; 000100  @ 0AAD
    INC digit + 3       ; 000200

    STY digit + 5       ; 000201  @ 0AB3
    INC digit + 5       ; 000202
    INC digit + 5       ; 000203
    INC digit + 5       ; 000204
    INC digit + 5       ; 000205
    INC digit + 5       ; 000206
    INC digit + 5       ; 000207
    INC digit + 5       ; 000208
    INC digit + 5       ; 000209
    STX digit + 5       ; 000200  @ 0ACE
    STY digit + 4       ; 000210  @ 0AD1

    STY digit + 5       ; 000211  @ 0AD4
    INC digit + 5       ; 000212
    INC digit + 5       ; 000213
    INC digit + 5       ; 000214
    INC digit + 5       ; 000215
    INC digit + 5       ; 000216
    INC digit + 5       ; 000217
    INC digit + 5       ; 000218
    INC digit + 5       ; 000219
    STX digit + 5       ; 000210  @ 0AEF
    INC digit + 4       ; 000220

    STY digit + 5       ; 000221  @ 0AF5
    INC digit + 5       ; 000222
    INC digit + 5       ; 000223
    INC digit + 5       ; 000224
    INC digit + 5       ; 000225
    INC digit + 5       ; 000226
    INC digit + 5       ; 000227
    INC digit + 5       ; 000228
    INC digit + 5       ; 000229
    STX digit + 5       ; 000220  @ 0B10
    INC digit + 4       ; 000230

    STY digit + 5       ; 000231  @ 0B16
    INC digit + 5       ; 000232
    INC digit + 5       ; 000233
    INC digit + 5       ; 000234
    INC digit + 5       ; 000235
    INC digit + 5       ; 000236
    INC digit + 5       ; 000237
    INC digit + 5       ; 000238
    INC digit + 5       ; 000239
    STX digit + 5       ; 000230  @ 0B31
    INC digit + 4       ; 000240

    STY digit + 5       ; 000241  @ 0B37
    INC digit + 5       ; 000242
    INC digit + 5       ; 000243
    INC digit + 5       ; 000244
    INC digit + 5       ; 000245
    INC digit + 5       ; 000246
    INC digit + 5       ; 000247
    INC digit + 5       ; 000248
    INC digit + 5       ; 000249
    STX digit + 5       ; 000240  @ 0B52
    INC digit + 4       ; 000250

    STY digit + 5       ; 000251  @ 0B58
    INC digit + 5       ; 000252
    INC digit + 5       ; 000253
    INC digit + 5       ; 000254
    INC digit + 5       ; 000255
    INC digit + 5       ; 000256
    INC digit + 5       ; 000257
    INC digit + 5       ; 000258
    INC digit + 5       ; 000259
    STX digit + 5       ; 000250  @ 0B73
    INC digit + 4       ; 000260

    STY digit + 5       ; 000261  @ 0B79
    INC digit + 5       ; 000262
    INC digit + 5       ; 000263
    INC digit + 5       ; 000264
    INC digit + 5       ; 000265
    INC digit + 5       ; 000266
    INC digit + 5       ; 000267
    INC digit + 5       ; 000268
    INC digit + 5       ; 000269
    STX digit + 5       ; 000260  @ 0B94
    INC digit + 4       ; 000270

    STY digit + 5       ; 000271  @ 0B9A
    INC digit + 5       ; 000272
    INC digit + 5       ; 000273
    INC digit + 5       ; 000274
    INC digit + 5       ; 000275
    INC digit + 5       ; 000276
    INC digit + 5       ; 000277
    INC digit + 5       ; 000278
    INC digit + 5       ; 000279
    STX digit + 5       ; 000270  @ 0BB5
    INC digit + 4       ; 000280

    STY digit + 5       ; 000281  @ 0BBB
    INC digit + 5       ; 000282
    INC digit + 5       ; 000283
    INC digit + 5       ; 000284
    INC digit + 5       ; 000285
    INC digit + 5       ; 000286
    INC digit + 5       ; 000287
    INC digit + 5       ; 000288
    INC digit + 5       ; 000289
    STX digit + 5       ; 000280  @ 0BD6
    INC digit + 4       ; 000290

    STY digit + 5       ; 000291  @ 0BDC
    INC digit + 5       ; 000292
    INC digit + 5       ; 000293
    INC digit + 5       ; 000294
    INC digit + 5       ; 000295
    INC digit + 5       ; 000296
    INC digit + 5       ; 000297
    INC digit + 5       ; 000298
    INC digit + 5       ; 000299
    STX digit + 5       ; 000290  @ 0BF7
    STX digit + 4       ; 000200  @ 0BFA
    INC digit + 3       ; 000300

    STY digit + 5       ; 000301  @ 0C00
    INC digit + 5       ; 000302
    INC digit + 5       ; 000303
    INC digit + 5       ; 000304
    INC digit + 5       ; 000305
    INC digit + 5       ; 000306
    INC digit + 5       ; 000307
    INC digit + 5       ; 000308
    INC digit + 5       ; 000309
    STX digit + 5       ; 000300  @ 0C1B
    STY digit + 4       ; 000310  @ 0C1E

    STY digit + 5       ; 000311  @ 0C21
    INC digit + 5       ; 000312
    INC digit + 5       ; 000313
    INC digit + 5       ; 000314
    INC digit + 5       ; 000315
    INC digit + 5       ; 000316
    INC digit + 5       ; 000317
    INC digit + 5       ; 000318
    INC digit + 5       ; 000319
    STX digit + 5       ; 000310  @ 0C3C
    INC digit + 4       ; 000320

    STY digit + 5       ; 000321  @ 0C42
    INC digit + 5       ; 000322
    INC digit + 5       ; 000323
    INC digit + 5       ; 000324
    INC digit + 5       ; 000325
    INC digit + 5       ; 000326
    INC digit + 5       ; 000327
    INC digit + 5       ; 000328
    INC digit + 5       ; 000329
    STX digit + 5       ; 000320  @ 0C5D
    INC digit + 4       ; 000330

    STY digit + 5       ; 000331  @ 0C63
    INC digit + 5       ; 000332
    INC digit + 5       ; 000333
    INC digit + 5       ; 000334
    INC digit + 5       ; 000335
    INC digit + 5       ; 000336
    INC digit + 5       ; 000337
    INC digit + 5       ; 000338
    INC digit + 5       ; 000339
    STX digit + 5       ; 000330  @ 0C7E
    INC digit + 4       ; 000340

    STY digit + 5       ; 000341  @ 0C84
    INC digit + 5       ; 000342
    INC digit + 5       ; 000343
    INC digit + 5       ; 000344
    INC digit + 5       ; 000345
    INC digit + 5       ; 000346
    INC digit + 5       ; 000347
    INC digit + 5       ; 000348
    INC digit + 5       ; 000349
    STX digit + 5       ; 000340  @ 0C9F
    INC digit + 4       ; 000350

    STY digit + 5       ; 000351  @ 0CA5
    INC digit + 5       ; 000352
    INC digit + 5       ; 000353
    INC digit + 5       ; 000354
    INC digit + 5       ; 000355
    INC digit + 5       ; 000356
    INC digit + 5       ; 000357
    INC digit + 5       ; 000358
    INC digit + 5       ; 000359
    STX digit + 5       ; 000350  @ 0CC0
    INC digit + 4       ; 000360

    STY digit + 5       ; 000361  @ 0CC6
    INC digit + 5       ; 000362
    INC digit + 5       ; 000363
    INC digit + 5       ; 000364
    INC digit + 5       ; 000365
    INC digit + 5       ; 000366
    INC digit + 5       ; 000367
    INC digit + 5       ; 000368
    INC digit + 5       ; 000369
    STX digit + 5       ; 000360  @ 0CE1
    INC digit + 4       ; 000370

    STY digit + 5       ; 000371  @ 0CE7
    INC digit + 5       ; 000372
    INC digit + 5       ; 000373
    INC digit + 5       ; 000374
    INC digit + 5       ; 000375
    INC digit + 5       ; 000376
    INC digit + 5       ; 000377
    INC digit + 5       ; 000378
    INC digit + 5       ; 000379
    STX digit + 5       ; 000370  @ 0D02
    INC digit + 4       ; 000380

    STY digit + 5       ; 000381  @ 0D08
    INC digit + 5       ; 000382
    INC digit + 5       ; 000383
    INC digit + 5       ; 000384
    INC digit + 5       ; 000385
    INC digit + 5       ; 000386
    INC digit + 5       ; 000387
    INC digit + 5       ; 000388
    INC digit + 5       ; 000389
    STX digit + 5       ; 000380  @ 0D23
    INC digit + 4       ; 000390

    STY digit + 5       ; 000391  @ 0D29
    INC digit + 5       ; 000392
    INC digit + 5       ; 000393
    INC digit + 5       ; 000394
    INC digit + 5       ; 000395
    INC digit + 5       ; 000396
    INC digit + 5       ; 000397
    INC digit + 5       ; 000398
    INC digit + 5       ; 000399
    STX digit + 5       ; 000390  @ 0D44
    STX digit + 4       ; 000300  @ 0D47
    INC digit + 3       ; 000400

    STY digit + 5       ; 000401  @ 0D4D
    INC digit + 5       ; 000402
    INC digit + 5       ; 000403
    INC digit + 5       ; 000404
    INC digit + 5       ; 000405
    INC digit + 5       ; 000406
    INC digit + 5       ; 000407
    INC digit + 5       ; 000408
    INC digit + 5       ; 000409
    STX digit + 5       ; 000400  @ 0D68
    STY digit + 4       ; 000410  @ 0D6B

    STY digit + 5       ; 000411  @ 0D6E
    INC digit + 5       ; 000412
    INC digit + 5       ; 000413
    INC digit + 5       ; 000414
    INC digit + 5       ; 000415
    INC digit + 5       ; 000416
    INC digit + 5       ; 000417
    INC digit + 5       ; 000418
    INC digit + 5       ; 000419
    STX digit + 5       ; 000410  @ 0D89
    INC digit + 4       ; 000420

    STY digit + 5       ; 000421  @ 0D8F
    INC digit + 5       ; 000422
    INC digit + 5       ; 000423
    INC digit + 5       ; 000424
    INC digit + 5       ; 000425
    INC digit + 5       ; 000426
    INC digit + 5       ; 000427
    INC digit + 5       ; 000428
    INC digit + 5       ; 000429
    STX digit + 5       ; 000420  @ 0DAA
    INC digit + 4       ; 000430

    STY digit + 5       ; 000431  @ 0DB0
    INC digit + 5       ; 000432
    INC digit + 5       ; 000433
    INC digit + 5       ; 000434
    INC digit + 5       ; 000435
    INC digit + 5       ; 000436
    INC digit + 5       ; 000437
    INC digit + 5       ; 000438
    INC digit + 5       ; 000439
    STX digit + 5       ; 000430  @ 0DCB
    INC digit + 4       ; 000440

    STY digit + 5       ; 000441  @ 0DD1
    INC digit + 5       ; 000442
    INC digit + 5       ; 000443
    INC digit + 5       ; 000444
    INC digit + 5       ; 000445
    INC digit + 5       ; 000446
    INC digit + 5       ; 000447
    INC digit + 5       ; 000448
    INC digit + 5       ; 000449
    STX digit + 5       ; 000440  @ 0DEC
    INC digit + 4       ; 000450

    STY digit + 5       ; 000451  @ 0DF2
    INC digit + 5       ; 000452
    INC digit + 5       ; 000453
    INC digit + 5       ; 000454
    INC digit + 5       ; 000455
    INC digit + 5       ; 000456
    INC digit + 5       ; 000457
    INC digit + 5       ; 000458
    INC digit + 5       ; 000459
    STX digit + 5       ; 000450  @ 0E0D
    INC digit + 4       ; 000460

    STY digit + 5       ; 000461  @ 0E13
    INC digit + 5       ; 000462
    INC digit + 5       ; 000463
    INC digit + 5       ; 000464
    INC digit + 5       ; 000465
    INC digit + 5       ; 000466
    INC digit + 5       ; 000467
    INC digit + 5       ; 000468
    INC digit + 5       ; 000469
    STX digit + 5       ; 000460  @ 0E2E
    INC digit + 4       ; 000470

    STY digit + 5       ; 000471  @ 0E34
    INC digit + 5       ; 000472
    INC digit + 5       ; 000473
    INC digit + 5       ; 000474
    INC digit + 5       ; 000475
    INC digit + 5       ; 000476
    INC digit + 5       ; 000477
    INC digit + 5       ; 000478
    INC digit + 5       ; 000479
    STX digit + 5       ; 000470  @ 0E4F
    INC digit + 4       ; 000480

    STY digit + 5       ; 000481  @ 0E55
    INC digit + 5       ; 000482
    INC digit + 5       ; 000483
    INC digit + 5       ; 000484
    INC digit + 5       ; 000485
    INC digit + 5       ; 000486
    INC digit + 5       ; 000487
    INC digit + 5       ; 000488
    INC digit + 5       ; 000489
    STX digit + 5       ; 000480  @ 0E70
    INC digit + 4       ; 000490

    STY digit + 5       ; 000491  @ 0E76
    INC digit + 5       ; 000492
    INC digit + 5       ; 000493
    INC digit + 5       ; 000494
    INC digit + 5       ; 000495
    INC digit + 5       ; 000496
    INC digit + 5       ; 000497
    INC digit + 5       ; 000498
    INC digit + 5       ; 000499
    STX digit + 5       ; 000490  @ 0E91
    STX digit + 4       ; 000400  @ 0E94
    INC digit + 3       ; 000500

    STY digit + 5       ; 000501  @ 0E9A
    INC digit + 5       ; 000502
    INC digit + 5       ; 000503
    INC digit + 5       ; 000504
    INC digit + 5       ; 000505
    INC digit + 5       ; 000506
    INC digit + 5       ; 000507
    INC digit + 5       ; 000508
    INC digit + 5       ; 000509
    STX digit + 5       ; 000500  @ 0EB5
    STY digit + 4       ; 000510  @ 0EB8

    STY digit + 5       ; 000511  @ 0EBB
    INC digit + 5       ; 000512
    INC digit + 5       ; 000513
    INC digit + 5       ; 000514
    INC digit + 5       ; 000515
    INC digit + 5       ; 000516
    INC digit + 5       ; 000517
    INC digit + 5       ; 000518
    INC digit + 5       ; 000519
    STX digit + 5       ; 000510  @ 0ED6
    INC digit + 4       ; 000520

    STY digit + 5       ; 000521  @ 0EDC
    INC digit + 5       ; 000522
    INC digit + 5       ; 000523
    INC digit + 5       ; 000524
    INC digit + 5       ; 000525
    INC digit + 5       ; 000526
    INC digit + 5       ; 000527
    INC digit + 5       ; 000528
    INC digit + 5       ; 000529
    STX digit + 5       ; 000520  @ 0EF7
    INC digit + 4       ; 000530

    STY digit + 5       ; 000531  @ 0EFD
    INC digit + 5       ; 000532
    INC digit + 5       ; 000533
    INC digit + 5       ; 000534
    INC digit + 5       ; 000535
    INC digit + 5       ; 000536
    INC digit + 5       ; 000537
    INC digit + 5       ; 000538
    INC digit + 5       ; 000539
    STX digit + 5       ; 000530  @ 0F18
    INC digit + 4       ; 000540

    STY digit + 5       ; 000541  @ 0F1E
    INC digit + 5       ; 000542
    INC digit + 5       ; 000543
    INC digit + 5       ; 000544
    INC digit + 5       ; 000545
    INC digit + 5       ; 000546
    INC digit + 5       ; 000547
    INC digit + 5       ; 000548
    INC digit + 5       ; 000549
    STX digit + 5       ; 000540  @ 0F39
    INC digit + 4       ; 000550

    STY digit + 5       ; 000551  @ 0F3F
    INC digit + 5       ; 000552
    INC digit + 5       ; 000553
    INC digit + 5       ; 000554
    INC digit + 5       ; 000555
    INC digit + 5       ; 000556
    INC digit + 5       ; 000557
    INC digit + 5       ; 000558
    INC digit + 5       ; 000559
    STX digit + 5       ; 000550  @ 0F5A
    INC digit + 4       ; 000560

    STY digit + 5       ; 000561  @ 0F60
    INC digit + 5       ; 000562
    INC digit + 5       ; 000563
    INC digit + 5       ; 000564
    INC digit + 5       ; 000565
    INC digit + 5       ; 000566
    INC digit + 5       ; 000567
    INC digit + 5       ; 000568
    INC digit + 5       ; 000569
    STX digit + 5       ; 000560  @ 0F7B
    INC digit + 4       ; 000570

    STY digit + 5       ; 000571  @ 0F81
    INC digit + 5       ; 000572
    INC digit + 5       ; 000573
    INC digit + 5       ; 000574
    INC digit + 5       ; 000575
    INC digit + 5       ; 000576
    INC digit + 5       ; 000577
    INC digit + 5       ; 000578
    INC digit + 5       ; 000579
    STX digit + 5       ; 000570  @ 0F9C
    INC digit + 4       ; 000580

    STY digit + 5       ; 000581  @ 0FA2
    INC digit + 5       ; 000582
    INC digit + 5       ; 000583
    INC digit + 5       ; 000584
    INC digit + 5       ; 000585
    INC digit + 5       ; 000586
    INC digit + 5       ; 000587
    INC digit + 5       ; 000588
    INC digit + 5       ; 000589
    STX digit + 5       ; 000580  @ 0FBD
    INC digit + 4       ; 000590

    STY digit + 5       ; 000591  @ 0FC3
    INC digit + 5       ; 000592
    INC digit + 5       ; 000593
    INC digit + 5       ; 000594
    INC digit + 5       ; 000595
    INC digit + 5       ; 000596
    INC digit + 5       ; 000597
    INC digit + 5       ; 000598
    INC digit + 5       ; 000599
    STX digit + 5       ; 000590  @ 0FDE
    STX digit + 4       ; 000500  @ 0FE1
    INC digit + 3       ; 000600

    STY digit + 5       ; 000601  @ 0FE7
    INC digit + 5       ; 000602
    INC digit + 5       ; 000603
    INC digit + 5       ; 000604
    INC digit + 5       ; 000605
    INC digit + 5       ; 000606
    INC digit + 5       ; 000607
    INC digit + 5       ; 000608
    INC digit + 5       ; 000609
    STX digit + 5       ; 000600  @ 1002
    STY digit + 4       ; 000610  @ 1005

    STY digit + 5       ; 000611  @ 1008
    INC digit + 5       ; 000612
    INC digit + 5       ; 000613
    INC digit + 5       ; 000614
    INC digit + 5       ; 000615
    INC digit + 5       ; 000616
    INC digit + 5       ; 000617
    INC digit + 5       ; 000618
    INC digit + 5       ; 000619
    STX digit + 5       ; 000610  @ 1023
    INC digit + 4       ; 000620

    STY digit + 5       ; 000621  @ 1029
    INC digit + 5       ; 000622
    INC digit + 5       ; 000623
    INC digit + 5       ; 000624
    INC digit + 5       ; 000625
    INC digit + 5       ; 000626
    INC digit + 5       ; 000627
    INC digit + 5       ; 000628
    INC digit + 5       ; 000629
    STX digit + 5       ; 000620  @ 1044
    INC digit + 4       ; 000630

    STY digit + 5       ; 000631  @ 104A
    INC digit + 5       ; 000632
    INC digit + 5       ; 000633
    INC digit + 5       ; 000634
    INC digit + 5       ; 000635
    INC digit + 5       ; 000636
    INC digit + 5       ; 000637
    INC digit + 5       ; 000638
    INC digit + 5       ; 000639
    STX digit + 5       ; 000630  @ 1065
    INC digit + 4       ; 000640

    STY digit + 5       ; 000641  @ 106B
    INC digit + 5       ; 000642
    INC digit + 5       ; 000643
    INC digit + 5       ; 000644
    INC digit + 5       ; 000645
    INC digit + 5       ; 000646
    INC digit + 5       ; 000647
    INC digit + 5       ; 000648
    INC digit + 5       ; 000649
    STX digit + 5       ; 000640  @ 1086
    INC digit + 4       ; 000650

    STY digit + 5       ; 000651  @ 108C
    INC digit + 5       ; 000652
    INC digit + 5       ; 000653
    INC digit + 5       ; 000654
    INC digit + 5       ; 000655
    INC digit + 5       ; 000656
    INC digit + 5       ; 000657
    INC digit + 5       ; 000658
    INC digit + 5       ; 000659
    STX digit + 5       ; 000650  @ 10A7
    INC digit + 4       ; 000660

    STY digit + 5       ; 000661  @ 10AD
    INC digit + 5       ; 000662
    INC digit + 5       ; 000663
    INC digit + 5       ; 000664
    INC digit + 5       ; 000665
    INC digit + 5       ; 000666
    INC digit + 5       ; 000667
    INC digit + 5       ; 000668
    INC digit + 5       ; 000669
    STX digit + 5       ; 000660  @ 10C8
    INC digit + 4       ; 000670

    STY digit + 5       ; 000671  @ 10CE
    INC digit + 5       ; 000672
    INC digit + 5       ; 000673
    INC digit + 5       ; 000674
    INC digit + 5       ; 000675
    INC digit + 5       ; 000676
    INC digit + 5       ; 000677
    INC digit + 5       ; 000678
    INC digit + 5       ; 000679
    STX digit + 5       ; 000670  @ 10E9
    INC digit + 4       ; 000680

    STY digit + 5       ; 000681  @ 10EF
    INC digit + 5       ; 000682
    INC digit + 5       ; 000683
    INC digit + 5       ; 000684
    INC digit + 5       ; 000685
    INC digit + 5       ; 000686
    INC digit + 5       ; 000687
    INC digit + 5       ; 000688
    INC digit + 5       ; 000689
    STX digit + 5       ; 000680  @ 110A
    INC digit + 4       ; 000690

    STY digit + 5       ; 000691  @ 1110
    INC digit + 5       ; 000692
    INC digit + 5       ; 000693
    INC digit + 5       ; 000694
    INC digit + 5       ; 000695
    INC digit + 5       ; 000696
    INC digit + 5       ; 000697
    INC digit + 5       ; 000698
    INC digit + 5       ; 000699
    STX digit + 5       ; 000690  @ 112B
    STX digit + 4       ; 000600  @ 112E
    INC digit + 3       ; 000700

    STY digit + 5       ; 000701  @ 1134
    INC digit + 5       ; 000702
    INC digit + 5       ; 000703
    INC digit + 5       ; 000704
    INC digit + 5       ; 000705
    INC digit + 5       ; 000706
    INC digit + 5       ; 000707
    INC digit + 5       ; 000708
    INC digit + 5       ; 000709
    STX digit + 5       ; 000700  @ 114F
    STY digit + 4       ; 000710  @ 1152

    STY digit + 5       ; 000711  @ 1155
    INC digit + 5       ; 000712
    INC digit + 5       ; 000713
    INC digit + 5       ; 000714
    INC digit + 5       ; 000715
    INC digit + 5       ; 000716
    INC digit + 5       ; 000717
    INC digit + 5       ; 000718
    INC digit + 5       ; 000719
    STX digit + 5       ; 000710  @ 1170
    INC digit + 4       ; 000720

    STY digit + 5       ; 000721  @ 1176
    INC digit + 5       ; 000722
    INC digit + 5       ; 000723
    INC digit + 5       ; 000724
    INC digit + 5       ; 000725
    INC digit + 5       ; 000726
    INC digit + 5       ; 000727
    INC digit + 5       ; 000728
    INC digit + 5       ; 000729
    STX digit + 5       ; 000720  @ 1191
    INC digit + 4       ; 000730

    STY digit + 5       ; 000731  @ 1197
    INC digit + 5       ; 000732
    INC digit + 5       ; 000733
    INC digit + 5       ; 000734
    INC digit + 5       ; 000735
    INC digit + 5       ; 000736
    INC digit + 5       ; 000737
    INC digit + 5       ; 000738
    INC digit + 5       ; 000739
    STX digit + 5       ; 000730  @ 11B2
    INC digit + 4       ; 000740

    STY digit + 5       ; 000741  @ 11B8
    INC digit + 5       ; 000742
    INC digit + 5       ; 000743
    INC digit + 5       ; 000744
    INC digit + 5       ; 000745
    INC digit + 5       ; 000746
    INC digit + 5       ; 000747
    INC digit + 5       ; 000748
    INC digit + 5       ; 000749
    STX digit + 5       ; 000740  @ 11D3
    INC digit + 4       ; 000750

    STY digit + 5       ; 000751  @ 11D9
    INC digit + 5       ; 000752
    INC digit + 5       ; 000753
    INC digit + 5       ; 000754
    INC digit + 5       ; 000755
    INC digit + 5       ; 000756
    INC digit + 5       ; 000757
    INC digit + 5       ; 000758
    INC digit + 5       ; 000759
    STX digit + 5       ; 000750  @ 11F4
    INC digit + 4       ; 000760

    STY digit + 5       ; 000761  @ 11FA
    INC digit + 5       ; 000762
    INC digit + 5       ; 000763
    INC digit + 5       ; 000764
    INC digit + 5       ; 000765
    INC digit + 5       ; 000766
    INC digit + 5       ; 000767
    INC digit + 5       ; 000768
    INC digit + 5       ; 000769
    STX digit + 5       ; 000760  @ 1215
    INC digit + 4       ; 000770

    STY digit + 5       ; 000771  @ 121B
    INC digit + 5       ; 000772
    INC digit + 5       ; 000773
    INC digit + 5       ; 000774
    INC digit + 5       ; 000775
    INC digit + 5       ; 000776
    INC digit + 5       ; 000777
    INC digit + 5       ; 000778
    INC digit + 5       ; 000779
    STX digit + 5       ; 000770  @ 1236
    INC digit + 4       ; 000780

    STY digit + 5       ; 000781  @ 123C
    INC digit + 5       ; 000782
    INC digit + 5       ; 000783
    INC digit + 5       ; 000784
    INC digit + 5       ; 000785
    INC digit + 5       ; 000786
    INC digit + 5       ; 000787
    INC digit + 5       ; 000788
    INC digit + 5       ; 000789
    STX digit + 5       ; 000780  @ 1257
    INC digit + 4       ; 000790

    STY digit + 5       ; 000791  @ 125D
    INC digit + 5       ; 000792
    INC digit + 5       ; 000793
    INC digit + 5       ; 000794
    INC digit + 5       ; 000795
    INC digit + 5       ; 000796
    INC digit + 5       ; 000797
    INC digit + 5       ; 000798
    INC digit + 5       ; 000799
    STX digit + 5       ; 000790  @ 1278
    STX digit + 4       ; 000700  @ 127B
    INC digit + 3       ; 000800

    STY digit + 5       ; 000801  @ 1281
    INC digit + 5       ; 000802
    INC digit + 5       ; 000803
    INC digit + 5       ; 000804
    INC digit + 5       ; 000805
    INC digit + 5       ; 000806
    INC digit + 5       ; 000807
    INC digit + 5       ; 000808
    INC digit + 5       ; 000809
    STX digit + 5       ; 000800  @ 129C
    STY digit + 4       ; 000810  @ 129F

    STY digit + 5       ; 000811  @ 12A2
    INC digit + 5       ; 000812
    INC digit + 5       ; 000813
    INC digit + 5       ; 000814
    INC digit + 5       ; 000815
    INC digit + 5       ; 000816
    INC digit + 5       ; 000817
    INC digit + 5       ; 000818
    INC digit + 5       ; 000819
    STX digit + 5       ; 000810  @ 12BD
    INC digit + 4       ; 000820

    STY digit + 5       ; 000821  @ 12C3
    INC digit + 5       ; 000822
    INC digit + 5       ; 000823
    INC digit + 5       ; 000824
    INC digit + 5       ; 000825
    INC digit + 5       ; 000826
    INC digit + 5       ; 000827
    INC digit + 5       ; 000828
    INC digit + 5       ; 000829
    STX digit + 5       ; 000820  @ 12DE
    INC digit + 4       ; 000830

    STY digit + 5       ; 000831  @ 12E4
    INC digit + 5       ; 000832
    INC digit + 5       ; 000833
    INC digit + 5       ; 000834
    INC digit + 5       ; 000835
    INC digit + 5       ; 000836
    INC digit + 5       ; 000837
    INC digit + 5       ; 000838
    INC digit + 5       ; 000839
    STX digit + 5       ; 000830  @ 12FF
    INC digit + 4       ; 000840

    STY digit + 5       ; 000841  @ 1305
    INC digit + 5       ; 000842
    INC digit + 5       ; 000843
    INC digit + 5       ; 000844
    INC digit + 5       ; 000845
    INC digit + 5       ; 000846
    INC digit + 5       ; 000847
    INC digit + 5       ; 000848
    INC digit + 5       ; 000849
    STX digit + 5       ; 000840  @ 1320
    INC digit + 4       ; 000850

    STY digit + 5       ; 000851  @ 1326
    INC digit + 5       ; 000852
    INC digit + 5       ; 000853
    INC digit + 5       ; 000854
    INC digit + 5       ; 000855
    INC digit + 5       ; 000856
    INC digit + 5       ; 000857
    INC digit + 5       ; 000858
    INC digit + 5       ; 000859
    STX digit + 5       ; 000850  @ 1341
    INC digit + 4       ; 000860

    STY digit + 5       ; 000861  @ 1347
    INC digit + 5       ; 000862
    INC digit + 5       ; 000863
    INC digit + 5       ; 000864
    INC digit + 5       ; 000865
    INC digit + 5       ; 000866
    INC digit + 5       ; 000867
    INC digit + 5       ; 000868
    INC digit + 5       ; 000869
    STX digit + 5       ; 000860  @ 1362
    INC digit + 4       ; 000870

    STY digit + 5       ; 000871  @ 1368
    INC digit + 5       ; 000872
    INC digit + 5       ; 000873
    INC digit + 5       ; 000874
    INC digit + 5       ; 000875
    INC digit + 5       ; 000876
    INC digit + 5       ; 000877
    INC digit + 5       ; 000878
    INC digit + 5       ; 000879
    STX digit + 5       ; 000870  @ 1383
    INC digit + 4       ; 000880

    STY digit + 5       ; 000881  @ 1389
    INC digit + 5       ; 000882
    INC digit + 5       ; 000883
    INC digit + 5       ; 000884
    INC digit + 5       ; 000885
    INC digit + 5       ; 000886
    INC digit + 5       ; 000887
    INC digit + 5       ; 000888
    INC digit + 5       ; 000889
    STX digit + 5       ; 000880  @ 13A4
    INC digit + 4       ; 000890

    STY digit + 5       ; 000891  @ 13AA
    INC digit + 5       ; 000892
    INC digit + 5       ; 000893
    INC digit + 5       ; 000894
    INC digit + 5       ; 000895
    INC digit + 5       ; 000896
    INC digit + 5       ; 000897
    INC digit + 5       ; 000898
    INC digit + 5       ; 000899
    STX digit + 5       ; 000890  @ 13C5
    STX digit + 4       ; 000800  @ 13C8
    INC digit + 3       ; 000900

    STY digit + 5       ; 000901  @ 13CE
    INC digit + 5       ; 000902
    INC digit + 5       ; 000903
    INC digit + 5       ; 000904
    INC digit + 5       ; 000905
    INC digit + 5       ; 000906
    INC digit + 5       ; 000907
    INC digit + 5       ; 000908
    INC digit + 5       ; 000909
    STX digit + 5       ; 000900  @ 13E9
    STY digit + 4       ; 000910  @ 13EC

    STY digit + 5       ; 000911  @ 13EF
    INC digit + 5       ; 000912
    INC digit + 5       ; 000913
    INC digit + 5       ; 000914
    INC digit + 5       ; 000915
    INC digit + 5       ; 000916
    INC digit + 5       ; 000917
    INC digit + 5       ; 000918
    INC digit + 5       ; 000919
    STX digit + 5       ; 000910  @ 140A
    INC digit + 4       ; 000920

    STY digit + 5       ; 000921  @ 1410
    INC digit + 5       ; 000922
    INC digit + 5       ; 000923
    INC digit + 5       ; 000924
    INC digit + 5       ; 000925
    INC digit + 5       ; 000926
    INC digit + 5       ; 000927
    INC digit + 5       ; 000928
    INC digit + 5       ; 000929
    STX digit + 5       ; 000920  @ 142B
    INC digit + 4       ; 000930

    STY digit + 5       ; 000931  @ 1431
    INC digit + 5       ; 000932
    INC digit + 5       ; 000933
    INC digit + 5       ; 000934
    INC digit + 5       ; 000935
    INC digit + 5       ; 000936
    INC digit + 5       ; 000937
    INC digit + 5       ; 000938
    INC digit + 5       ; 000939
    STX digit + 5       ; 000930  @ 144C
    INC digit + 4       ; 000940

    STY digit + 5       ; 000941  @ 1452
    INC digit + 5       ; 000942
    INC digit + 5       ; 000943
    INC digit + 5       ; 000944
    INC digit + 5       ; 000945
    INC digit + 5       ; 000946
    INC digit + 5       ; 000947
    INC digit + 5       ; 000948
    INC digit + 5       ; 000949
    STX digit + 5       ; 000940  @ 146D
    INC digit + 4       ; 000950

    STY digit + 5       ; 000951  @ 1473
    INC digit + 5       ; 000952
    INC digit + 5       ; 000953
    INC digit + 5       ; 000954
    INC digit + 5       ; 000955
    INC digit + 5       ; 000956
    INC digit + 5       ; 000957
    INC digit + 5       ; 000958
    INC digit + 5       ; 000959
    STX digit + 5       ; 000950  @ 148E
    INC digit + 4       ; 000960

    STY digit + 5       ; 000961  @ 1494
    INC digit + 5       ; 000962
    INC digit + 5       ; 000963
    INC digit + 5       ; 000964
    INC digit + 5       ; 000965
    INC digit + 5       ; 000966
    INC digit + 5       ; 000967
    INC digit + 5       ; 000968
    INC digit + 5       ; 000969
    STX digit + 5       ; 000960  @ 14AF
    INC digit + 4       ; 000970

    STY digit + 5       ; 000971  @ 14B5
    INC digit + 5       ; 000972
    INC digit + 5       ; 000973
    INC digit + 5       ; 000974
    INC digit + 5       ; 000975
    INC digit + 5       ; 000976
    INC digit + 5       ; 000977
    INC digit + 5       ; 000978
    INC digit + 5       ; 000979
    STX digit + 5       ; 000970  @ 14D0
    INC digit + 4       ; 000980

    STY digit + 5       ; 000981  @ 14D6
    INC digit + 5       ; 000982
    INC digit + 5       ; 000983
    INC digit + 5       ; 000984
    INC digit + 5       ; 000985
    INC digit + 5       ; 000986
    INC digit + 5       ; 000987
    INC digit + 5       ; 000988
    INC digit + 5       ; 000989
    STX digit + 5       ; 000980  @ 14F1
    INC digit + 4       ; 000990

    STY digit + 5       ; 000991  @ 14F7
    INC digit + 5       ; 000992
    INC digit + 5       ; 000993
    INC digit + 5       ; 000994
    INC digit + 5       ; 000995
    INC digit + 5       ; 000996
    INC digit + 5       ; 000997
    INC digit + 5       ; 000998
    INC digit + 5       ; 000999
    STX digit + 5       ; 000990  @ 1512
    STX digit + 4       ; 000900  @ 1515
    STX digit + 3       ; 000000  @ 1518
    STY digit + 2       ; 001000  @ 151B

    STY digit + 5       ; 001001  @ 151E
    INC digit + 5       ; 001002
    INC digit + 5       ; 001003
    INC digit + 5       ; 001004
    INC digit + 5       ; 001005
    INC digit + 5       ; 001006
    INC digit + 5       ; 001007
    INC digit + 5       ; 001008
    INC digit + 5       ; 001009
    STX digit + 5       ; 001000  @ 1539
    STY digit + 4       ; 001010  @ 153C

    STY digit + 5       ; 001011  @ 153F
    INC digit + 5       ; 001012
    INC digit + 5       ; 001013
    INC digit + 5       ; 001014
    INC digit + 5       ; 001015
    INC digit + 5       ; 001016
    INC digit + 5       ; 001017
    INC digit + 5       ; 001018
    INC digit + 5       ; 001019
    STX digit + 5       ; 001010  @ 155A
    INC digit + 4       ; 001020

    STY digit + 5       ; 001021  @ 1560
    INC digit + 5       ; 001022
    INC digit + 5       ; 001023
    INC digit + 5       ; 001024
    INC digit + 5       ; 001025
    INC digit + 5       ; 001026
    INC digit + 5       ; 001027
    INC digit + 5       ; 001028
    INC digit + 5       ; 001029
    STX digit + 5       ; 001020  @ 157B
    INC digit + 4       ; 001030

    STY digit + 5       ; 001031  @ 1581
    INC digit + 5       ; 001032
    INC digit + 5       ; 001033
    INC digit + 5       ; 001034
    INC digit + 5       ; 001035
    INC digit + 5       ; 001036
    INC digit + 5       ; 001037
    INC digit + 5       ; 001038
    INC digit + 5       ; 001039
    STX digit + 5       ; 001030  @ 159C
    INC digit + 4       ; 001040

    STY digit + 5       ; 001041  @ 15A2
    INC digit + 5       ; 001042
    INC digit + 5       ; 001043
    INC digit + 5       ; 001044
    INC digit + 5       ; 001045
    INC digit + 5       ; 001046
    INC digit + 5       ; 001047
    INC digit + 5       ; 001048
    INC digit + 5       ; 001049
    STX digit + 5       ; 001040  @ 15BD
    INC digit + 4       ; 001050

    STY digit + 5       ; 001051  @ 15C3
    INC digit + 5       ; 001052
    INC digit + 5       ; 001053
    INC digit + 5       ; 001054
    INC digit + 5       ; 001055
    INC digit + 5       ; 001056
    INC digit + 5       ; 001057
    INC digit + 5       ; 001058
    INC digit + 5       ; 001059
    STX digit + 5       ; 001050  @ 15DE
    INC digit + 4       ; 001060

    STY digit + 5       ; 001061  @ 15E4
    INC digit + 5       ; 001062
    INC digit + 5       ; 001063
    INC digit + 5       ; 001064
    INC digit + 5       ; 001065
    INC digit + 5       ; 001066
    INC digit + 5       ; 001067
    INC digit + 5       ; 001068
    INC digit + 5       ; 001069
    STX digit + 5       ; 001060  @ 15FF
    INC digit + 4       ; 001070

    STY digit + 5       ; 001071  @ 1605
    INC digit + 5       ; 001072
    INC digit + 5       ; 001073
    INC digit + 5       ; 001074
    INC digit + 5       ; 001075
    INC digit + 5       ; 001076
    INC digit + 5       ; 001077
    INC digit + 5       ; 001078
    INC digit + 5       ; 001079
    STX digit + 5       ; 001070  @ 1620
    INC digit + 4       ; 001080

    STY digit + 5       ; 001081  @ 1626
    INC digit + 5       ; 001082
    INC digit + 5       ; 001083
    INC digit + 5       ; 001084
    INC digit + 5       ; 001085
    INC digit + 5       ; 001086
    INC digit + 5       ; 001087
    INC digit + 5       ; 001088
    INC digit + 5       ; 001089
    STX digit + 5       ; 001080  @ 1641
    INC digit + 4       ; 001090

    STY digit + 5       ; 001091  @ 1647
    INC digit + 5       ; 001092
    INC digit + 5       ; 001093
    INC digit + 5       ; 001094
    INC digit + 5       ; 001095
    INC digit + 5       ; 001096
    INC digit + 5       ; 001097
    INC digit + 5       ; 001098
    INC digit + 5       ; 001099
    STX digit + 5       ; 001090  @ 1662
    STX digit + 4       ; 001000  @ 1665
    STY digit + 3       ; 001100  @ 1668

    STY digit + 5       ; 001101  @ 166B
    INC digit + 5       ; 001102
    INC digit + 5       ; 001103
    INC digit + 5       ; 001104
    INC digit + 5       ; 001105
    INC digit + 5       ; 001106
    INC digit + 5       ; 001107
    INC digit + 5       ; 001108
    INC digit + 5       ; 001109
    STX digit + 5       ; 001100  @ 1686
    STY digit + 4       ; 001110  @ 1689

    STY digit + 5       ; 001111  @ 168C
    INC digit + 5       ; 001112
    INC digit + 5       ; 001113
    INC digit + 5       ; 001114
    INC digit + 5       ; 001115
    INC digit + 5       ; 001116
    INC digit + 5       ; 001117
    INC digit + 5       ; 001118
    INC digit + 5       ; 001119
    STX digit + 5       ; 001110  @ 16A7
    INC digit + 4       ; 001120

    STY digit + 5       ; 001121  @ 16AD
    INC digit + 5       ; 001122
    INC digit + 5       ; 001123
    INC digit + 5       ; 001124
    INC digit + 5       ; 001125
    INC digit + 5       ; 001126
    INC digit + 5       ; 001127
    INC digit + 5       ; 001128
    INC digit + 5       ; 001129
    STX digit + 5       ; 001120  @ 16C8
    INC digit + 4       ; 001130

    STY digit + 5       ; 001131  @ 16CE
    INC digit + 5       ; 001132
    INC digit + 5       ; 001133
    INC digit + 5       ; 001134
    INC digit + 5       ; 001135
    INC digit + 5       ; 001136
    INC digit + 5       ; 001137
    INC digit + 5       ; 001138
    INC digit + 5       ; 001139
    STX digit + 5       ; 001130  @ 16E9
    INC digit + 4       ; 001140

    STY digit + 5       ; 001141  @ 16EF
    INC digit + 5       ; 001142
    INC digit + 5       ; 001143
    INC digit + 5       ; 001144
    INC digit + 5       ; 001145
    INC digit + 5       ; 001146
    INC digit + 5       ; 001147
    INC digit + 5       ; 001148
    INC digit + 5       ; 001149
    STX digit + 5       ; 001140  @ 170A
    INC digit + 4       ; 001150

    STY digit + 5       ; 001151  @ 1710
    INC digit + 5       ; 001152
    INC digit + 5       ; 001153
    INC digit + 5       ; 001154
    INC digit + 5       ; 001155
    INC digit + 5       ; 001156
    INC digit + 5       ; 001157
    INC digit + 5       ; 001158
    INC digit + 5       ; 001159
    STX digit + 5       ; 001150  @ 172B
    INC digit + 4       ; 001160

    STY digit + 5       ; 001161  @ 1731
    INC digit + 5       ; 001162
    INC digit + 5       ; 001163
    INC digit + 5       ; 001164
    INC digit + 5       ; 001165
    INC digit + 5       ; 001166
    INC digit + 5       ; 001167
    INC digit + 5       ; 001168
    INC digit + 5       ; 001169
    STX digit + 5       ; 001160  @ 174C
    INC digit + 4       ; 001170

    STY digit + 5       ; 001171  @ 1752
    INC digit + 5       ; 001172
    INC digit + 5       ; 001173
    INC digit + 5       ; 001174
    INC digit + 5       ; 001175
    INC digit + 5       ; 001176
    INC digit + 5       ; 001177
    INC digit + 5       ; 001178
    INC digit + 5       ; 001179
    STX digit + 5       ; 001170  @ 176D
    INC digit + 4       ; 001180

    STY digit + 5       ; 001181  @ 1773
    INC digit + 5       ; 001182
    INC digit + 5       ; 001183
    INC digit + 5       ; 001184
    INC digit + 5       ; 001185
    INC digit + 5       ; 001186
    INC digit + 5       ; 001187
    INC digit + 5       ; 001188
    INC digit + 5       ; 001189
    STX digit + 5       ; 001180  @ 178E
    INC digit + 4       ; 001190

    STY digit + 5       ; 001191  @ 1794
    INC digit + 5       ; 001192
    INC digit + 5       ; 001193
    INC digit + 5       ; 001194
    INC digit + 5       ; 001195
    INC digit + 5       ; 001196
    INC digit + 5       ; 001197
    INC digit + 5       ; 001198
    INC digit + 5       ; 001199
    STX digit + 5       ; 001190  @ 17AF
    STX digit + 4       ; 001100  @ 17B2
    INC digit + 3       ; 001200

    STY digit + 5       ; 001201  @ 17B8
    INC digit + 5       ; 001202
    INC digit + 5       ; 001203
    INC digit + 5       ; 001204
    INC digit + 5       ; 001205
    INC digit + 5       ; 001206
    INC digit + 5       ; 001207
    INC digit + 5       ; 001208
    INC digit + 5       ; 001209
    STX digit + 5       ; 001200  @ 17D3
    STY digit + 4       ; 001210  @ 17D6

    STY digit + 5       ; 001211  @ 17D9
    INC digit + 5       ; 001212
    INC digit + 5       ; 001213
    INC digit + 5       ; 001214
    INC digit + 5       ; 001215
    INC digit + 5       ; 001216
    INC digit + 5       ; 001217
    INC digit + 5       ; 001218
    INC digit + 5       ; 001219
    STX digit + 5       ; 001210  @ 17F4
    INC digit + 4       ; 001220

    STY digit + 5       ; 001221  @ 17FA
    INC digit + 5       ; 001222
    INC digit + 5       ; 001223
    INC digit + 5       ; 001224
    INC digit + 5       ; 001225
    INC digit + 5       ; 001226
    INC digit + 5       ; 001227
    INC digit + 5       ; 001228
    INC digit + 5       ; 001229
    STX digit + 5       ; 001220  @ 1815
    INC digit + 4       ; 001230

    STY digit + 5       ; 001231  @ 181B
    INC digit + 5       ; 001232
    INC digit + 5       ; 001233
    INC digit + 5       ; 001234
    INC digit + 5       ; 001235
    INC digit + 5       ; 001236
    INC digit + 5       ; 001237
    INC digit + 5       ; 001238
    INC digit + 5       ; 001239
    STX digit + 5       ; 001230  @ 1836
    INC digit + 4       ; 001240

    STY digit + 5       ; 001241  @ 183C
    INC digit + 5       ; 001242
    INC digit + 5       ; 001243
    INC digit + 5       ; 001244
    INC digit + 5       ; 001245
    INC digit + 5       ; 001246
    INC digit + 5       ; 001247
    INC digit + 5       ; 001248
    INC digit + 5       ; 001249
    STX digit + 5       ; 001240  @ 1857
    INC digit + 4       ; 001250

    STY digit + 5       ; 001251  @ 185D
    INC digit + 5       ; 001252
    INC digit + 5       ; 001253
    INC digit + 5       ; 001254
    INC digit + 5       ; 001255
    INC digit + 5       ; 001256
    INC digit + 5       ; 001257
    INC digit + 5       ; 001258
    INC digit + 5       ; 001259
    STX digit + 5       ; 001250  @ 1878
    INC digit + 4       ; 001260

    STY digit + 5       ; 001261  @ 187E
    INC digit + 5       ; 001262
    INC digit + 5       ; 001263
    INC digit + 5       ; 001264
    INC digit + 5       ; 001265
    INC digit + 5       ; 001266
    INC digit + 5       ; 001267
    INC digit + 5       ; 001268
    INC digit + 5       ; 001269
    STX digit + 5       ; 001260  @ 1899
    INC digit + 4       ; 001270

    STY digit + 5       ; 001271  @ 189F
    INC digit + 5       ; 001272
    INC digit + 5       ; 001273
    INC digit + 5       ; 001274
    INC digit + 5       ; 001275
    INC digit + 5       ; 001276
    INC digit + 5       ; 001277
    INC digit + 5       ; 001278
    INC digit + 5       ; 001279
    STX digit + 5       ; 001270  @ 18BA
    INC digit + 4       ; 001280

    STY digit + 5       ; 001281  @ 18C0
    INC digit + 5       ; 001282
    INC digit + 5       ; 001283
    INC digit + 5       ; 001284
    INC digit + 5       ; 001285
    INC digit + 5       ; 001286
    INC digit + 5       ; 001287
    INC digit + 5       ; 001288
    INC digit + 5       ; 001289
    STX digit + 5       ; 001280  @ 18DB
    INC digit + 4       ; 001290

    STY digit + 5       ; 001291  @ 18E1
    INC digit + 5       ; 001292
    INC digit + 5       ; 001293
    INC digit + 5       ; 001294
    INC digit + 5       ; 001295
    INC digit + 5       ; 001296
    INC digit + 5       ; 001297
    INC digit + 5       ; 001298
    INC digit + 5       ; 001299
    STX digit + 5       ; 001290  @ 18FC
    STX digit + 4       ; 001200  @ 18FF
    INC digit + 3       ; 001300

    STY digit + 5       ; 001301  @ 1905
    INC digit + 5       ; 001302
    INC digit + 5       ; 001303
    INC digit + 5       ; 001304
    INC digit + 5       ; 001305
    INC digit + 5       ; 001306
    INC digit + 5       ; 001307
    INC digit + 5       ; 001308
    INC digit + 5       ; 001309
    STX digit + 5       ; 001300  @ 1920
    STY digit + 4       ; 001310  @ 1923

    STY digit + 5       ; 001311  @ 1926
    INC digit + 5       ; 001312
    INC digit + 5       ; 001313
    INC digit + 5       ; 001314
    INC digit + 5       ; 001315
    INC digit + 5       ; 001316
    INC digit + 5       ; 001317
    INC digit + 5       ; 001318
    INC digit + 5       ; 001319
    STX digit + 5       ; 001310  @ 1941
    INC digit + 4       ; 001320

    STY digit + 5       ; 001321  @ 1947
    INC digit + 5       ; 001322
    INC digit + 5       ; 001323
    INC digit + 5       ; 001324
    INC digit + 5       ; 001325
    INC digit + 5       ; 001326
    INC digit + 5       ; 001327
    INC digit + 5       ; 001328
    INC digit + 5       ; 001329
    STX digit + 5       ; 001320  @ 1962
    INC digit + 4       ; 001330

    STY digit + 5       ; 001331  @ 1968
    INC digit + 5       ; 001332
    INC digit + 5       ; 001333
    INC digit + 5       ; 001334
    INC digit + 5       ; 001335
    INC digit + 5       ; 001336
    INC digit + 5       ; 001337
    INC digit + 5       ; 001338
    INC digit + 5       ; 001339
    STX digit + 5       ; 001330  @ 1983
    INC digit + 4       ; 001340

    STY digit + 5       ; 001341  @ 1989
    INC digit + 5       ; 001342
    INC digit + 5       ; 001343
    INC digit + 5       ; 001344
    INC digit + 5       ; 001345
    INC digit + 5       ; 001346
    INC digit + 5       ; 001347
    INC digit + 5       ; 001348
    INC digit + 5       ; 001349
    STX digit + 5       ; 001340  @ 19A4
    INC digit + 4       ; 001350

    STY digit + 5       ; 001351  @ 19AA
    INC digit + 5       ; 001352
    INC digit + 5       ; 001353
    INC digit + 5       ; 001354
    INC digit + 5       ; 001355
    INC digit + 5       ; 001356
    INC digit + 5       ; 001357
    INC digit + 5       ; 001358
    INC digit + 5       ; 001359
    STX digit + 5       ; 001350  @ 19C5
    INC digit + 4       ; 001360

    STY digit + 5       ; 001361  @ 19CB
    INC digit + 5       ; 001362
    INC digit + 5       ; 001363
    INC digit + 5       ; 001364
    INC digit + 5       ; 001365
    INC digit + 5       ; 001366
    INC digit + 5       ; 001367
    INC digit + 5       ; 001368
    INC digit + 5       ; 001369
    STX digit + 5       ; 001360  @ 19E6
    INC digit + 4       ; 001370

    STY digit + 5       ; 001371  @ 19EC
    INC digit + 5       ; 001372
    INC digit + 5       ; 001373
    INC digit + 5       ; 001374
    INC digit + 5       ; 001375
    INC digit + 5       ; 001376
    INC digit + 5       ; 001377
    INC digit + 5       ; 001378
    INC digit + 5       ; 001379
    STX digit + 5       ; 001370  @ 1A07
    INC digit + 4       ; 001380

    STY digit + 5       ; 001381  @ 1A0D
    INC digit + 5       ; 001382
    INC digit + 5       ; 001383
    INC digit + 5       ; 001384
    INC digit + 5       ; 001385
    INC digit + 5       ; 001386
    INC digit + 5       ; 001387
    INC digit + 5       ; 001388
    INC digit + 5       ; 001389
    STX digit + 5       ; 001380  @ 1A28
    INC digit + 4       ; 001390

    STY digit + 5       ; 001391  @ 1A2E
    INC digit + 5       ; 001392
    INC digit + 5       ; 001393
    INC digit + 5       ; 001394
    INC digit + 5       ; 001395
    INC digit + 5       ; 001396
    INC digit + 5       ; 001397
    INC digit + 5       ; 001398
    INC digit + 5       ; 001399
    STX digit + 5       ; 001390  @ 1A49
    STX digit + 4       ; 001300  @ 1A4C
    INC digit + 3       ; 001400

    STY digit + 5       ; 001401  @ 1A52
    INC digit + 5       ; 001402
    INC digit + 5       ; 001403
    INC digit + 5       ; 001404
    INC digit + 5       ; 001405
    INC digit + 5       ; 001406
    INC digit + 5       ; 001407
    INC digit + 5       ; 001408
    INC digit + 5       ; 001409
    STX digit + 5       ; 001400  @ 1A6D
    STY digit + 4       ; 001410  @ 1A70

    STY digit + 5       ; 001411  @ 1A73
    INC digit + 5       ; 001412
    INC digit + 5       ; 001413
    INC digit + 5       ; 001414
    INC digit + 5       ; 001415
    INC digit + 5       ; 001416
    INC digit + 5       ; 001417
    INC digit + 5       ; 001418
    INC digit + 5       ; 001419
    STX digit + 5       ; 001410  @ 1A8E
    INC digit + 4       ; 001420

    STY digit + 5       ; 001421  @ 1A94
    INC digit + 5       ; 001422
    INC digit + 5       ; 001423
    INC digit + 5       ; 001424
    INC digit + 5       ; 001425
    INC digit + 5       ; 001426
    INC digit + 5       ; 001427
    INC digit + 5       ; 001428
    INC digit + 5       ; 001429
    STX digit + 5       ; 001420  @ 1AAF
    INC digit + 4       ; 001430

    STY digit + 5       ; 001431  @ 1AB5
    INC digit + 5       ; 001432
    INC digit + 5       ; 001433
    INC digit + 5       ; 001434
    INC digit + 5       ; 001435
    INC digit + 5       ; 001436
    INC digit + 5       ; 001437
    INC digit + 5       ; 001438
    INC digit + 5       ; 001439
    STX digit + 5       ; 001430  @ 1AD0
    INC digit + 4       ; 001440

    STY digit + 5       ; 001441  @ 1AD6
    INC digit + 5       ; 001442
    INC digit + 5       ; 001443
    INC digit + 5       ; 001444
    INC digit + 5       ; 001445
    INC digit + 5       ; 001446
    INC digit + 5       ; 001447
    INC digit + 5       ; 001448
    INC digit + 5       ; 001449
    STX digit + 5       ; 001440  @ 1AF1
    INC digit + 4       ; 001450

    STY digit + 5       ; 001451  @ 1AF7
    INC digit + 5       ; 001452
    INC digit + 5       ; 001453
    INC digit + 5       ; 001454
    INC digit + 5       ; 001455
    INC digit + 5       ; 001456
    INC digit + 5       ; 001457
    INC digit + 5       ; 001458
    INC digit + 5       ; 001459
    STX digit + 5       ; 001450  @ 1B12
    INC digit + 4       ; 001460

    STY digit + 5       ; 001461  @ 1B18
    INC digit + 5       ; 001462
    INC digit + 5       ; 001463
    INC digit + 5       ; 001464
    INC digit + 5       ; 001465
    INC digit + 5       ; 001466
    INC digit + 5       ; 001467
    INC digit + 5       ; 001468
    INC digit + 5       ; 001469
    STX digit + 5       ; 001460  @ 1B33
    INC digit + 4       ; 001470

    STY digit + 5       ; 001471  @ 1B39
    INC digit + 5       ; 001472
    INC digit + 5       ; 001473
    INC digit + 5       ; 001474
    INC digit + 5       ; 001475
    INC digit + 5       ; 001476
    INC digit + 5       ; 001477
    INC digit + 5       ; 001478
    INC digit + 5       ; 001479
    STX digit + 5       ; 001470  @ 1B54
    INC digit + 4       ; 001480

    STY digit + 5       ; 001481  @ 1B5A
    INC digit + 5       ; 001482
    INC digit + 5       ; 001483
    INC digit + 5       ; 001484
    INC digit + 5       ; 001485
    INC digit + 5       ; 001486
    INC digit + 5       ; 001487
    INC digit + 5       ; 001488
    INC digit + 5       ; 001489
    STX digit + 5       ; 001480  @ 1B75
    INC digit + 4       ; 001490

    STY digit + 5       ; 001491  @ 1B7B
    INC digit + 5       ; 001492
    INC digit + 5       ; 001493
    INC digit + 5       ; 001494
    INC digit + 5       ; 001495
    INC digit + 5       ; 001496
    INC digit + 5       ; 001497
    INC digit + 5       ; 001498
    INC digit + 5       ; 001499
    STX digit + 5       ; 001490  @ 1B96
    STX digit + 4       ; 001400  @ 1B99
    INC digit + 3       ; 001500

    STY digit + 5       ; 001501  @ 1B9F
    INC digit + 5       ; 001502
    INC digit + 5       ; 001503
    INC digit + 5       ; 001504
    INC digit + 5       ; 001505
    INC digit + 5       ; 001506
    INC digit + 5       ; 001507
    INC digit + 5       ; 001508
    INC digit + 5       ; 001509
    STX digit + 5       ; 001500  @ 1BBA
    STY digit + 4       ; 001510  @ 1BBD

    STY digit + 5       ; 001511  @ 1BC0
    INC digit + 5       ; 001512
    INC digit + 5       ; 001513
    INC digit + 5       ; 001514
    INC digit + 5       ; 001515
    INC digit + 5       ; 001516
    INC digit + 5       ; 001517
    INC digit + 5       ; 001518
    INC digit + 5       ; 001519
    STX digit + 5       ; 001510  @ 1BDB
    INC digit + 4       ; 001520

    STY digit + 5       ; 001521  @ 1BE1
    INC digit + 5       ; 001522
    INC digit + 5       ; 001523
    INC digit + 5       ; 001524
    INC digit + 5       ; 001525
    INC digit + 5       ; 001526
    INC digit + 5       ; 001527
    INC digit + 5       ; 001528
    INC digit + 5       ; 001529
    STX digit + 5       ; 001520  @ 1BFC
    INC digit + 4       ; 001530

    STY digit + 5       ; 001531  @ 1C02
    INC digit + 5       ; 001532
    INC digit + 5       ; 001533
    INC digit + 5       ; 001534
    INC digit + 5       ; 001535
    INC digit + 5       ; 001536
    INC digit + 5       ; 001537
    INC digit + 5       ; 001538
    INC digit + 5       ; 001539
    STX digit + 5       ; 001530  @ 1C1D
    INC digit + 4       ; 001540

    STY digit + 5       ; 001541  @ 1C23
    INC digit + 5       ; 001542
    INC digit + 5       ; 001543
    INC digit + 5       ; 001544
    INC digit + 5       ; 001545
    INC digit + 5       ; 001546
    INC digit + 5       ; 001547
    INC digit + 5       ; 001548
    INC digit + 5       ; 001549
    STX digit + 5       ; 001540  @ 1C3E
    INC digit + 4       ; 001550

    STY digit + 5       ; 001551  @ 1C44
    INC digit + 5       ; 001552
    INC digit + 5       ; 001553
    INC digit + 5       ; 001554
    INC digit + 5       ; 001555
    INC digit + 5       ; 001556
    INC digit + 5       ; 001557
    INC digit + 5       ; 001558
    INC digit + 5       ; 001559
    STX digit + 5       ; 001550  @ 1C5F
    INC digit + 4       ; 001560

    STY digit + 5       ; 001561  @ 1C65
    INC digit + 5       ; 001562
    INC digit + 5       ; 001563
    INC digit + 5       ; 001564
    INC digit + 5       ; 001565
    INC digit + 5       ; 001566
    INC digit + 5       ; 001567
    INC digit + 5       ; 001568
    INC digit + 5       ; 001569
    STX digit + 5       ; 001560  @ 1C80
    INC digit + 4       ; 001570

    STY digit + 5       ; 001571  @ 1C86
    INC digit + 5       ; 001572
    INC digit + 5       ; 001573
    INC digit + 5       ; 001574
    INC digit + 5       ; 001575
    INC digit + 5       ; 001576
    INC digit + 5       ; 001577
    INC digit + 5       ; 001578
    INC digit + 5       ; 001579
    STX digit + 5       ; 001570  @ 1CA1
    INC digit + 4       ; 001580

    STY digit + 5       ; 001581  @ 1CA7
    INC digit + 5       ; 001582
    INC digit + 5       ; 001583
    INC digit + 5       ; 001584
    INC digit + 5       ; 001585
    INC digit + 5       ; 001586
    INC digit + 5       ; 001587
    INC digit + 5       ; 001588
    INC digit + 5       ; 001589
    STX digit + 5       ; 001580  @ 1CC2
    INC digit + 4       ; 001590

    STY digit + 5       ; 001591  @ 1CC8
    INC digit + 5       ; 001592
    INC digit + 5       ; 001593
    INC digit + 5       ; 001594
    INC digit + 5       ; 001595
    INC digit + 5       ; 001596
    INC digit + 5       ; 001597
    INC digit + 5       ; 001598
    INC digit + 5       ; 001599
    STX digit + 5       ; 001590  @ 1CE3
    STX digit + 4       ; 001500  @ 1CE6
    INC digit + 3       ; 001600

    STY digit + 5       ; 001601  @ 1CEC
    INC digit + 5       ; 001602
    INC digit + 5       ; 001603
    INC digit + 5       ; 001604
    INC digit + 5       ; 001605
    INC digit + 5       ; 001606
    INC digit + 5       ; 001607
    INC digit + 5       ; 001608
    INC digit + 5       ; 001609
    STX digit + 5       ; 001600  @ 1D07
    STY digit + 4       ; 001610  @ 1D0A

    STY digit + 5       ; 001611  @ 1D0D
    INC digit + 5       ; 001612
    INC digit + 5       ; 001613
    INC digit + 5       ; 001614
    INC digit + 5       ; 001615
    INC digit + 5       ; 001616
    INC digit + 5       ; 001617
    INC digit + 5       ; 001618
    INC digit + 5       ; 001619
    STX digit + 5       ; 001610  @ 1D28
    INC digit + 4       ; 001620

    STY digit + 5       ; 001621  @ 1D2E
    INC digit + 5       ; 001622
    INC digit + 5       ; 001623
    INC digit + 5       ; 001624
    INC digit + 5       ; 001625
    INC digit + 5       ; 001626
    INC digit + 5       ; 001627
    INC digit + 5       ; 001628
    INC digit + 5       ; 001629
    STX digit + 5       ; 001620  @ 1D49
    INC digit + 4       ; 001630

    STY digit + 5       ; 001631  @ 1D4F
    INC digit + 5       ; 001632
    INC digit + 5       ; 001633
    INC digit + 5       ; 001634
    INC digit + 5       ; 001635
    INC digit + 5       ; 001636
    INC digit + 5       ; 001637
    INC digit + 5       ; 001638
    INC digit + 5       ; 001639
    STX digit + 5       ; 001630  @ 1D6A
    INC digit + 4       ; 001640

    STY digit + 5       ; 001641  @ 1D70
    INC digit + 5       ; 001642
    INC digit + 5       ; 001643
    INC digit + 5       ; 001644
    INC digit + 5       ; 001645
    INC digit + 5       ; 001646
    INC digit + 5       ; 001647
    INC digit + 5       ; 001648
    INC digit + 5       ; 001649
    STX digit + 5       ; 001640  @ 1D8B
    INC digit + 4       ; 001650

    STY digit + 5       ; 001651  @ 1D91
    INC digit + 5       ; 001652
    INC digit + 5       ; 001653
    INC digit + 5       ; 001654
    INC digit + 5       ; 001655
    INC digit + 5       ; 001656
    INC digit + 5       ; 001657
    INC digit + 5       ; 001658
    INC digit + 5       ; 001659
    STX digit + 5       ; 001650  @ 1DAC
    INC digit + 4       ; 001660

    STY digit + 5       ; 001661  @ 1DB2
    INC digit + 5       ; 001662
    INC digit + 5       ; 001663
    INC digit + 5       ; 001664
    INC digit + 5       ; 001665
    INC digit + 5       ; 001666
    INC digit + 5       ; 001667
    INC digit + 5       ; 001668
    INC digit + 5       ; 001669
    STX digit + 5       ; 001660  @ 1DCD
    INC digit + 4       ; 001670

    STY digit + 5       ; 001671  @ 1DD3
    INC digit + 5       ; 001672
    INC digit + 5       ; 001673
    INC digit + 5       ; 001674
    INC digit + 5       ; 001675
    INC digit + 5       ; 001676
    INC digit + 5       ; 001677
    INC digit + 5       ; 001678
    INC digit + 5       ; 001679
    STX digit + 5       ; 001670  @ 1DEE
    INC digit + 4       ; 001680

    STY digit + 5       ; 001681  @ 1DF4
    INC digit + 5       ; 001682
    INC digit + 5       ; 001683
    INC digit + 5       ; 001684
    INC digit + 5       ; 001685
    INC digit + 5       ; 001686
    INC digit + 5       ; 001687
    INC digit + 5       ; 001688
    INC digit + 5       ; 001689
    STX digit + 5       ; 001680  @ 1E0F
    INC digit + 4       ; 001690

    STY digit + 5       ; 001691  @ 1E15
    INC digit + 5       ; 001692
    INC digit + 5       ; 001693
    INC digit + 5       ; 001694
    INC digit + 5       ; 001695
    INC digit + 5       ; 001696
    INC digit + 5       ; 001697
    INC digit + 5       ; 001698
    INC digit + 5       ; 001699
    STX digit + 5       ; 001690  @ 1E30
    STX digit + 4       ; 001600  @ 1E33
    INC digit + 3       ; 001700

    STY digit + 5       ; 001701  @ 1E39
    INC digit + 5       ; 001702
    INC digit + 5       ; 001703
    INC digit + 5       ; 001704
    INC digit + 5       ; 001705
    INC digit + 5       ; 001706
    INC digit + 5       ; 001707
    INC digit + 5       ; 001708
    INC digit + 5       ; 001709
    STX digit + 5       ; 001700  @ 1E54
    STY digit + 4       ; 001710  @ 1E57

    STY digit + 5       ; 001711  @ 1E5A
    INC digit + 5       ; 001712
    INC digit + 5       ; 001713
    INC digit + 5       ; 001714
    INC digit + 5       ; 001715
    INC digit + 5       ; 001716
    INC digit + 5       ; 001717
    INC digit + 5       ; 001718
    INC digit + 5       ; 001719
    STX digit + 5       ; 001710  @ 1E75
    INC digit + 4       ; 001720

    STY digit + 5       ; 001721  @ 1E7B
    INC digit + 5       ; 001722
    INC digit + 5       ; 001723
    INC digit + 5       ; 001724
    INC digit + 5       ; 001725
    INC digit + 5       ; 001726
    INC digit + 5       ; 001727
    INC digit + 5       ; 001728
    INC digit + 5       ; 001729
    STX digit + 5       ; 001720  @ 1E96
    INC digit + 4       ; 001730

    STY digit + 5       ; 001731  @ 1E9C
    INC digit + 5       ; 001732
    INC digit + 5       ; 001733
    INC digit + 5       ; 001734
    INC digit + 5       ; 001735
    INC digit + 5       ; 001736
    INC digit + 5       ; 001737
    INC digit + 5       ; 001738
    INC digit + 5       ; 001739
    STX digit + 5       ; 001730  @ 1EB7
    INC digit + 4       ; 001740

    STY digit + 5       ; 001741  @ 1EBD
    INC digit + 5       ; 001742
    INC digit + 5       ; 001743
    INC digit + 5       ; 001744
    INC digit + 5       ; 001745
    INC digit + 5       ; 001746
    INC digit + 5       ; 001747
    INC digit + 5       ; 001748
    INC digit + 5       ; 001749
    STX digit + 5       ; 001740  @ 1ED8
    INC digit + 4       ; 001750

    STY digit + 5       ; 001751  @ 1EDE
    INC digit + 5       ; 001752
    INC digit + 5       ; 001753
    INC digit + 5       ; 001754
    INC digit + 5       ; 001755
    INC digit + 5       ; 001756
    INC digit + 5       ; 001757
    INC digit + 5       ; 001758
    INC digit + 5       ; 001759
    STX digit + 5       ; 001750  @ 1EF9
    INC digit + 4       ; 001760

    STY digit + 5       ; 001761  @ 1EFF
    INC digit + 5       ; 001762
    INC digit + 5       ; 001763
    INC digit + 5       ; 001764
    INC digit + 5       ; 001765
    INC digit + 5       ; 001766
    INC digit + 5       ; 001767
    INC digit + 5       ; 001768
    INC digit + 5       ; 001769
    STX digit + 5       ; 001760  @ 1F1A
    INC digit + 4       ; 001770

    STY digit + 5       ; 001771  @ 1F20
    INC digit + 5       ; 001772
    INC digit + 5       ; 001773
    INC digit + 5       ; 001774
    INC digit + 5       ; 001775
    INC digit + 5       ; 001776
    INC digit + 5       ; 001777
    INC digit + 5       ; 001778
    INC digit + 5       ; 001779
    STX digit + 5       ; 001770  @ 1F3B
    INC digit + 4       ; 001780

    STY digit + 5       ; 001781  @ 1F41
    INC digit + 5       ; 001782
    INC digit + 5       ; 001783
    INC digit + 5       ; 001784
    INC digit + 5       ; 001785
    INC digit + 5       ; 001786
    INC digit + 5       ; 001787
    INC digit + 5       ; 001788
    INC digit + 5       ; 001789
    STX digit + 5       ; 001780  @ 1F5C
    INC digit + 4       ; 001790

    STY digit + 5       ; 001791  @ 1F62
    INC digit + 5       ; 001792
    INC digit + 5       ; 001793
    INC digit + 5       ; 001794
    INC digit + 5       ; 001795
    INC digit + 5       ; 001796
    INC digit + 5       ; 001797
    INC digit + 5       ; 001798
    INC digit + 5       ; 001799
    STX digit + 5       ; 001790  @ 1F7D
    STX digit + 4       ; 001700  @ 1F80
    INC digit + 3       ; 001800

    STY digit + 5       ; 001801  @ 1F86
    INC digit + 5       ; 001802
    INC digit + 5       ; 001803
    INC digit + 5       ; 001804
    INC digit + 5       ; 001805
    INC digit + 5       ; 001806
    INC digit + 5       ; 001807
    INC digit + 5       ; 001808
    INC digit + 5       ; 001809
    STX digit + 5       ; 001800  @ 1FA1
    STY digit + 4       ; 001810  @ 1FA4

    STY digit + 5       ; 001811  @ 1FA7
    INC digit + 5       ; 001812
    INC digit + 5       ; 001813
    INC digit + 5       ; 001814
    INC digit + 5       ; 001815
    INC digit + 5       ; 001816
    INC digit + 5       ; 001817
    INC digit + 5       ; 001818
    INC digit + 5       ; 001819
    STX digit + 5       ; 001810  @ 1FC2
    INC digit + 4       ; 001820

    STY digit + 5       ; 001821  @ 1FC8
    INC digit + 5       ; 001822
    INC digit + 5       ; 001823
    INC digit + 5       ; 001824
    INC digit + 5       ; 001825
    INC digit + 5       ; 001826
    INC digit + 5       ; 001827
    INC digit + 5       ; 001828
    INC digit + 5       ; 001829
    STX digit + 5       ; 001820  @ 1FE3
    INC digit + 4       ; 001830

    STY digit + 5       ; 001831  @ 1FE9
    INC digit + 5       ; 001832
    INC digit + 5       ; 001833
    INC digit + 5       ; 001834
    INC digit + 5       ; 001835
    INC digit + 5       ; 001836
    INC digit + 5       ; 001837
    INC digit + 5       ; 001838
    INC digit + 5       ; 001839
    STX digit + 5       ; 001830  @ 2004
    INC digit + 4       ; 001840

    STY digit + 5       ; 001841  @ 200A
    INC digit + 5       ; 001842
    INC digit + 5       ; 001843
    INC digit + 5       ; 001844
    INC digit + 5       ; 001845
    INC digit + 5       ; 001846
    INC digit + 5       ; 001847
    INC digit + 5       ; 001848
    INC digit + 5       ; 001849
    STX digit + 5       ; 001840  @ 2025
    INC digit + 4       ; 001850

    STY digit + 5       ; 001851  @ 202B
    INC digit + 5       ; 001852
    INC digit + 5       ; 001853
    INC digit + 5       ; 001854
    INC digit + 5       ; 001855
    INC digit + 5       ; 001856
    INC digit + 5       ; 001857
    INC digit + 5       ; 001858
    INC digit + 5       ; 001859
    STX digit + 5       ; 001850  @ 2046
    INC digit + 4       ; 001860

    STY digit + 5       ; 001861  @ 204C
    INC digit + 5       ; 001862
    INC digit + 5       ; 001863
    INC digit + 5       ; 001864
    INC digit + 5       ; 001865
    INC digit + 5       ; 001866
    INC digit + 5       ; 001867
    INC digit + 5       ; 001868
    INC digit + 5       ; 001869
    STX digit + 5       ; 001860  @ 2067
    INC digit + 4       ; 001870

    STY digit + 5       ; 001871  @ 206D
    INC digit + 5       ; 001872
    INC digit + 5       ; 001873
    INC digit + 5       ; 001874
    INC digit + 5       ; 001875
    INC digit + 5       ; 001876
    INC digit + 5       ; 001877
    INC digit + 5       ; 001878
    INC digit + 5       ; 001879
    STX digit + 5       ; 001870  @ 2088
    INC digit + 4       ; 001880

    STY digit + 5       ; 001881  @ 208E
    INC digit + 5       ; 001882
    INC digit + 5       ; 001883
    INC digit + 5       ; 001884
    INC digit + 5       ; 001885
    INC digit + 5       ; 001886
    INC digit + 5       ; 001887
    INC digit + 5       ; 001888
    INC digit + 5       ; 001889
    STX digit + 5       ; 001880  @ 20A9
    INC digit + 4       ; 001890

    STY digit + 5       ; 001891  @ 20AF
    INC digit + 5       ; 001892
    INC digit + 5       ; 001893
    INC digit + 5       ; 001894
    INC digit + 5       ; 001895
    INC digit + 5       ; 001896
    INC digit + 5       ; 001897
    INC digit + 5       ; 001898
    INC digit + 5       ; 001899
    STX digit + 5       ; 001890  @ 20CA
    STX digit + 4       ; 001800  @ 20CD
    INC digit + 3       ; 001900

    STY digit + 5       ; 001901  @ 20D3
    INC digit + 5       ; 001902
    INC digit + 5       ; 001903
    INC digit + 5       ; 001904
    INC digit + 5       ; 001905
    INC digit + 5       ; 001906
    INC digit + 5       ; 001907
    INC digit + 5       ; 001908
    INC digit + 5       ; 001909
    STX digit + 5       ; 001900  @ 20EE
    STY digit + 4       ; 001910  @ 20F1

    STY digit + 5       ; 001911  @ 20F4
    INC digit + 5       ; 001912
    INC digit + 5       ; 001913
    INC digit + 5       ; 001914
    INC digit + 5       ; 001915
    INC digit + 5       ; 001916
    INC digit + 5       ; 001917
    INC digit + 5       ; 001918
    INC digit + 5       ; 001919
    STX digit + 5       ; 001910  @ 210F
    INC digit + 4       ; 001920

    STY digit + 5       ; 001921  @ 2115
    INC digit + 5       ; 001922
    INC digit + 5       ; 001923
    INC digit + 5       ; 001924
    INC digit + 5       ; 001925
    INC digit + 5       ; 001926
    INC digit + 5       ; 001927
    INC digit + 5       ; 001928
    INC digit + 5       ; 001929
    STX digit + 5       ; 001920  @ 2130
    INC digit + 4       ; 001930

    STY digit + 5       ; 001931  @ 2136
    INC digit + 5       ; 001932
    INC digit + 5       ; 001933
    INC digit + 5       ; 001934
    INC digit + 5       ; 001935
    INC digit + 5       ; 001936
    INC digit + 5       ; 001937
    INC digit + 5       ; 001938
    INC digit + 5       ; 001939
    STX digit + 5       ; 001930  @ 2151
    INC digit + 4       ; 001940

    STY digit + 5       ; 001941  @ 2157
    INC digit + 5       ; 001942
    INC digit + 5       ; 001943
    INC digit + 5       ; 001944
    INC digit + 5       ; 001945
    INC digit + 5       ; 001946
    INC digit + 5       ; 001947
    INC digit + 5       ; 001948
    INC digit + 5       ; 001949
    STX digit + 5       ; 001940  @ 2172
    INC digit + 4       ; 001950

    STY digit + 5       ; 001951  @ 2178
    INC digit + 5       ; 001952
    INC digit + 5       ; 001953
    INC digit + 5       ; 001954
    INC digit + 5       ; 001955
    INC digit + 5       ; 001956
    INC digit + 5       ; 001957
    INC digit + 5       ; 001958
    INC digit + 5       ; 001959
    STX digit + 5       ; 001950  @ 2193
    INC digit + 4       ; 001960

    STY digit + 5       ; 001961  @ 2199
    INC digit + 5       ; 001962
    INC digit + 5       ; 001963
    INC digit + 5       ; 001964
    INC digit + 5       ; 001965
    INC digit + 5       ; 001966
    INC digit + 5       ; 001967
    INC digit + 5       ; 001968
    INC digit + 5       ; 001969
    STX digit + 5       ; 001960  @ 21B4
    INC digit + 4       ; 001970

    STY digit + 5       ; 001971  @ 21BA
    INC digit + 5       ; 001972
    INC digit + 5       ; 001973
    INC digit + 5       ; 001974
    INC digit + 5       ; 001975
    INC digit + 5       ; 001976
    INC digit + 5       ; 001977
    INC digit + 5       ; 001978
    INC digit + 5       ; 001979
    STX digit + 5       ; 001970  @ 21D5
    INC digit + 4       ; 001980

    STY digit + 5       ; 001981  @ 21DB
    INC digit + 5       ; 001982
    INC digit + 5       ; 001983
    INC digit + 5       ; 001984
    INC digit + 5       ; 001985
    INC digit + 5       ; 001986
    INC digit + 5       ; 001987
    INC digit + 5       ; 001988
    INC digit + 5       ; 001989
    STX digit + 5       ; 001980  @ 21F6
    INC digit + 4       ; 001990

    STY digit + 5       ; 001991  @ 21FC
    INC digit + 5       ; 001992
    INC digit + 5       ; 001993
    INC digit + 5       ; 001994
    INC digit + 5       ; 001995
    INC digit + 5       ; 001996
    INC digit + 5       ; 001997
    INC digit + 5       ; 001998
    INC digit + 5       ; 001999
    STX digit + 5       ; 001990  @ 2217
    STX digit + 4       ; 001900  @ 221A
    STX digit + 3       ; 001000  @ 221D
    INC digit + 2       ; 002000

    STY digit + 5       ; 002001  @ 2223
    INC digit + 5       ; 002002
    INC digit + 5       ; 002003
    INC digit + 5       ; 002004
    INC digit + 5       ; 002005
    INC digit + 5       ; 002006
    INC digit + 5       ; 002007
    INC digit + 5       ; 002008
    INC digit + 5       ; 002009
    STX digit + 5       ; 002000  @ 223E
    STY digit + 4       ; 002010  @ 2241

    STY digit + 5       ; 002011  @ 2244
    INC digit + 5       ; 002012
    INC digit + 5       ; 002013
    INC digit + 5       ; 002014
    INC digit + 5       ; 002015
    INC digit + 5       ; 002016
    INC digit + 5       ; 002017
    INC digit + 5       ; 002018
    INC digit + 5       ; 002019
    STX digit + 5       ; 002010  @ 225F
    INC digit + 4       ; 002020

    STY digit + 5       ; 002021  @ 2265
    INC digit + 5       ; 002022
    INC digit + 5       ; 002023
    INC digit + 5       ; 002024
    INC digit + 5       ; 002025
    INC digit + 5       ; 002026
    INC digit + 5       ; 002027
    INC digit + 5       ; 002028
    INC digit + 5       ; 002029
    STX digit + 5       ; 002020  @ 2280
    INC digit + 4       ; 002030

    STY digit + 5       ; 002031  @ 2286
    INC digit + 5       ; 002032
    INC digit + 5       ; 002033
    INC digit + 5       ; 002034
    INC digit + 5       ; 002035
    INC digit + 5       ; 002036
    INC digit + 5       ; 002037
    INC digit + 5       ; 002038
    INC digit + 5       ; 002039
    STX digit + 5       ; 002030  @ 22A1
    INC digit + 4       ; 002040

    STY digit + 5       ; 002041  @ 22A7
    INC digit + 5       ; 002042
    INC digit + 5       ; 002043
    INC digit + 5       ; 002044
    INC digit + 5       ; 002045
    INC digit + 5       ; 002046
    INC digit + 5       ; 002047
    INC digit + 5       ; 002048
    INC digit + 5       ; 002049
    STX digit + 5       ; 002040  @ 22C2
    INC digit + 4       ; 002050

    STY digit + 5       ; 002051  @ 22C8
    INC digit + 5       ; 002052
    INC digit + 5       ; 002053
    INC digit + 5       ; 002054
    INC digit + 5       ; 002055
    INC digit + 5       ; 002056
    INC digit + 5       ; 002057
    INC digit + 5       ; 002058
    INC digit + 5       ; 002059
    STX digit + 5       ; 002050  @ 22E3
    INC digit + 4       ; 002060

    STY digit + 5       ; 002061  @ 22E9
    INC digit + 5       ; 002062
    INC digit + 5       ; 002063
    INC digit + 5       ; 002064
    INC digit + 5       ; 002065
    INC digit + 5       ; 002066
    INC digit + 5       ; 002067
    INC digit + 5       ; 002068
    INC digit + 5       ; 002069
    STX digit + 5       ; 002060  @ 2304
    INC digit + 4       ; 002070

    STY digit + 5       ; 002071  @ 230A
    INC digit + 5       ; 002072
    INC digit + 5       ; 002073
    INC digit + 5       ; 002074
    INC digit + 5       ; 002075
    INC digit + 5       ; 002076
    INC digit + 5       ; 002077
    INC digit + 5       ; 002078
    INC digit + 5       ; 002079
    STX digit + 5       ; 002070  @ 2325
    INC digit + 4       ; 002080

    STY digit + 5       ; 002081  @ 232B
    INC digit + 5       ; 002082
    INC digit + 5       ; 002083
    INC digit + 5       ; 002084
    INC digit + 5       ; 002085
    INC digit + 5       ; 002086
    INC digit + 5       ; 002087
    INC digit + 5       ; 002088
    INC digit + 5       ; 002089
    STX digit + 5       ; 002080  @ 2346
    INC digit + 4       ; 002090

    STY digit + 5       ; 002091  @ 234C
    INC digit + 5       ; 002092
    INC digit + 5       ; 002093
    INC digit + 5       ; 002094
    INC digit + 5       ; 002095
    INC digit + 5       ; 002096
    INC digit + 5       ; 002097
    INC digit + 5       ; 002098
    INC digit + 5       ; 002099
    STX digit + 5       ; 002090  @ 2367
    STX digit + 4       ; 002000  @ 236A
    STY digit + 3       ; 002100  @ 236D

    STY digit + 5       ; 002101  @ 2370
    INC digit + 5       ; 002102
    INC digit + 5       ; 002103
    INC digit + 5       ; 002104
    INC digit + 5       ; 002105
    INC digit + 5       ; 002106
    INC digit + 5       ; 002107
    INC digit + 5       ; 002108
    INC digit + 5       ; 002109
    STX digit + 5       ; 002100  @ 238B
    STY digit + 4       ; 002110  @ 238E

    STY digit + 5       ; 002111  @ 2391
    INC digit + 5       ; 002112
    INC digit + 5       ; 002113
    INC digit + 5       ; 002114
    INC digit + 5       ; 002115
    INC digit + 5       ; 002116
    INC digit + 5       ; 002117
    INC digit + 5       ; 002118
    INC digit + 5       ; 002119
    STX digit + 5       ; 002110  @ 23AC
    INC digit + 4       ; 002120

    STY digit + 5       ; 002121  @ 23B2
    INC digit + 5       ; 002122
    INC digit + 5       ; 002123
    INC digit + 5       ; 002124
    INC digit + 5       ; 002125
    INC digit + 5       ; 002126
    INC digit + 5       ; 002127
    INC digit + 5       ; 002128
    INC digit + 5       ; 002129
    STX digit + 5       ; 002120  @ 23CD
    INC digit + 4       ; 002130

    STY digit + 5       ; 002131  @ 23D3
    INC digit + 5       ; 002132
    INC digit + 5       ; 002133
    INC digit + 5       ; 002134
    INC digit + 5       ; 002135
    INC digit + 5       ; 002136
    INC digit + 5       ; 002137
    INC digit + 5       ; 002138
    INC digit + 5       ; 002139
    STX digit + 5       ; 002130  @ 23EE
    INC digit + 4       ; 002140

    STY digit + 5       ; 002141  @ 23F4
    INC digit + 5       ; 002142
    INC digit + 5       ; 002143
    INC digit + 5       ; 002144
    INC digit + 5       ; 002145
    INC digit + 5       ; 002146
    INC digit + 5       ; 002147
    INC digit + 5       ; 002148
    INC digit + 5       ; 002149
    STX digit + 5       ; 002140  @ 240F
    INC digit + 4       ; 002150

    STY digit + 5       ; 002151  @ 2415
    INC digit + 5       ; 002152
    INC digit + 5       ; 002153
    INC digit + 5       ; 002154
    INC digit + 5       ; 002155
    INC digit + 5       ; 002156
    INC digit + 5       ; 002157
    INC digit + 5       ; 002158
    INC digit + 5       ; 002159
    STX digit + 5       ; 002150  @ 2430
    INC digit + 4       ; 002160

    STY digit + 5       ; 002161  @ 2436
    INC digit + 5       ; 002162
    INC digit + 5       ; 002163
    INC digit + 5       ; 002164
    INC digit + 5       ; 002165
    INC digit + 5       ; 002166
    INC digit + 5       ; 002167
    INC digit + 5       ; 002168
    INC digit + 5       ; 002169
    STX digit + 5       ; 002160  @ 2451
    INC digit + 4       ; 002170

    STY digit + 5       ; 002171  @ 2457
    INC digit + 5       ; 002172
    INC digit + 5       ; 002173
    INC digit + 5       ; 002174
    INC digit + 5       ; 002175
    INC digit + 5       ; 002176
    INC digit + 5       ; 002177
    INC digit + 5       ; 002178
    INC digit + 5       ; 002179
    STX digit + 5       ; 002170  @ 2472
    INC digit + 4       ; 002180

    STY digit + 5       ; 002181  @ 2478
    INC digit + 5       ; 002182
    INC digit + 5       ; 002183
    INC digit + 5       ; 002184
    INC digit + 5       ; 002185
    INC digit + 5       ; 002186
    INC digit + 5       ; 002187
    INC digit + 5       ; 002188
    INC digit + 5       ; 002189
    STX digit + 5       ; 002180  @ 2493
    INC digit + 4       ; 002190

    STY digit + 5       ; 002191  @ 2499
    INC digit + 5       ; 002192
    INC digit + 5       ; 002193
    INC digit + 5       ; 002194
    INC digit + 5       ; 002195
    INC digit + 5       ; 002196
    INC digit + 5       ; 002197
    INC digit + 5       ; 002198
    INC digit + 5       ; 002199
    STX digit + 5       ; 002190  @ 24B4
    STX digit + 4       ; 002100  @ 24B7
    INC digit + 3       ; 002200

    STY digit + 5       ; 002201  @ 24BD
    INC digit + 5       ; 002202
    INC digit + 5       ; 002203
    INC digit + 5       ; 002204
    INC digit + 5       ; 002205
    INC digit + 5       ; 002206
    INC digit + 5       ; 002207
    INC digit + 5       ; 002208
    INC digit + 5       ; 002209
    STX digit + 5       ; 002200  @ 24D8
    STY digit + 4       ; 002210  @ 24DB

    STY digit + 5       ; 002211  @ 24DE
    INC digit + 5       ; 002212
    INC digit + 5       ; 002213
    INC digit + 5       ; 002214
    INC digit + 5       ; 002215
    INC digit + 5       ; 002216
    INC digit + 5       ; 002217
    INC digit + 5       ; 002218
    INC digit + 5       ; 002219
    STX digit + 5       ; 002210  @ 24F9
    INC digit + 4       ; 002220

    STY digit + 5       ; 002221  @ 24FF
    INC digit + 5       ; 002222
    INC digit + 5       ; 002223
    INC digit + 5       ; 002224
    INC digit + 5       ; 002225
    INC digit + 5       ; 002226
    INC digit + 5       ; 002227
    INC digit + 5       ; 002228
    INC digit + 5       ; 002229
    STX digit + 5       ; 002220  @ 251A
    INC digit + 4       ; 002230

    STY digit + 5       ; 002231  @ 2520
    INC digit + 5       ; 002232
    INC digit + 5       ; 002233
    INC digit + 5       ; 002234
    INC digit + 5       ; 002235
    INC digit + 5       ; 002236
    INC digit + 5       ; 002237
    INC digit + 5       ; 002238
    INC digit + 5       ; 002239
    STX digit + 5       ; 002230  @ 253B
    INC digit + 4       ; 002240

    STY digit + 5       ; 002241  @ 2541
    INC digit + 5       ; 002242
    INC digit + 5       ; 002243
    INC digit + 5       ; 002244
    INC digit + 5       ; 002245
    INC digit + 5       ; 002246
    INC digit + 5       ; 002247
    INC digit + 5       ; 002248
    INC digit + 5       ; 002249
    STX digit + 5       ; 002240  @ 255C
    INC digit + 4       ; 002250

    STY digit + 5       ; 002251  @ 2562
    INC digit + 5       ; 002252
    INC digit + 5       ; 002253
    INC digit + 5       ; 002254
    INC digit + 5       ; 002255
    INC digit + 5       ; 002256
    INC digit + 5       ; 002257
    INC digit + 5       ; 002258
    INC digit + 5       ; 002259
    STX digit + 5       ; 002250  @ 257D
    INC digit + 4       ; 002260

    STY digit + 5       ; 002261  @ 2583
    INC digit + 5       ; 002262
    INC digit + 5       ; 002263
    INC digit + 5       ; 002264
    INC digit + 5       ; 002265
    INC digit + 5       ; 002266
    INC digit + 5       ; 002267
    INC digit + 5       ; 002268
    INC digit + 5       ; 002269
    STX digit + 5       ; 002260  @ 259E
    INC digit + 4       ; 002270

    STY digit + 5       ; 002271  @ 25A4
    INC digit + 5       ; 002272
    INC digit + 5       ; 002273
    INC digit + 5       ; 002274
    INC digit + 5       ; 002275
    INC digit + 5       ; 002276
    INC digit + 5       ; 002277
    INC digit + 5       ; 002278
    INC digit + 5       ; 002279
    STX digit + 5       ; 002270  @ 25BF
    INC digit + 4       ; 002280

    STY digit + 5       ; 002281  @ 25C5
    INC digit + 5       ; 002282
    INC digit + 5       ; 002283
    INC digit + 5       ; 002284
    INC digit + 5       ; 002285
    INC digit + 5       ; 002286
    INC digit + 5       ; 002287
    INC digit + 5       ; 002288
    INC digit + 5       ; 002289
    STX digit + 5       ; 002280  @ 25E0
    INC digit + 4       ; 002290

    STY digit + 5       ; 002291  @ 25E6
    INC digit + 5       ; 002292
    INC digit + 5       ; 002293
    INC digit + 5       ; 002294
    INC digit + 5       ; 002295
    INC digit + 5       ; 002296
    INC digit + 5       ; 002297
    INC digit + 5       ; 002298
    INC digit + 5       ; 002299
    STX digit + 5       ; 002290  @ 2601
    STX digit + 4       ; 002200  @ 2604
    INC digit + 3       ; 002300

    STY digit + 5       ; 002301  @ 260A
    INC digit + 5       ; 002302
    INC digit + 5       ; 002303
    INC digit + 5       ; 002304
    INC digit + 5       ; 002305
    INC digit + 5       ; 002306
    INC digit + 5       ; 002307
    INC digit + 5       ; 002308
    INC digit + 5       ; 002309
    STX digit + 5       ; 002300  @ 2625
    STY digit + 4       ; 002310  @ 2628

    STY digit + 5       ; 002311  @ 262B
    INC digit + 5       ; 002312
    INC digit + 5       ; 002313
    INC digit + 5       ; 002314
    INC digit + 5       ; 002315
    INC digit + 5       ; 002316
    INC digit + 5       ; 002317
    INC digit + 5       ; 002318
    INC digit + 5       ; 002319
    STX digit + 5       ; 002310  @ 2646
    INC digit + 4       ; 002320

    STY digit + 5       ; 002321  @ 264C
    INC digit + 5       ; 002322
    INC digit + 5       ; 002323
    INC digit + 5       ; 002324
    INC digit + 5       ; 002325
    INC digit + 5       ; 002326
    INC digit + 5       ; 002327
    INC digit + 5       ; 002328
    INC digit + 5       ; 002329
    STX digit + 5       ; 002320  @ 2667
    INC digit + 4       ; 002330

    STY digit + 5       ; 002331  @ 266D
    INC digit + 5       ; 002332
    INC digit + 5       ; 002333
    INC digit + 5       ; 002334
    INC digit + 5       ; 002335
    INC digit + 5       ; 002336
    INC digit + 5       ; 002337
    INC digit + 5       ; 002338
    INC digit + 5       ; 002339
    STX digit + 5       ; 002330  @ 2688
    INC digit + 4       ; 002340

    STY digit + 5       ; 002341  @ 268E
    INC digit + 5       ; 002342
    INC digit + 5       ; 002343
    INC digit + 5       ; 002344
    INC digit + 5       ; 002345
    INC digit + 5       ; 002346
    INC digit + 5       ; 002347
    INC digit + 5       ; 002348
    INC digit + 5       ; 002349
    STX digit + 5       ; 002340  @ 26A9
    INC digit + 4       ; 002350

    STY digit + 5       ; 002351  @ 26AF
    INC digit + 5       ; 002352
    INC digit + 5       ; 002353
    INC digit + 5       ; 002354
    INC digit + 5       ; 002355
    INC digit + 5       ; 002356
    INC digit + 5       ; 002357
    INC digit + 5       ; 002358
    INC digit + 5       ; 002359
    STX digit + 5       ; 002350  @ 26CA
    INC digit + 4       ; 002360

    STY digit + 5       ; 002361  @ 26D0
    INC digit + 5       ; 002362
    INC digit + 5       ; 002363
    INC digit + 5       ; 002364
    INC digit + 5       ; 002365
    INC digit + 5       ; 002366
    INC digit + 5       ; 002367
    INC digit + 5       ; 002368
    INC digit + 5       ; 002369
    STX digit + 5       ; 002360  @ 26EB
    INC digit + 4       ; 002370

    STY digit + 5       ; 002371  @ 26F1
    INC digit + 5       ; 002372
    INC digit + 5       ; 002373
    INC digit + 5       ; 002374
    INC digit + 5       ; 002375
    INC digit + 5       ; 002376
    INC digit + 5       ; 002377
    INC digit + 5       ; 002378
    INC digit + 5       ; 002379
    STX digit + 5       ; 002370  @ 270C
    INC digit + 4       ; 002380

    STY digit + 5       ; 002381  @ 2712
    INC digit + 5       ; 002382
    INC digit + 5       ; 002383
    INC digit + 5       ; 002384
    INC digit + 5       ; 002385
    INC digit + 5       ; 002386
    INC digit + 5       ; 002387
    INC digit + 5       ; 002388
    INC digit + 5       ; 002389
    STX digit + 5       ; 002380  @ 272D
    INC digit + 4       ; 002390

    STY digit + 5       ; 002391  @ 2733
    INC digit + 5       ; 002392
    INC digit + 5       ; 002393
    INC digit + 5       ; 002394
    INC digit + 5       ; 002395
    INC digit + 5       ; 002396
    INC digit + 5       ; 002397
    INC digit + 5       ; 002398
    INC digit + 5       ; 002399
    STX digit + 5       ; 002390  @ 274E
    STX digit + 4       ; 002300  @ 2751
    INC digit + 3       ; 002400

    STY digit + 5       ; 002401  @ 2757
    INC digit + 5       ; 002402
    INC digit + 5       ; 002403
    INC digit + 5       ; 002404
    INC digit + 5       ; 002405
    INC digit + 5       ; 002406
    INC digit + 5       ; 002407
    INC digit + 5       ; 002408
    INC digit + 5       ; 002409
    STX digit + 5       ; 002400  @ 2772
    STY digit + 4       ; 002410  @ 2775

    STY digit + 5       ; 002411  @ 2778
    INC digit + 5       ; 002412
    INC digit + 5       ; 002413
    INC digit + 5       ; 002414
    INC digit + 5       ; 002415
    INC digit + 5       ; 002416
    INC digit + 5       ; 002417
    INC digit + 5       ; 002418
    INC digit + 5       ; 002419
    STX digit + 5       ; 002410  @ 2793
    INC digit + 4       ; 002420

    STY digit + 5       ; 002421  @ 2799
    INC digit + 5       ; 002422
    INC digit + 5       ; 002423
    INC digit + 5       ; 002424
    INC digit + 5       ; 002425
    INC digit + 5       ; 002426
    INC digit + 5       ; 002427
    INC digit + 5       ; 002428
    INC digit + 5       ; 002429
    STX digit + 5       ; 002420  @ 27B4
    INC digit + 4       ; 002430

    STY digit + 5       ; 002431  @ 27BA
    INC digit + 5       ; 002432
    INC digit + 5       ; 002433
    INC digit + 5       ; 002434
    INC digit + 5       ; 002435
    INC digit + 5       ; 002436
    INC digit + 5       ; 002437
    INC digit + 5       ; 002438
    INC digit + 5       ; 002439
    STX digit + 5       ; 002430  @ 27D5
    INC digit + 4       ; 002440

    STY digit + 5       ; 002441  @ 27DB
    INC digit + 5       ; 002442
    INC digit + 5       ; 002443
    INC digit + 5       ; 002444
    INC digit + 5       ; 002445
    INC digit + 5       ; 002446
    INC digit + 5       ; 002447
    INC digit + 5       ; 002448
    INC digit + 5       ; 002449
    STX digit + 5       ; 002440  @ 27F6
    INC digit + 4       ; 002450

    STY digit + 5       ; 002451  @ 27FC
    INC digit + 5       ; 002452
    INC digit + 5       ; 002453
    INC digit + 5       ; 002454
    INC digit + 5       ; 002455
    INC digit + 5       ; 002456
    INC digit + 5       ; 002457
    INC digit + 5       ; 002458
    INC digit + 5       ; 002459
    STX digit + 5       ; 002450  @ 2817
    INC digit + 4       ; 002460

    STY digit + 5       ; 002461  @ 281D
    INC digit + 5       ; 002462
    INC digit + 5       ; 002463
    INC digit + 5       ; 002464
    INC digit + 5       ; 002465
    INC digit + 5       ; 002466
    INC digit + 5       ; 002467
    INC digit + 5       ; 002468
    INC digit + 5       ; 002469
    STX digit + 5       ; 002460  @ 2838
    INC digit + 4       ; 002470

    STY digit + 5       ; 002471  @ 283E
    INC digit + 5       ; 002472
    INC digit + 5       ; 002473
    INC digit + 5       ; 002474
    INC digit + 5       ; 002475
    INC digit + 5       ; 002476
    INC digit + 5       ; 002477
    INC digit + 5       ; 002478
    INC digit + 5       ; 002479
    STX digit + 5       ; 002470  @ 2859
    INC digit + 4       ; 002480

    STY digit + 5       ; 002481  @ 285F
    INC digit + 5       ; 002482
    INC digit + 5       ; 002483
    INC digit + 5       ; 002484
    INC digit + 5       ; 002485
    INC digit + 5       ; 002486
    INC digit + 5       ; 002487
    INC digit + 5       ; 002488
    INC digit + 5       ; 002489
    STX digit + 5       ; 002480  @ 287A
    INC digit + 4       ; 002490

    STY digit + 5       ; 002491  @ 2880
    INC digit + 5       ; 002492
    INC digit + 5       ; 002493
    INC digit + 5       ; 002494
    INC digit + 5       ; 002495
    INC digit + 5       ; 002496
    INC digit + 5       ; 002497
    INC digit + 5       ; 002498
    INC digit + 5       ; 002499
    STX digit + 5       ; 002490  @ 289B
    STX digit + 4       ; 002400  @ 289E
    INC digit + 3       ; 002500

    STY digit + 5       ; 002501  @ 28A4
    INC digit + 5       ; 002502
    INC digit + 5       ; 002503
    INC digit + 5       ; 002504
    INC digit + 5       ; 002505
    INC digit + 5       ; 002506
    INC digit + 5       ; 002507
    INC digit + 5       ; 002508
    INC digit + 5       ; 002509
    STX digit + 5       ; 002500  @ 28BF
    STY digit + 4       ; 002510  @ 28C2

    STY digit + 5       ; 002511  @ 28C5
    INC digit + 5       ; 002512
    INC digit + 5       ; 002513
    INC digit + 5       ; 002514
    INC digit + 5       ; 002515
    INC digit + 5       ; 002516
    INC digit + 5       ; 002517
    INC digit + 5       ; 002518
    INC digit + 5       ; 002519
    STX digit + 5       ; 002510  @ 28E0
    INC digit + 4       ; 002520

    STY digit + 5       ; 002521  @ 28E6
    INC digit + 5       ; 002522
    INC digit + 5       ; 002523
    INC digit + 5       ; 002524
    INC digit + 5       ; 002525
    INC digit + 5       ; 002526
    INC digit + 5       ; 002527
    INC digit + 5       ; 002528
    INC digit + 5       ; 002529
    STX digit + 5       ; 002520  @ 2901
    INC digit + 4       ; 002530

    STY digit + 5       ; 002531  @ 2907
    INC digit + 5       ; 002532
    INC digit + 5       ; 002533
    INC digit + 5       ; 002534
    INC digit + 5       ; 002535
    INC digit + 5       ; 002536
    INC digit + 5       ; 002537
    INC digit + 5       ; 002538
    INC digit + 5       ; 002539
    STX digit + 5       ; 002530  @ 2922
    INC digit + 4       ; 002540

    STY digit + 5       ; 002541  @ 2928
    INC digit + 5       ; 002542
    INC digit + 5       ; 002543
    INC digit + 5       ; 002544
    INC digit + 5       ; 002545
    INC digit + 5       ; 002546
    INC digit + 5       ; 002547
    INC digit + 5       ; 002548
    INC digit + 5       ; 002549
    STX digit + 5       ; 002540  @ 2943
    INC digit + 4       ; 002550

    STY digit + 5       ; 002551  @ 2949
    INC digit + 5       ; 002552
    INC digit + 5       ; 002553
    INC digit + 5       ; 002554
    INC digit + 5       ; 002555
    INC digit + 5       ; 002556
    INC digit + 5       ; 002557
    INC digit + 5       ; 002558
    INC digit + 5       ; 002559
    STX digit + 5       ; 002550  @ 2964
    INC digit + 4       ; 002560

    STY digit + 5       ; 002561  @ 296A
    INC digit + 5       ; 002562
    INC digit + 5       ; 002563
    INC digit + 5       ; 002564
    INC digit + 5       ; 002565
    INC digit + 5       ; 002566
    INC digit + 5       ; 002567
    INC digit + 5       ; 002568
    INC digit + 5       ; 002569
    STX digit + 5       ; 002560  @ 2985
    INC digit + 4       ; 002570

    STY digit + 5       ; 002571  @ 298B
    INC digit + 5       ; 002572
    INC digit + 5       ; 002573
    INC digit + 5       ; 002574
    INC digit + 5       ; 002575
    INC digit + 5       ; 002576
    INC digit + 5       ; 002577
    INC digit + 5       ; 002578
    INC digit + 5       ; 002579
    STX digit + 5       ; 002570  @ 29A6
    INC digit + 4       ; 002580

    STY digit + 5       ; 002581  @ 29AC
    INC digit + 5       ; 002582
    INC digit + 5       ; 002583
    INC digit + 5       ; 002584
    INC digit + 5       ; 002585
    INC digit + 5       ; 002586
    INC digit + 5       ; 002587
    INC digit + 5       ; 002588
    INC digit + 5       ; 002589
    STX digit + 5       ; 002580  @ 29C7
    INC digit + 4       ; 002590

    STY digit + 5       ; 002591  @ 29CD
    INC digit + 5       ; 002592
    INC digit + 5       ; 002593
    INC digit + 5       ; 002594
    INC digit + 5       ; 002595
    INC digit + 5       ; 002596
    INC digit + 5       ; 002597
    INC digit + 5       ; 002598
    INC digit + 5       ; 002599
    STX digit + 5       ; 002590  @ 29E8
    STX digit + 4       ; 002500  @ 29EB
    INC digit + 3       ; 002600

    STY digit + 5       ; 002601  @ 29F1
    INC digit + 5       ; 002602
    INC digit + 5       ; 002603
    INC digit + 5       ; 002604
    INC digit + 5       ; 002605
    INC digit + 5       ; 002606
    INC digit + 5       ; 002607
    INC digit + 5       ; 002608
    INC digit + 5       ; 002609
    STX digit + 5       ; 002600  @ 2A0C
    STY digit + 4       ; 002610  @ 2A0F

    STY digit + 5       ; 002611  @ 2A12
    INC digit + 5       ; 002612
    INC digit + 5       ; 002613
    INC digit + 5       ; 002614
    INC digit + 5       ; 002615
    INC digit + 5       ; 002616
    INC digit + 5       ; 002617
    INC digit + 5       ; 002618
    INC digit + 5       ; 002619
    STX digit + 5       ; 002610  @ 2A2D
    INC digit + 4       ; 002620

    STY digit + 5       ; 002621  @ 2A33
    INC digit + 5       ; 002622
    INC digit + 5       ; 002623
    INC digit + 5       ; 002624
    INC digit + 5       ; 002625
    INC digit + 5       ; 002626
    INC digit + 5       ; 002627
    INC digit + 5       ; 002628
    INC digit + 5       ; 002629
    STX digit + 5       ; 002620  @ 2A4E
    INC digit + 4       ; 002630

    STY digit + 5       ; 002631  @ 2A54
    INC digit + 5       ; 002632
    INC digit + 5       ; 002633
    INC digit + 5       ; 002634
    INC digit + 5       ; 002635
    INC digit + 5       ; 002636
    INC digit + 5       ; 002637
    INC digit + 5       ; 002638
    INC digit + 5       ; 002639
    STX digit + 5       ; 002630  @ 2A6F
    INC digit + 4       ; 002640

    STY digit + 5       ; 002641  @ 2A75
    INC digit + 5       ; 002642
    INC digit + 5       ; 002643
    INC digit + 5       ; 002644
    INC digit + 5       ; 002645
    INC digit + 5       ; 002646
    INC digit + 5       ; 002647
    INC digit + 5       ; 002648
    INC digit + 5       ; 002649
    STX digit + 5       ; 002640  @ 2A90
    INC digit + 4       ; 002650

    STY digit + 5       ; 002651  @ 2A96
    INC digit + 5       ; 002652
    INC digit + 5       ; 002653
    INC digit + 5       ; 002654
    INC digit + 5       ; 002655
    INC digit + 5       ; 002656
    INC digit + 5       ; 002657
    INC digit + 5       ; 002658
    INC digit + 5       ; 002659
    STX digit + 5       ; 002650  @ 2AB1
    INC digit + 4       ; 002660

    STY digit + 5       ; 002661  @ 2AB7
    INC digit + 5       ; 002662
    INC digit + 5       ; 002663
    INC digit + 5       ; 002664
    INC digit + 5       ; 002665
    INC digit + 5       ; 002666
    INC digit + 5       ; 002667
    INC digit + 5       ; 002668
    INC digit + 5       ; 002669
    STX digit + 5       ; 002660  @ 2AD2
    INC digit + 4       ; 002670

    STY digit + 5       ; 002671  @ 2AD8
    INC digit + 5       ; 002672
    INC digit + 5       ; 002673
    INC digit + 5       ; 002674
    INC digit + 5       ; 002675
    INC digit + 5       ; 002676
    INC digit + 5       ; 002677
    INC digit + 5       ; 002678
    INC digit + 5       ; 002679
    STX digit + 5       ; 002670  @ 2AF3
    INC digit + 4       ; 002680

    STY digit + 5       ; 002681  @ 2AF9
    INC digit + 5       ; 002682
    INC digit + 5       ; 002683
    INC digit + 5       ; 002684
    INC digit + 5       ; 002685
    INC digit + 5       ; 002686
    INC digit + 5       ; 002687
    INC digit + 5       ; 002688
    INC digit + 5       ; 002689
    STX digit + 5       ; 002680  @ 2B14
    INC digit + 4       ; 002690

    STY digit + 5       ; 002691  @ 2B1A
    INC digit + 5       ; 002692
    INC digit + 5       ; 002693
    INC digit + 5       ; 002694
    INC digit + 5       ; 002695
    INC digit + 5       ; 002696
    INC digit + 5       ; 002697
    INC digit + 5       ; 002698
    INC digit + 5       ; 002699
    STX digit + 5       ; 002690  @ 2B35
    STX digit + 4       ; 002600  @ 2B38
    INC digit + 3       ; 002700

    STY digit + 5       ; 002701  @ 2B3E
    INC digit + 5       ; 002702
    INC digit + 5       ; 002703
    INC digit + 5       ; 002704
    INC digit + 5       ; 002705
    INC digit + 5       ; 002706
    INC digit + 5       ; 002707
    INC digit + 5       ; 002708
    INC digit + 5       ; 002709
    STX digit + 5       ; 002700  @ 2B59
    STY digit + 4       ; 002710  @ 2B5C

    STY digit + 5       ; 002711  @ 2B5F
    INC digit + 5       ; 002712
    INC digit + 5       ; 002713
    INC digit + 5       ; 002714
    INC digit + 5       ; 002715
    INC digit + 5       ; 002716
    INC digit + 5       ; 002717
    INC digit + 5       ; 002718
    INC digit + 5       ; 002719
    STX digit + 5       ; 002710  @ 2B7A
    INC digit + 4       ; 002720

    STY digit + 5       ; 002721  @ 2B80
    INC digit + 5       ; 002722
    INC digit + 5       ; 002723
    INC digit + 5       ; 002724
    INC digit + 5       ; 002725
    INC digit + 5       ; 002726
    INC digit + 5       ; 002727
    INC digit + 5       ; 002728
    INC digit + 5       ; 002729
    STX digit + 5       ; 002720  @ 2B9B
    INC digit + 4       ; 002730

    STY digit + 5       ; 002731  @ 2BA1
    INC digit + 5       ; 002732
    INC digit + 5       ; 002733
    INC digit + 5       ; 002734
    INC digit + 5       ; 002735
    INC digit + 5       ; 002736
    INC digit + 5       ; 002737
    INC digit + 5       ; 002738
    INC digit + 5       ; 002739
    STX digit + 5       ; 002730  @ 2BBC
    INC digit + 4       ; 002740

    STY digit + 5       ; 002741  @ 2BC2
    INC digit + 5       ; 002742
    INC digit + 5       ; 002743
    INC digit + 5       ; 002744
    INC digit + 5       ; 002745
    INC digit + 5       ; 002746
    INC digit + 5       ; 002747
    INC digit + 5       ; 002748
    INC digit + 5       ; 002749
    STX digit + 5       ; 002740  @ 2BDD
    INC digit + 4       ; 002750

    STY digit + 5       ; 002751  @ 2BE3
    INC digit + 5       ; 002752
    INC digit + 5       ; 002753
    INC digit + 5       ; 002754
    INC digit + 5       ; 002755
    INC digit + 5       ; 002756
    INC digit + 5       ; 002757
    INC digit + 5       ; 002758
    INC digit + 5       ; 002759
    STX digit + 5       ; 002750  @ 2BFE
    INC digit + 4       ; 002760

    STY digit + 5       ; 002761  @ 2C04
    INC digit + 5       ; 002762
    INC digit + 5       ; 002763
    INC digit + 5       ; 002764
    INC digit + 5       ; 002765
    INC digit + 5       ; 002766
    INC digit + 5       ; 002767
    INC digit + 5       ; 002768
    INC digit + 5       ; 002769
    STX digit + 5       ; 002760  @ 2C1F
    INC digit + 4       ; 002770

    STY digit + 5       ; 002771  @ 2C25
    INC digit + 5       ; 002772
    INC digit + 5       ; 002773
    INC digit + 5       ; 002774
    INC digit + 5       ; 002775
    INC digit + 5       ; 002776
    INC digit + 5       ; 002777
    INC digit + 5       ; 002778
    INC digit + 5       ; 002779
    STX digit + 5       ; 002770  @ 2C40
    INC digit + 4       ; 002780

    STY digit + 5       ; 002781  @ 2C46
    INC digit + 5       ; 002782
    INC digit + 5       ; 002783
    INC digit + 5       ; 002784
    INC digit + 5       ; 002785
    INC digit + 5       ; 002786
    INC digit + 5       ; 002787
    INC digit + 5       ; 002788
    INC digit + 5       ; 002789
    STX digit + 5       ; 002780  @ 2C61
    INC digit + 4       ; 002790

    STY digit + 5       ; 002791  @ 2C67
    INC digit + 5       ; 002792
    INC digit + 5       ; 002793
    INC digit + 5       ; 002794
    INC digit + 5       ; 002795
    INC digit + 5       ; 002796
    INC digit + 5       ; 002797
    INC digit + 5       ; 002798
    INC digit + 5       ; 002799
    STX digit + 5       ; 002790  @ 2C82
    STX digit + 4       ; 002700  @ 2C85
    INC digit + 3       ; 002800

    STY digit + 5       ; 002801  @ 2C8B
    INC digit + 5       ; 002802
    INC digit + 5       ; 002803
    INC digit + 5       ; 002804
    INC digit + 5       ; 002805
    INC digit + 5       ; 002806
    INC digit + 5       ; 002807
    INC digit + 5       ; 002808
    INC digit + 5       ; 002809
    STX digit + 5       ; 002800  @ 2CA6
    STY digit + 4       ; 002810  @ 2CA9

    STY digit + 5       ; 002811  @ 2CAC
    INC digit + 5       ; 002812
    INC digit + 5       ; 002813
    INC digit + 5       ; 002814
    INC digit + 5       ; 002815
    INC digit + 5       ; 002816
    INC digit + 5       ; 002817
    INC digit + 5       ; 002818
    INC digit + 5       ; 002819
    STX digit + 5       ; 002810  @ 2CC7
    INC digit + 4       ; 002820

    STY digit + 5       ; 002821  @ 2CCD
    INC digit + 5       ; 002822
    INC digit + 5       ; 002823
    INC digit + 5       ; 002824
    INC digit + 5       ; 002825
    INC digit + 5       ; 002826
    INC digit + 5       ; 002827
    INC digit + 5       ; 002828
    INC digit + 5       ; 002829
    STX digit + 5       ; 002820  @ 2CE8
    INC digit + 4       ; 002830

    STY digit + 5       ; 002831  @ 2CEE
    INC digit + 5       ; 002832
    INC digit + 5       ; 002833
    INC digit + 5       ; 002834
    INC digit + 5       ; 002835
    INC digit + 5       ; 002836
    INC digit + 5       ; 002837
    INC digit + 5       ; 002838
    INC digit + 5       ; 002839
    STX digit + 5       ; 002830  @ 2D09
    INC digit + 4       ; 002840

    STY digit + 5       ; 002841  @ 2D0F
    INC digit + 5       ; 002842
    INC digit + 5       ; 002843
    INC digit + 5       ; 002844
    INC digit + 5       ; 002845
    INC digit + 5       ; 002846
    INC digit + 5       ; 002847
    INC digit + 5       ; 002848
    INC digit + 5       ; 002849
    STX digit + 5       ; 002840  @ 2D2A
    INC digit + 4       ; 002850

    STY digit + 5       ; 002851  @ 2D30
    INC digit + 5       ; 002852
    INC digit + 5       ; 002853
    INC digit + 5       ; 002854
    INC digit + 5       ; 002855
    INC digit + 5       ; 002856
    INC digit + 5       ; 002857
    INC digit + 5       ; 002858
    INC digit + 5       ; 002859
    STX digit + 5       ; 002850  @ 2D4B
    INC digit + 4       ; 002860

    STY digit + 5       ; 002861  @ 2D51
    INC digit + 5       ; 002862
    INC digit + 5       ; 002863
    INC digit + 5       ; 002864
    INC digit + 5       ; 002865
    INC digit + 5       ; 002866
    INC digit + 5       ; 002867
    INC digit + 5       ; 002868
    INC digit + 5       ; 002869
    STX digit + 5       ; 002860  @ 2D6C
    INC digit + 4       ; 002870

    STY digit + 5       ; 002871  @ 2D72
    INC digit + 5       ; 002872
    INC digit + 5       ; 002873
    INC digit + 5       ; 002874
    INC digit + 5       ; 002875
    INC digit + 5       ; 002876
    INC digit + 5       ; 002877
    INC digit + 5       ; 002878
    INC digit + 5       ; 002879
    STX digit + 5       ; 002870  @ 2D8D
    INC digit + 4       ; 002880

    STY digit + 5       ; 002881  @ 2D93
    INC digit + 5       ; 002882
    INC digit + 5       ; 002883
    INC digit + 5       ; 002884
    INC digit + 5       ; 002885
    INC digit + 5       ; 002886
    INC digit + 5       ; 002887
    INC digit + 5       ; 002888
    INC digit + 5       ; 002889
    STX digit + 5       ; 002880  @ 2DAE
    INC digit + 4       ; 002890

    STY digit + 5       ; 002891  @ 2DB4
    INC digit + 5       ; 002892
    INC digit + 5       ; 002893
    INC digit + 5       ; 002894
    INC digit + 5       ; 002895
    INC digit + 5       ; 002896
    INC digit + 5       ; 002897
    INC digit + 5       ; 002898
    INC digit + 5       ; 002899
    STX digit + 5       ; 002890  @ 2DCF
    STX digit + 4       ; 002800  @ 2DD2
    INC digit + 3       ; 002900

    STY digit + 5       ; 002901  @ 2DD8
    INC digit + 5       ; 002902
    INC digit + 5       ; 002903
    INC digit + 5       ; 002904
    INC digit + 5       ; 002905
    INC digit + 5       ; 002906
    INC digit + 5       ; 002907
    INC digit + 5       ; 002908
    INC digit + 5       ; 002909
    STX digit + 5       ; 002900  @ 2DF3
    STY digit + 4       ; 002910  @ 2DF6

    STY digit + 5       ; 002911  @ 2DF9
    INC digit + 5       ; 002912
    INC digit + 5       ; 002913
    INC digit + 5       ; 002914
    INC digit + 5       ; 002915
    INC digit + 5       ; 002916
    INC digit + 5       ; 002917
    INC digit + 5       ; 002918
    INC digit + 5       ; 002919
    STX digit + 5       ; 002910  @ 2E14
    INC digit + 4       ; 002920

    STY digit + 5       ; 002921  @ 2E1A
    INC digit + 5       ; 002922
    INC digit + 5       ; 002923
    INC digit + 5       ; 002924
    INC digit + 5       ; 002925
    INC digit + 5       ; 002926
    INC digit + 5       ; 002927
    INC digit + 5       ; 002928
    INC digit + 5       ; 002929
    STX digit + 5       ; 002920  @ 2E35
    INC digit + 4       ; 002930

    STY digit + 5       ; 002931  @ 2E3B
    INC digit + 5       ; 002932
    INC digit + 5       ; 002933
    INC digit + 5       ; 002934
    INC digit + 5       ; 002935
    INC digit + 5       ; 002936
    INC digit + 5       ; 002937
    INC digit + 5       ; 002938
    INC digit + 5       ; 002939
    STX digit + 5       ; 002930  @ 2E56
    INC digit + 4       ; 002940

    STY digit + 5       ; 002941  @ 2E5C
    INC digit + 5       ; 002942
    INC digit + 5       ; 002943
    INC digit + 5       ; 002944
    INC digit + 5       ; 002945
    INC digit + 5       ; 002946
    INC digit + 5       ; 002947
    INC digit + 5       ; 002948
    INC digit + 5       ; 002949
    STX digit + 5       ; 002940  @ 2E77
    INC digit + 4       ; 002950

    STY digit + 5       ; 002951  @ 2E7D
    INC digit + 5       ; 002952
    INC digit + 5       ; 002953
    INC digit + 5       ; 002954
    INC digit + 5       ; 002955
    INC digit + 5       ; 002956
    INC digit + 5       ; 002957
    INC digit + 5       ; 002958
    INC digit + 5       ; 002959
    STX digit + 5       ; 002950  @ 2E98
    INC digit + 4       ; 002960

    STY digit + 5       ; 002961  @ 2E9E
    INC digit + 5       ; 002962
    INC digit + 5       ; 002963
    INC digit + 5       ; 002964
    INC digit + 5       ; 002965
    INC digit + 5       ; 002966
    INC digit + 5       ; 002967
    INC digit + 5       ; 002968
    INC digit + 5       ; 002969
    STX digit + 5       ; 002960  @ 2EB9
    INC digit + 4       ; 002970

    STY digit + 5       ; 002971  @ 2EBF
    INC digit + 5       ; 002972
    INC digit + 5       ; 002973
    INC digit + 5       ; 002974
    INC digit + 5       ; 002975
    INC digit + 5       ; 002976
    INC digit + 5       ; 002977
    INC digit + 5       ; 002978
    INC digit + 5       ; 002979
    STX digit + 5       ; 002970  @ 2EDA
    INC digit + 4       ; 002980

    STY digit + 5       ; 002981  @ 2EE0
    INC digit + 5       ; 002982
    INC digit + 5       ; 002983
    INC digit + 5       ; 002984
    INC digit + 5       ; 002985
    INC digit + 5       ; 002986
    INC digit + 5       ; 002987
    INC digit + 5       ; 002988
    INC digit + 5       ; 002989
    STX digit + 5       ; 002980  @ 2EFB
    INC digit + 4       ; 002990

    STY digit + 5       ; 002991  @ 2F01
    INC digit + 5       ; 002992
    INC digit + 5       ; 002993
    INC digit + 5       ; 002994
    INC digit + 5       ; 002995
    INC digit + 5       ; 002996
    INC digit + 5       ; 002997
    INC digit + 5       ; 002998
    INC digit + 5       ; 002999
    STX digit + 5       ; 002990  @ 2F1C
    STX digit + 4       ; 002900  @ 2F1F
    STX digit + 3       ; 002000  @ 2F22
    INC digit + 2       ; 003000

    STY digit + 5       ; 003001  @ 2F28
    INC digit + 5       ; 003002
    INC digit + 5       ; 003003
    INC digit + 5       ; 003004
    INC digit + 5       ; 003005
    INC digit + 5       ; 003006
    INC digit + 5       ; 003007
    INC digit + 5       ; 003008
    INC digit + 5       ; 003009
    STX digit + 5       ; 003000  @ 2F43
    STY digit + 4       ; 003010  @ 2F46

    STY digit + 5       ; 003011  @ 2F49
    INC digit + 5       ; 003012
    INC digit + 5       ; 003013
    INC digit + 5       ; 003014
    INC digit + 5       ; 003015
    INC digit + 5       ; 003016
    INC digit + 5       ; 003017
    INC digit + 5       ; 003018
    INC digit + 5       ; 003019
    STX digit + 5       ; 003010  @ 2F64
    INC digit + 4       ; 003020

    STY digit + 5       ; 003021  @ 2F6A
    INC digit + 5       ; 003022
    INC digit + 5       ; 003023
    INC digit + 5       ; 003024
    INC digit + 5       ; 003025
    INC digit + 5       ; 003026
    INC digit + 5       ; 003027
    INC digit + 5       ; 003028
    INC digit + 5       ; 003029
    STX digit + 5       ; 003020  @ 2F85
    INC digit + 4       ; 003030

    STY digit + 5       ; 003031  @ 2F8B
    INC digit + 5       ; 003032
    INC digit + 5       ; 003033
    INC digit + 5       ; 003034
    INC digit + 5       ; 003035
    INC digit + 5       ; 003036
    INC digit + 5       ; 003037
    INC digit + 5       ; 003038
    INC digit + 5       ; 003039
    STX digit + 5       ; 003030  @ 2FA6
    INC digit + 4       ; 003040

    STY digit + 5       ; 003041  @ 2FAC
    INC digit + 5       ; 003042
    INC digit + 5       ; 003043
    INC digit + 5       ; 003044
    INC digit + 5       ; 003045
    INC digit + 5       ; 003046
    INC digit + 5       ; 003047
    INC digit + 5       ; 003048
    INC digit + 5       ; 003049
    STX digit + 5       ; 003040  @ 2FC7
    INC digit + 4       ; 003050

    STY digit + 5       ; 003051  @ 2FCD
    INC digit + 5       ; 003052
    INC digit + 5       ; 003053
    INC digit + 5       ; 003054
    INC digit + 5       ; 003055
    INC digit + 5       ; 003056
    INC digit + 5       ; 003057
    INC digit + 5       ; 003058
    INC digit + 5       ; 003059
    STX digit + 5       ; 003050  @ 2FE8
    INC digit + 4       ; 003060

    STY digit + 5       ; 003061  @ 2FEE
    INC digit + 5       ; 003062
    INC digit + 5       ; 003063
    INC digit + 5       ; 003064
    INC digit + 5       ; 003065
    INC digit + 5       ; 003066
    INC digit + 5       ; 003067
    INC digit + 5       ; 003068
    INC digit + 5       ; 003069
    STX digit + 5       ; 003060  @ 3009
    INC digit + 4       ; 003070

    STY digit + 5       ; 003071  @ 300F
    INC digit + 5       ; 003072
    INC digit + 5       ; 003073
    INC digit + 5       ; 003074
    INC digit + 5       ; 003075
    INC digit + 5       ; 003076
    INC digit + 5       ; 003077
    INC digit + 5       ; 003078
    INC digit + 5       ; 003079
    STX digit + 5       ; 003070  @ 302A
    INC digit + 4       ; 003080

    STY digit + 5       ; 003081  @ 3030
    INC digit + 5       ; 003082
    INC digit + 5       ; 003083
    INC digit + 5       ; 003084
    INC digit + 5       ; 003085
    INC digit + 5       ; 003086
    INC digit + 5       ; 003087
    INC digit + 5       ; 003088
    INC digit + 5       ; 003089
    STX digit + 5       ; 003080  @ 304B
    INC digit + 4       ; 003090

    STY digit + 5       ; 003091  @ 3051
    INC digit + 5       ; 003092
    INC digit + 5       ; 003093
    INC digit + 5       ; 003094
    INC digit + 5       ; 003095
    INC digit + 5       ; 003096
    INC digit + 5       ; 003097
    INC digit + 5       ; 003098
    INC digit + 5       ; 003099
    STX digit + 5       ; 003090  @ 306C
    STX digit + 4       ; 003000  @ 306F
    STY digit + 3       ; 003100  @ 3072

    STY digit + 5       ; 003101  @ 3075
    INC digit + 5       ; 003102
    INC digit + 5       ; 003103
    INC digit + 5       ; 003104
    INC digit + 5       ; 003105
    INC digit + 5       ; 003106
    INC digit + 5       ; 003107
    INC digit + 5       ; 003108
    INC digit + 5       ; 003109
    STX digit + 5       ; 003100  @ 3090
    STY digit + 4       ; 003110  @ 3093

    STY digit + 5       ; 003111  @ 3096
    INC digit + 5       ; 003112
    INC digit + 5       ; 003113
    INC digit + 5       ; 003114
    INC digit + 5       ; 003115
    INC digit + 5       ; 003116
    INC digit + 5       ; 003117
    INC digit + 5       ; 003118
    INC digit + 5       ; 003119
    STX digit + 5       ; 003110  @ 30B1
    INC digit + 4       ; 003120

    STY digit + 5       ; 003121  @ 30B7
    INC digit + 5       ; 003122
    INC digit + 5       ; 003123
    INC digit + 5       ; 003124
    INC digit + 5       ; 003125
    INC digit + 5       ; 003126
    INC digit + 5       ; 003127
    INC digit + 5       ; 003128
    INC digit + 5       ; 003129
    STX digit + 5       ; 003120  @ 30D2
    INC digit + 4       ; 003130

    STY digit + 5       ; 003131  @ 30D8
    INC digit + 5       ; 003132
    INC digit + 5       ; 003133
    INC digit + 5       ; 003134
    INC digit + 5       ; 003135
    INC digit + 5       ; 003136
    INC digit + 5       ; 003137
    INC digit + 5       ; 003138
    INC digit + 5       ; 003139
    STX digit + 5       ; 003130  @ 30F3
    INC digit + 4       ; 003140

    STY digit + 5       ; 003141  @ 30F9
    INC digit + 5       ; 003142
    INC digit + 5       ; 003143
    INC digit + 5       ; 003144
    INC digit + 5       ; 003145
    INC digit + 5       ; 003146
    INC digit + 5       ; 003147
    INC digit + 5       ; 003148
    INC digit + 5       ; 003149
    STX digit + 5       ; 003140  @ 3114
    INC digit + 4       ; 003150

    STY digit + 5       ; 003151  @ 311A
    INC digit + 5       ; 003152
    INC digit + 5       ; 003153
    INC digit + 5       ; 003154
    INC digit + 5       ; 003155
    INC digit + 5       ; 003156
    INC digit + 5       ; 003157
    INC digit + 5       ; 003158
    INC digit + 5       ; 003159
    STX digit + 5       ; 003150  @ 3135
    INC digit + 4       ; 003160

    STY digit + 5       ; 003161  @ 313B
    INC digit + 5       ; 003162
    INC digit + 5       ; 003163
    INC digit + 5       ; 003164
    INC digit + 5       ; 003165
    INC digit + 5       ; 003166
    INC digit + 5       ; 003167
    INC digit + 5       ; 003168
    INC digit + 5       ; 003169
    STX digit + 5       ; 003160  @ 3156
    INC digit + 4       ; 003170

    STY digit + 5       ; 003171  @ 315C
    INC digit + 5       ; 003172
    INC digit + 5       ; 003173
    INC digit + 5       ; 003174
    INC digit + 5       ; 003175
    INC digit + 5       ; 003176
    INC digit + 5       ; 003177
    INC digit + 5       ; 003178
    INC digit + 5       ; 003179
    STX digit + 5       ; 003170  @ 3177
    INC digit + 4       ; 003180

    STY digit + 5       ; 003181  @ 317D
    INC digit + 5       ; 003182
    INC digit + 5       ; 003183
    INC digit + 5       ; 003184
    INC digit + 5       ; 003185
    INC digit + 5       ; 003186
    INC digit + 5       ; 003187
    INC digit + 5       ; 003188
    INC digit + 5       ; 003189
    STX digit + 5       ; 003180  @ 3198
    INC digit + 4       ; 003190

    STY digit + 5       ; 003191  @ 319E
    INC digit + 5       ; 003192
    INC digit + 5       ; 003193
    INC digit + 5       ; 003194
    INC digit + 5       ; 003195
    INC digit + 5       ; 003196
    INC digit + 5       ; 003197
    INC digit + 5       ; 003198
    INC digit + 5       ; 003199
    STX digit + 5       ; 003190  @ 31B9
    STX digit + 4       ; 003100  @ 31BC
    INC digit + 3       ; 003200

    STY digit + 5       ; 003201  @ 31C2
    INC digit + 5       ; 003202
    INC digit + 5       ; 003203
    INC digit + 5       ; 003204
    INC digit + 5       ; 003205
    INC digit + 5       ; 003206
    INC digit + 5       ; 003207
    INC digit + 5       ; 003208
    INC digit + 5       ; 003209
    STX digit + 5       ; 003200  @ 31DD
    STY digit + 4       ; 003210  @ 31E0

    STY digit + 5       ; 003211  @ 31E3
    INC digit + 5       ; 003212
    INC digit + 5       ; 003213
    INC digit + 5       ; 003214
    INC digit + 5       ; 003215
    INC digit + 5       ; 003216
    INC digit + 5       ; 003217
    INC digit + 5       ; 003218
    INC digit + 5       ; 003219
    STX digit + 5       ; 003210  @ 31FE
    INC digit + 4       ; 003220

    STY digit + 5       ; 003221  @ 3204
    INC digit + 5       ; 003222
    INC digit + 5       ; 003223
    INC digit + 5       ; 003224
    INC digit + 5       ; 003225
    INC digit + 5       ; 003226
    INC digit + 5       ; 003227
    INC digit + 5       ; 003228
    INC digit + 5       ; 003229
    STX digit + 5       ; 003220  @ 321F
    INC digit + 4       ; 003230

    STY digit + 5       ; 003231  @ 3225
    INC digit + 5       ; 003232
    INC digit + 5       ; 003233
    INC digit + 5       ; 003234
    INC digit + 5       ; 003235
    INC digit + 5       ; 003236
    INC digit + 5       ; 003237
    INC digit + 5       ; 003238
    INC digit + 5       ; 003239
    STX digit + 5       ; 003230  @ 3240
    INC digit + 4       ; 003240

    STY digit + 5       ; 003241  @ 3246
    INC digit + 5       ; 003242
    INC digit + 5       ; 003243
    INC digit + 5       ; 003244
    INC digit + 5       ; 003245
    INC digit + 5       ; 003246
    INC digit + 5       ; 003247
    INC digit + 5       ; 003248
    INC digit + 5       ; 003249
    STX digit + 5       ; 003240  @ 3261
    INC digit + 4       ; 003250

    STY digit + 5       ; 003251  @ 3267
    INC digit + 5       ; 003252
    INC digit + 5       ; 003253
    INC digit + 5       ; 003254
    INC digit + 5       ; 003255
    INC digit + 5       ; 003256
    INC digit + 5       ; 003257
    INC digit + 5       ; 003258
    INC digit + 5       ; 003259
    STX digit + 5       ; 003250  @ 3282
    INC digit + 4       ; 003260

    STY digit + 5       ; 003261  @ 3288
    INC digit + 5       ; 003262
    INC digit + 5       ; 003263
    INC digit + 5       ; 003264
    INC digit + 5       ; 003265
    INC digit + 5       ; 003266
    INC digit + 5       ; 003267
    INC digit + 5       ; 003268
    INC digit + 5       ; 003269
    STX digit + 5       ; 003260  @ 32A3
    INC digit + 4       ; 003270

    STY digit + 5       ; 003271  @ 32A9
    INC digit + 5       ; 003272
    INC digit + 5       ; 003273
    INC digit + 5       ; 003274
    INC digit + 5       ; 003275
    INC digit + 5       ; 003276
    INC digit + 5       ; 003277
    INC digit + 5       ; 003278
    INC digit + 5       ; 003279
    STX digit + 5       ; 003270  @ 32C4
    INC digit + 4       ; 003280

    STY digit + 5       ; 003281  @ 32CA
    INC digit + 5       ; 003282
    INC digit + 5       ; 003283
    INC digit + 5       ; 003284
    INC digit + 5       ; 003285
    INC digit + 5       ; 003286
    INC digit + 5       ; 003287
    INC digit + 5       ; 003288
    INC digit + 5       ; 003289
    STX digit + 5       ; 003280  @ 32E5
    INC digit + 4       ; 003290

    STY digit + 5       ; 003291  @ 32EB
    INC digit + 5       ; 003292
    INC digit + 5       ; 003293
    INC digit + 5       ; 003294
    INC digit + 5       ; 003295
    INC digit + 5       ; 003296
    INC digit + 5       ; 003297
    INC digit + 5       ; 003298
    INC digit + 5       ; 003299
    STX digit + 5       ; 003290  @ 3306
    STX digit + 4       ; 003200  @ 3309
    INC digit + 3       ; 003300

    STY digit + 5       ; 003301  @ 330F
    INC digit + 5       ; 003302
    INC digit + 5       ; 003303
    INC digit + 5       ; 003304
    INC digit + 5       ; 003305
    INC digit + 5       ; 003306
    INC digit + 5       ; 003307
    INC digit + 5       ; 003308
    INC digit + 5       ; 003309
    STX digit + 5       ; 003300  @ 332A
    STY digit + 4       ; 003310  @ 332D

    STY digit + 5       ; 003311  @ 3330
    INC digit + 5       ; 003312
    INC digit + 5       ; 003313
    INC digit + 5       ; 003314
    INC digit + 5       ; 003315
    INC digit + 5       ; 003316
    INC digit + 5       ; 003317
    INC digit + 5       ; 003318
    INC digit + 5       ; 003319
    STX digit + 5       ; 003310  @ 334B
    INC digit + 4       ; 003320

    STY digit + 5       ; 003321  @ 3351
    INC digit + 5       ; 003322
    INC digit + 5       ; 003323
    INC digit + 5       ; 003324
    INC digit + 5       ; 003325
    INC digit + 5       ; 003326
    INC digit + 5       ; 003327
    INC digit + 5       ; 003328
    INC digit + 5       ; 003329
    STX digit + 5       ; 003320  @ 336C
    INC digit + 4       ; 003330

    STY digit + 5       ; 003331  @ 3372
    INC digit + 5       ; 003332
    INC digit + 5       ; 003333
    INC digit + 5       ; 003334
    INC digit + 5       ; 003335
    INC digit + 5       ; 003336
    INC digit + 5       ; 003337
    INC digit + 5       ; 003338
    INC digit + 5       ; 003339
    STX digit + 5       ; 003330  @ 338D
    INC digit + 4       ; 003340

    STY digit + 5       ; 003341  @ 3393
    INC digit + 5       ; 003342
    INC digit + 5       ; 003343
    INC digit + 5       ; 003344
    INC digit + 5       ; 003345
    INC digit + 5       ; 003346
    INC digit + 5       ; 003347
    INC digit + 5       ; 003348
    INC digit + 5       ; 003349
    STX digit + 5       ; 003340  @ 33AE
    INC digit + 4       ; 003350

    STY digit + 5       ; 003351  @ 33B4
    INC digit + 5       ; 003352
    INC digit + 5       ; 003353
    INC digit + 5       ; 003354
    INC digit + 5       ; 003355
    INC digit + 5       ; 003356
    INC digit + 5       ; 003357
    INC digit + 5       ; 003358
    INC digit + 5       ; 003359
    STX digit + 5       ; 003350  @ 33CF
    INC digit + 4       ; 003360

    STY digit + 5       ; 003361  @ 33D5
    INC digit + 5       ; 003362
    INC digit + 5       ; 003363
    INC digit + 5       ; 003364
    INC digit + 5       ; 003365
    INC digit + 5       ; 003366
    INC digit + 5       ; 003367
    INC digit + 5       ; 003368
    INC digit + 5       ; 003369
    STX digit + 5       ; 003360  @ 33F0
    INC digit + 4       ; 003370

    STY digit + 5       ; 003371  @ 33F6
    INC digit + 5       ; 003372
    INC digit + 5       ; 003373
    INC digit + 5       ; 003374
    INC digit + 5       ; 003375
    INC digit + 5       ; 003376
    INC digit + 5       ; 003377
    INC digit + 5       ; 003378
    INC digit + 5       ; 003379
    STX digit + 5       ; 003370  @ 3411
    INC digit + 4       ; 003380

    STY digit + 5       ; 003381  @ 3417
    INC digit + 5       ; 003382
    INC digit + 5       ; 003383
    INC digit + 5       ; 003384
    INC digit + 5       ; 003385
    INC digit + 5       ; 003386
    INC digit + 5       ; 003387
    INC digit + 5       ; 003388
    INC digit + 5       ; 003389
    STX digit + 5       ; 003380  @ 3432
    INC digit + 4       ; 003390

    STY digit + 5       ; 003391  @ 3438
    INC digit + 5       ; 003392
    INC digit + 5       ; 003393
    INC digit + 5       ; 003394
    INC digit + 5       ; 003395
    INC digit + 5       ; 003396
    INC digit + 5       ; 003397
    INC digit + 5       ; 003398
    INC digit + 5       ; 003399
    STX digit + 5       ; 003390  @ 3453
    STX digit + 4       ; 003300  @ 3456
    INC digit + 3       ; 003400

    STY digit + 5       ; 003401  @ 345C
    INC digit + 5       ; 003402
    INC digit + 5       ; 003403
    INC digit + 5       ; 003404
    INC digit + 5       ; 003405
    INC digit + 5       ; 003406
    INC digit + 5       ; 003407
    INC digit + 5       ; 003408
    INC digit + 5       ; 003409
    STX digit + 5       ; 003400  @ 3477
    STY digit + 4       ; 003410  @ 347A

    STY digit + 5       ; 003411  @ 347D
    INC digit + 5       ; 003412
    INC digit + 5       ; 003413
    INC digit + 5       ; 003414
    INC digit + 5       ; 003415
    INC digit + 5       ; 003416
    INC digit + 5       ; 003417
    INC digit + 5       ; 003418
    INC digit + 5       ; 003419
    STX digit + 5       ; 003410  @ 3498
    INC digit + 4       ; 003420

    STY digit + 5       ; 003421  @ 349E
    INC digit + 5       ; 003422
    INC digit + 5       ; 003423
    INC digit + 5       ; 003424
    INC digit + 5       ; 003425
    INC digit + 5       ; 003426
    INC digit + 5       ; 003427
    INC digit + 5       ; 003428
    INC digit + 5       ; 003429
    STX digit + 5       ; 003420  @ 34B9
    INC digit + 4       ; 003430

    STY digit + 5       ; 003431  @ 34BF
    INC digit + 5       ; 003432
    INC digit + 5       ; 003433
    INC digit + 5       ; 003434
    INC digit + 5       ; 003435
    INC digit + 5       ; 003436
    INC digit + 5       ; 003437
    INC digit + 5       ; 003438
    INC digit + 5       ; 003439
    STX digit + 5       ; 003430  @ 34DA
    INC digit + 4       ; 003440

    STY digit + 5       ; 003441  @ 34E0
    INC digit + 5       ; 003442
    INC digit + 5       ; 003443
    INC digit + 5       ; 003444
    INC digit + 5       ; 003445
    INC digit + 5       ; 003446
    INC digit + 5       ; 003447
    INC digit + 5       ; 003448
    INC digit + 5       ; 003449
    STX digit + 5       ; 003440  @ 34FB
    INC digit + 4       ; 003450

    STY digit + 5       ; 003451  @ 3501
    INC digit + 5       ; 003452
    INC digit + 5       ; 003453
    INC digit + 5       ; 003454
    INC digit + 5       ; 003455
    INC digit + 5       ; 003456
    INC digit + 5       ; 003457
    INC digit + 5       ; 003458
    INC digit + 5       ; 003459
    STX digit + 5       ; 003450  @ 351C
    INC digit + 4       ; 003460

    STY digit + 5       ; 003461  @ 3522
    INC digit + 5       ; 003462
    INC digit + 5       ; 003463
    INC digit + 5       ; 003464
    INC digit + 5       ; 003465
    INC digit + 5       ; 003466
    INC digit + 5       ; 003467
    INC digit + 5       ; 003468
    INC digit + 5       ; 003469
    STX digit + 5       ; 003460  @ 353D
    INC digit + 4       ; 003470

    STY digit + 5       ; 003471  @ 3543
    INC digit + 5       ; 003472
    INC digit + 5       ; 003473
    INC digit + 5       ; 003474
    INC digit + 5       ; 003475
    INC digit + 5       ; 003476
    INC digit + 5       ; 003477
    INC digit + 5       ; 003478
    INC digit + 5       ; 003479
    STX digit + 5       ; 003470  @ 355E
    INC digit + 4       ; 003480

    STY digit + 5       ; 003481  @ 3564
    INC digit + 5       ; 003482
    INC digit + 5       ; 003483
    INC digit + 5       ; 003484
    INC digit + 5       ; 003485
    INC digit + 5       ; 003486
    INC digit + 5       ; 003487
    INC digit + 5       ; 003488
    INC digit + 5       ; 003489
    STX digit + 5       ; 003480  @ 357F
    INC digit + 4       ; 003490

    STY digit + 5       ; 003491  @ 3585
    INC digit + 5       ; 003492
    INC digit + 5       ; 003493
    INC digit + 5       ; 003494
    INC digit + 5       ; 003495
    INC digit + 5       ; 003496
    INC digit + 5       ; 003497
    INC digit + 5       ; 003498
    INC digit + 5       ; 003499
    STX digit + 5       ; 003490  @ 35A0
    STX digit + 4       ; 003400  @ 35A3
    INC digit + 3       ; 003500

    STY digit + 5       ; 003501  @ 35A9
    INC digit + 5       ; 003502
    INC digit + 5       ; 003503
    INC digit + 5       ; 003504
    INC digit + 5       ; 003505
    INC digit + 5       ; 003506
    INC digit + 5       ; 003507
    INC digit + 5       ; 003508
    INC digit + 5       ; 003509
    STX digit + 5       ; 003500  @ 35C4
    STY digit + 4       ; 003510  @ 35C7

    STY digit + 5       ; 003511  @ 35CA
    INC digit + 5       ; 003512
    INC digit + 5       ; 003513
    INC digit + 5       ; 003514
    INC digit + 5       ; 003515
    INC digit + 5       ; 003516
    INC digit + 5       ; 003517
    INC digit + 5       ; 003518
    INC digit + 5       ; 003519
    STX digit + 5       ; 003510  @ 35E5
    INC digit + 4       ; 003520

    STY digit + 5       ; 003521  @ 35EB
    INC digit + 5       ; 003522
    INC digit + 5       ; 003523
    INC digit + 5       ; 003524
    INC digit + 5       ; 003525
    INC digit + 5       ; 003526
    INC digit + 5       ; 003527
    INC digit + 5       ; 003528
    INC digit + 5       ; 003529
    STX digit + 5       ; 003520  @ 3606
    INC digit + 4       ; 003530

    STY digit + 5       ; 003531  @ 360C
    INC digit + 5       ; 003532
    INC digit + 5       ; 003533
    INC digit + 5       ; 003534
    INC digit + 5       ; 003535
    INC digit + 5       ; 003536
    INC digit + 5       ; 003537
    INC digit + 5       ; 003538
    INC digit + 5       ; 003539
    STX digit + 5       ; 003530  @ 3627
    INC digit + 4       ; 003540

    STY digit + 5       ; 003541  @ 362D
    INC digit + 5       ; 003542
    INC digit + 5       ; 003543
    INC digit + 5       ; 003544
    INC digit + 5       ; 003545
    INC digit + 5       ; 003546
    INC digit + 5       ; 003547
    INC digit + 5       ; 003548
    INC digit + 5       ; 003549
    STX digit + 5       ; 003540  @ 3648
    INC digit + 4       ; 003550

    STY digit + 5       ; 003551  @ 364E
    INC digit + 5       ; 003552
    INC digit + 5       ; 003553
    INC digit + 5       ; 003554
    INC digit + 5       ; 003555
    INC digit + 5       ; 003556
    INC digit + 5       ; 003557
    INC digit + 5       ; 003558
    INC digit + 5       ; 003559
    STX digit + 5       ; 003550  @ 3669
    INC digit + 4       ; 003560

    STY digit + 5       ; 003561  @ 366F
    INC digit + 5       ; 003562
    INC digit + 5       ; 003563
    INC digit + 5       ; 003564
    INC digit + 5       ; 003565
    INC digit + 5       ; 003566
    INC digit + 5       ; 003567
    INC digit + 5       ; 003568
    INC digit + 5       ; 003569
    STX digit + 5       ; 003560  @ 368A
    INC digit + 4       ; 003570

    STY digit + 5       ; 003571  @ 3690
    INC digit + 5       ; 003572
    INC digit + 5       ; 003573
    INC digit + 5       ; 003574
    INC digit + 5       ; 003575
    INC digit + 5       ; 003576
    INC digit + 5       ; 003577
    INC digit + 5       ; 003578
    INC digit + 5       ; 003579
    STX digit + 5       ; 003570  @ 36AB
    INC digit + 4       ; 003580

    STY digit + 5       ; 003581  @ 36B1
    INC digit + 5       ; 003582
    INC digit + 5       ; 003583
    INC digit + 5       ; 003584
    INC digit + 5       ; 003585
    INC digit + 5       ; 003586
    INC digit + 5       ; 003587
    INC digit + 5       ; 003588
    INC digit + 5       ; 003589
    STX digit + 5       ; 003580  @ 36CC
    INC digit + 4       ; 003590

    STY digit + 5       ; 003591  @ 36D2
    INC digit + 5       ; 003592
    INC digit + 5       ; 003593
    INC digit + 5       ; 003594
    INC digit + 5       ; 003595
    INC digit + 5       ; 003596
    INC digit + 5       ; 003597
    INC digit + 5       ; 003598
    INC digit + 5       ; 003599
    STX digit + 5       ; 003590  @ 36ED
    STX digit + 4       ; 003500  @ 36F0
    INC digit + 3       ; 003600

    STY digit + 5       ; 003601  @ 36F6
    INC digit + 5       ; 003602
    INC digit + 5       ; 003603
    INC digit + 5       ; 003604
    INC digit + 5       ; 003605
    INC digit + 5       ; 003606
    INC digit + 5       ; 003607
    INC digit + 5       ; 003608
    INC digit + 5       ; 003609
    STX digit + 5       ; 003600  @ 3711
    STY digit + 4       ; 003610  @ 3714

    STY digit + 5       ; 003611  @ 3717
    INC digit + 5       ; 003612
    INC digit + 5       ; 003613
    INC digit + 5       ; 003614
    INC digit + 5       ; 003615
    INC digit + 5       ; 003616
    INC digit + 5       ; 003617
    INC digit + 5       ; 003618
    INC digit + 5       ; 003619
    STX digit + 5       ; 003610  @ 3732
    INC digit + 4       ; 003620

    STY digit + 5       ; 003621  @ 3738
    INC digit + 5       ; 003622
    INC digit + 5       ; 003623
    INC digit + 5       ; 003624
    INC digit + 5       ; 003625
    INC digit + 5       ; 003626
    INC digit + 5       ; 003627
    INC digit + 5       ; 003628
    INC digit + 5       ; 003629
    STX digit + 5       ; 003620  @ 3753
    INC digit + 4       ; 003630

    STY digit + 5       ; 003631  @ 3759
    INC digit + 5       ; 003632
    INC digit + 5       ; 003633
    INC digit + 5       ; 003634
    INC digit + 5       ; 003635
    INC digit + 5       ; 003636
    INC digit + 5       ; 003637
    INC digit + 5       ; 003638
    INC digit + 5       ; 003639
    STX digit + 5       ; 003630  @ 3774
    INC digit + 4       ; 003640

    STY digit + 5       ; 003641  @ 377A
    INC digit + 5       ; 003642
    INC digit + 5       ; 003643
    INC digit + 5       ; 003644
    INC digit + 5       ; 003645
    INC digit + 5       ; 003646
    INC digit + 5       ; 003647
    INC digit + 5       ; 003648
    INC digit + 5       ; 003649
    STX digit + 5       ; 003640  @ 3795
    INC digit + 4       ; 003650

    STY digit + 5       ; 003651  @ 379B
    INC digit + 5       ; 003652
    INC digit + 5       ; 003653
    INC digit + 5       ; 003654
    INC digit + 5       ; 003655
    INC digit + 5       ; 003656
    INC digit + 5       ; 003657
    INC digit + 5       ; 003658
    INC digit + 5       ; 003659
    STX digit + 5       ; 003650  @ 37B6
    INC digit + 4       ; 003660

    STY digit + 5       ; 003661  @ 37BC
    INC digit + 5       ; 003662
    INC digit + 5       ; 003663
    INC digit + 5       ; 003664
    INC digit + 5       ; 003665
    INC digit + 5       ; 003666
    INC digit + 5       ; 003667
    INC digit + 5       ; 003668
    INC digit + 5       ; 003669
    STX digit + 5       ; 003660  @ 37D7
    INC digit + 4       ; 003670

    STY digit + 5       ; 003671  @ 37DD
    INC digit + 5       ; 003672
    INC digit + 5       ; 003673
    INC digit + 5       ; 003674
    INC digit + 5       ; 003675
    INC digit + 5       ; 003676
    INC digit + 5       ; 003677
    INC digit + 5       ; 003678
    INC digit + 5       ; 003679
    STX digit + 5       ; 003670  @ 37F8
    INC digit + 4       ; 003680

    STY digit + 5       ; 003681  @ 37FE
    INC digit + 5       ; 003682
    INC digit + 5       ; 003683
    INC digit + 5       ; 003684
    INC digit + 5       ; 003685
    INC digit + 5       ; 003686
    INC digit + 5       ; 003687
    INC digit + 5       ; 003688
    INC digit + 5       ; 003689
    STX digit + 5       ; 003680  @ 3819
    INC digit + 4       ; 003690

    STY digit + 5       ; 003691  @ 381F
    INC digit + 5       ; 003692
    INC digit + 5       ; 003693
    INC digit + 5       ; 003694
    INC digit + 5       ; 003695
    INC digit + 5       ; 003696
    INC digit + 5       ; 003697
    INC digit + 5       ; 003698
    INC digit + 5       ; 003699
    STX digit + 5       ; 003690  @ 383A
    STX digit + 4       ; 003600  @ 383D
    INC digit + 3       ; 003700

    STY digit + 5       ; 003701  @ 3843
    INC digit + 5       ; 003702
    INC digit + 5       ; 003703
    INC digit + 5       ; 003704
    INC digit + 5       ; 003705
    INC digit + 5       ; 003706
    INC digit + 5       ; 003707
    INC digit + 5       ; 003708
    INC digit + 5       ; 003709
    STX digit + 5       ; 003700  @ 385E
    STY digit + 4       ; 003710  @ 3861

    STY digit + 5       ; 003711  @ 3864
    INC digit + 5       ; 003712
    INC digit + 5       ; 003713
    INC digit + 5       ; 003714
    INC digit + 5       ; 003715
    INC digit + 5       ; 003716
    INC digit + 5       ; 003717
    INC digit + 5       ; 003718
    INC digit + 5       ; 003719
    STX digit + 5       ; 003710  @ 387F
    INC digit + 4       ; 003720

    STY digit + 5       ; 003721  @ 3885
    INC digit + 5       ; 003722
    INC digit + 5       ; 003723
    INC digit + 5       ; 003724
    INC digit + 5       ; 003725
    INC digit + 5       ; 003726
    INC digit + 5       ; 003727
    INC digit + 5       ; 003728
    INC digit + 5       ; 003729
    STX digit + 5       ; 003720  @ 38A0
    INC digit + 4       ; 003730

    STY digit + 5       ; 003731  @ 38A6
    INC digit + 5       ; 003732
    INC digit + 5       ; 003733
    INC digit + 5       ; 003734
    INC digit + 5       ; 003735
    INC digit + 5       ; 003736
    INC digit + 5       ; 003737
    INC digit + 5       ; 003738
    INC digit + 5       ; 003739
    STX digit + 5       ; 003730  @ 38C1
    INC digit + 4       ; 003740

    STY digit + 5       ; 003741  @ 38C7
    INC digit + 5       ; 003742
    INC digit + 5       ; 003743
    INC digit + 5       ; 003744
    INC digit + 5       ; 003745
    INC digit + 5       ; 003746
    INC digit + 5       ; 003747
    INC digit + 5       ; 003748
    INC digit + 5       ; 003749
    STX digit + 5       ; 003740  @ 38E2
    INC digit + 4       ; 003750

    STY digit + 5       ; 003751  @ 38E8
    INC digit + 5       ; 003752
    INC digit + 5       ; 003753
    INC digit + 5       ; 003754
    INC digit + 5       ; 003755
    INC digit + 5       ; 003756
    INC digit + 5       ; 003757
    INC digit + 5       ; 003758
    INC digit + 5       ; 003759
    STX digit + 5       ; 003750  @ 3903
    INC digit + 4       ; 003760

    STY digit + 5       ; 003761  @ 3909
    INC digit + 5       ; 003762
    INC digit + 5       ; 003763
    INC digit + 5       ; 003764
    INC digit + 5       ; 003765
    INC digit + 5       ; 003766
    INC digit + 5       ; 003767
    INC digit + 5       ; 003768
    INC digit + 5       ; 003769
    STX digit + 5       ; 003760  @ 3924
    INC digit + 4       ; 003770

    STY digit + 5       ; 003771  @ 392A
    INC digit + 5       ; 003772
    INC digit + 5       ; 003773
    INC digit + 5       ; 003774
    INC digit + 5       ; 003775
    INC digit + 5       ; 003776
    INC digit + 5       ; 003777
    INC digit + 5       ; 003778
    INC digit + 5       ; 003779
    STX digit + 5       ; 003770  @ 3945
    INC digit + 4       ; 003780

    STY digit + 5       ; 003781  @ 394B
    INC digit + 5       ; 003782
    INC digit + 5       ; 003783
    INC digit + 5       ; 003784
    INC digit + 5       ; 003785
    INC digit + 5       ; 003786
    INC digit + 5       ; 003787
    INC digit + 5       ; 003788
    INC digit + 5       ; 003789
    STX digit + 5       ; 003780  @ 3966
    INC digit + 4       ; 003790

    STY digit + 5       ; 003791  @ 396C
    INC digit + 5       ; 003792
    INC digit + 5       ; 003793
    INC digit + 5       ; 003794
    INC digit + 5       ; 003795
    INC digit + 5       ; 003796
    INC digit + 5       ; 003797
    INC digit + 5       ; 003798
    INC digit + 5       ; 003799
    STX digit + 5       ; 003790  @ 3987
    STX digit + 4       ; 003700  @ 398A
    INC digit + 3       ; 003800

    STY digit + 5       ; 003801  @ 3990
    INC digit + 5       ; 003802
    INC digit + 5       ; 003803
    INC digit + 5       ; 003804
    INC digit + 5       ; 003805
    INC digit + 5       ; 003806
    INC digit + 5       ; 003807
    INC digit + 5       ; 003808
    INC digit + 5       ; 003809
    STX digit + 5       ; 003800  @ 39AB
    STY digit + 4       ; 003810  @ 39AE

    STY digit + 5       ; 003811  @ 39B1
    INC digit + 5       ; 003812
    INC digit + 5       ; 003813
    INC digit + 5       ; 003814
    INC digit + 5       ; 003815
    INC digit + 5       ; 003816
    INC digit + 5       ; 003817
    INC digit + 5       ; 003818
    INC digit + 5       ; 003819
    STX digit + 5       ; 003810  @ 39CC
    INC digit + 4       ; 003820

    STY digit + 5       ; 003821  @ 39D2
    INC digit + 5       ; 003822
    INC digit + 5       ; 003823
    INC digit + 5       ; 003824
    INC digit + 5       ; 003825
    INC digit + 5       ; 003826
    INC digit + 5       ; 003827
    INC digit + 5       ; 003828
    INC digit + 5       ; 003829
    STX digit + 5       ; 003820  @ 39ED
    INC digit + 4       ; 003830

    STY digit + 5       ; 003831  @ 39F3
    INC digit + 5       ; 003832
    INC digit + 5       ; 003833
    INC digit + 5       ; 003834
    INC digit + 5       ; 003835
    INC digit + 5       ; 003836
    INC digit + 5       ; 003837
    INC digit + 5       ; 003838
    INC digit + 5       ; 003839
    STX digit + 5       ; 003830  @ 3A0E
    INC digit + 4       ; 003840

    STY digit + 5       ; 003841  @ 3A14
    INC digit + 5       ; 003842
    INC digit + 5       ; 003843
    INC digit + 5       ; 003844
    INC digit + 5       ; 003845
    INC digit + 5       ; 003846
    INC digit + 5       ; 003847
    INC digit + 5       ; 003848
    INC digit + 5       ; 003849
    STX digit + 5       ; 003840  @ 3A2F
    INC digit + 4       ; 003850

    STY digit + 5       ; 003851  @ 3A35
    INC digit + 5       ; 003852
    INC digit + 5       ; 003853
    INC digit + 5       ; 003854
    INC digit + 5       ; 003855
    INC digit + 5       ; 003856
    INC digit + 5       ; 003857
    INC digit + 5       ; 003858
    INC digit + 5       ; 003859
    STX digit + 5       ; 003850  @ 3A50
    INC digit + 4       ; 003860

    STY digit + 5       ; 003861  @ 3A56
    INC digit + 5       ; 003862
    INC digit + 5       ; 003863
    INC digit + 5       ; 003864
    INC digit + 5       ; 003865
    INC digit + 5       ; 003866
    INC digit + 5       ; 003867
    INC digit + 5       ; 003868
    INC digit + 5       ; 003869
    STX digit + 5       ; 003860  @ 3A71
    INC digit + 4       ; 003870

    STY digit + 5       ; 003871  @ 3A77
    INC digit + 5       ; 003872
    INC digit + 5       ; 003873
    INC digit + 5       ; 003874
    INC digit + 5       ; 003875
    INC digit + 5       ; 003876
    INC digit + 5       ; 003877
    INC digit + 5       ; 003878
    INC digit + 5       ; 003879
    STX digit + 5       ; 003870  @ 3A92
    INC digit + 4       ; 003880

    STY digit + 5       ; 003881  @ 3A98
    INC digit + 5       ; 003882
    INC digit + 5       ; 003883
    INC digit + 5       ; 003884
    INC digit + 5       ; 003885
    INC digit + 5       ; 003886
    INC digit + 5       ; 003887
    INC digit + 5       ; 003888
    INC digit + 5       ; 003889
    STX digit + 5       ; 003880  @ 3AB3
    INC digit + 4       ; 003890

    STY digit + 5       ; 003891  @ 3AB9
    INC digit + 5       ; 003892
    INC digit + 5       ; 003893
    INC digit + 5       ; 003894
    INC digit + 5       ; 003895
    INC digit + 5       ; 003896
    INC digit + 5       ; 003897
    INC digit + 5       ; 003898
    INC digit + 5       ; 003899
    STX digit + 5       ; 003890  @ 3AD4
    STX digit + 4       ; 003800  @ 3AD7
    INC digit + 3       ; 003900

    STY digit + 5       ; 003901  @ 3ADD
    INC digit + 5       ; 003902
    INC digit + 5       ; 003903
    INC digit + 5       ; 003904
    INC digit + 5       ; 003905
    INC digit + 5       ; 003906
    INC digit + 5       ; 003907
    INC digit + 5       ; 003908
    INC digit + 5       ; 003909
    STX digit + 5       ; 003900  @ 3AF8
    STY digit + 4       ; 003910  @ 3AFB

    STY digit + 5       ; 003911  @ 3AFE
    INC digit + 5       ; 003912
    INC digit + 5       ; 003913
    INC digit + 5       ; 003914
    INC digit + 5       ; 003915
    INC digit + 5       ; 003916
    INC digit + 5       ; 003917
    INC digit + 5       ; 003918
    INC digit + 5       ; 003919
    STX digit + 5       ; 003910  @ 3B19
    INC digit + 4       ; 003920

    STY digit + 5       ; 003921  @ 3B1F
    INC digit + 5       ; 003922
    INC digit + 5       ; 003923
    INC digit + 5       ; 003924
    INC digit + 5       ; 003925
    INC digit + 5       ; 003926
    INC digit + 5       ; 003927
    INC digit + 5       ; 003928
    INC digit + 5       ; 003929
    STX digit + 5       ; 003920  @ 3B3A
    INC digit + 4       ; 003930

    STY digit + 5       ; 003931  @ 3B40
    INC digit + 5       ; 003932
    INC digit + 5       ; 003933
    INC digit + 5       ; 003934
    INC digit + 5       ; 003935
    INC digit + 5       ; 003936
    INC digit + 5       ; 003937
    INC digit + 5       ; 003938
    INC digit + 5       ; 003939
    STX digit + 5       ; 003930  @ 3B5B
    INC digit + 4       ; 003940

    STY digit + 5       ; 003941  @ 3B61
    INC digit + 5       ; 003942
    INC digit + 5       ; 003943
    INC digit + 5       ; 003944
    INC digit + 5       ; 003945
    INC digit + 5       ; 003946
    INC digit + 5       ; 003947
    INC digit + 5       ; 003948
    INC digit + 5       ; 003949
    STX digit + 5       ; 003940  @ 3B7C
    INC digit + 4       ; 003950

    STY digit + 5       ; 003951  @ 3B82
    INC digit + 5       ; 003952
    INC digit + 5       ; 003953
    INC digit + 5       ; 003954
    INC digit + 5       ; 003955
    INC digit + 5       ; 003956
    INC digit + 5       ; 003957
    INC digit + 5       ; 003958
    INC digit + 5       ; 003959
    STX digit + 5       ; 003950  @ 3B9D
    INC digit + 4       ; 003960

    STY digit + 5       ; 003961  @ 3BA3
    INC digit + 5       ; 003962
    INC digit + 5       ; 003963
    INC digit + 5       ; 003964
    INC digit + 5       ; 003965
    INC digit + 5       ; 003966
    INC digit + 5       ; 003967
    INC digit + 5       ; 003968
    INC digit + 5       ; 003969
    STX digit + 5       ; 003960  @ 3BBE
    INC digit + 4       ; 003970

    STY digit + 5       ; 003971  @ 3BC4
    INC digit + 5       ; 003972
    INC digit + 5       ; 003973
    INC digit + 5       ; 003974
    INC digit + 5       ; 003975
    INC digit + 5       ; 003976
    INC digit + 5       ; 003977
    INC digit + 5       ; 003978
    INC digit + 5       ; 003979
    STX digit + 5       ; 003970  @ 3BDF
    INC digit + 4       ; 003980

    STY digit + 5       ; 003981  @ 3BE5
    INC digit + 5       ; 003982
    INC digit + 5       ; 003983
    INC digit + 5       ; 003984
    INC digit + 5       ; 003985
    INC digit + 5       ; 003986
    INC digit + 5       ; 003987
    INC digit + 5       ; 003988
    INC digit + 5       ; 003989
    STX digit + 5       ; 003980  @ 3C00
    INC digit + 4       ; 003990

    STY digit + 5       ; 003991  @ 3C06
    INC digit + 5       ; 003992
    INC digit + 5       ; 003993
    INC digit + 5       ; 003994
    INC digit + 5       ; 003995
    INC digit + 5       ; 003996
    INC digit + 5       ; 003997
    INC digit + 5       ; 003998
    INC digit + 5       ; 003999
    STX digit + 5       ; 003990  @ 3C21
    STX digit + 4       ; 003900  @ 3C24
    STX digit + 3       ; 003000  @ 3C27
    INC digit + 2       ; 004000

    STY digit + 5       ; 004001  @ 3C2D
    INC digit + 5       ; 004002
    INC digit + 5       ; 004003
    INC digit + 5       ; 004004
    INC digit + 5       ; 004005
    INC digit + 5       ; 004006
    INC digit + 5       ; 004007
    INC digit + 5       ; 004008
    INC digit + 5       ; 004009
    STX digit + 5       ; 004000  @ 3C48
    STY digit + 4       ; 004010  @ 3C4B

    STY digit + 5       ; 004011  @ 3C4E
    INC digit + 5       ; 004012
    INC digit + 5       ; 004013
    INC digit + 5       ; 004014
    INC digit + 5       ; 004015
    INC digit + 5       ; 004016
    INC digit + 5       ; 004017
    INC digit + 5       ; 004018
    INC digit + 5       ; 004019
    STX digit + 5       ; 004010  @ 3C69
    INC digit + 4       ; 004020

    STY digit + 5       ; 004021  @ 3C6F
    INC digit + 5       ; 004022
    INC digit + 5       ; 004023
    INC digit + 5       ; 004024
    INC digit + 5       ; 004025
    INC digit + 5       ; 004026
    INC digit + 5       ; 004027
    INC digit + 5       ; 004028
    INC digit + 5       ; 004029
    STX digit + 5       ; 004020  @ 3C8A
    INC digit + 4       ; 004030

    STY digit + 5       ; 004031  @ 3C90
    INC digit + 5       ; 004032
    INC digit + 5       ; 004033
    INC digit + 5       ; 004034
    INC digit + 5       ; 004035
    INC digit + 5       ; 004036
    INC digit + 5       ; 004037
    INC digit + 5       ; 004038
    INC digit + 5       ; 004039
    STX digit + 5       ; 004030  @ 3CAB
    INC digit + 4       ; 004040

    STY digit + 5       ; 004041  @ 3CB1
    INC digit + 5       ; 004042
    INC digit + 5       ; 004043
    INC digit + 5       ; 004044
    INC digit + 5       ; 004045
    INC digit + 5       ; 004046
    INC digit + 5       ; 004047
    INC digit + 5       ; 004048
    INC digit + 5       ; 004049
    STX digit + 5       ; 004040  @ 3CCC
    INC digit + 4       ; 004050

    STY digit + 5       ; 004051  @ 3CD2
    INC digit + 5       ; 004052
    INC digit + 5       ; 004053
    INC digit + 5       ; 004054
    INC digit + 5       ; 004055
    INC digit + 5       ; 004056
    INC digit + 5       ; 004057
    INC digit + 5       ; 004058
    INC digit + 5       ; 004059
    STX digit + 5       ; 004050  @ 3CED
    INC digit + 4       ; 004060

    STY digit + 5       ; 004061  @ 3CF3
    INC digit + 5       ; 004062
    INC digit + 5       ; 004063
    INC digit + 5       ; 004064
    INC digit + 5       ; 004065
    INC digit + 5       ; 004066
    INC digit + 5       ; 004067
    INC digit + 5       ; 004068
    INC digit + 5       ; 004069
    STX digit + 5       ; 004060  @ 3D0E
    INC digit + 4       ; 004070

    STY digit + 5       ; 004071  @ 3D14
    INC digit + 5       ; 004072
    INC digit + 5       ; 004073
    INC digit + 5       ; 004074
    INC digit + 5       ; 004075
    INC digit + 5       ; 004076
    INC digit + 5       ; 004077
    INC digit + 5       ; 004078
    INC digit + 5       ; 004079
    STX digit + 5       ; 004070  @ 3D2F
    INC digit + 4       ; 004080

    STY digit + 5       ; 004081  @ 3D35
    INC digit + 5       ; 004082
    INC digit + 5       ; 004083
    INC digit + 5       ; 004084
    INC digit + 5       ; 004085
    INC digit + 5       ; 004086
    INC digit + 5       ; 004087
    INC digit + 5       ; 004088
    INC digit + 5       ; 004089
    STX digit + 5       ; 004080  @ 3D50
    INC digit + 4       ; 004090

    STY digit + 5       ; 004091  @ 3D56
    INC digit + 5       ; 004092
    INC digit + 5       ; 004093
    INC digit + 5       ; 004094
    INC digit + 5       ; 004095
    INC digit + 5       ; 004096
    INC digit + 5       ; 004097
    INC digit + 5       ; 004098
    INC digit + 5       ; 004099
    STX digit + 5       ; 004090  @ 3D71
    STX digit + 4       ; 004000  @ 3D74
    STY digit + 3       ; 004100  @ 3D77

    STY digit + 5       ; 004101  @ 3D7A
    INC digit + 5       ; 004102
    INC digit + 5       ; 004103
    INC digit + 5       ; 004104
    INC digit + 5       ; 004105
    INC digit + 5       ; 004106
    INC digit + 5       ; 004107
    INC digit + 5       ; 004108
    INC digit + 5       ; 004109
    STX digit + 5       ; 004100  @ 3D95
    STY digit + 4       ; 004110  @ 3D98

    STY digit + 5       ; 004111  @ 3D9B
    INC digit + 5       ; 004112
    INC digit + 5       ; 004113
    INC digit + 5       ; 004114
    INC digit + 5       ; 004115
    INC digit + 5       ; 004116
    INC digit + 5       ; 004117
    INC digit + 5       ; 004118
    INC digit + 5       ; 004119
    STX digit + 5       ; 004110  @ 3DB6
    INC digit + 4       ; 004120

    STY digit + 5       ; 004121  @ 3DBC
    INC digit + 5       ; 004122
    INC digit + 5       ; 004123
    INC digit + 5       ; 004124
    INC digit + 5       ; 004125
    INC digit + 5       ; 004126
    INC digit + 5       ; 004127
    INC digit + 5       ; 004128
    INC digit + 5       ; 004129
    STX digit + 5       ; 004120  @ 3DD7
    INC digit + 4       ; 004130

    STY digit + 5       ; 004131  @ 3DDD
    INC digit + 5       ; 004132
    INC digit + 5       ; 004133
    INC digit + 5       ; 004134
    INC digit + 5       ; 004135
    INC digit + 5       ; 004136
    INC digit + 5       ; 004137
    INC digit + 5       ; 004138
    INC digit + 5       ; 004139
    STX digit + 5       ; 004130  @ 3DF8
    INC digit + 4       ; 004140

    STY digit + 5       ; 004141  @ 3DFE
    INC digit + 5       ; 004142
    INC digit + 5       ; 004143
    INC digit + 5       ; 004144
    INC digit + 5       ; 004145
    INC digit + 5       ; 004146
    INC digit + 5       ; 004147
    INC digit + 5       ; 004148
    INC digit + 5       ; 004149
    STX digit + 5       ; 004140  @ 3E19
    INC digit + 4       ; 004150

    STY digit + 5       ; 004151  @ 3E1F
    INC digit + 5       ; 004152
    INC digit + 5       ; 004153
    INC digit + 5       ; 004154
    INC digit + 5       ; 004155
    INC digit + 5       ; 004156
    INC digit + 5       ; 004157
    INC digit + 5       ; 004158
    INC digit + 5       ; 004159
    STX digit + 5       ; 004150  @ 3E3A
    INC digit + 4       ; 004160

    STY digit + 5       ; 004161  @ 3E40
    INC digit + 5       ; 004162
    INC digit + 5       ; 004163
    INC digit + 5       ; 004164
    INC digit + 5       ; 004165
    INC digit + 5       ; 004166
    INC digit + 5       ; 004167
    INC digit + 5       ; 004168
    INC digit + 5       ; 004169
    STX digit + 5       ; 004160  @ 3E5B
    INC digit + 4       ; 004170

    STY digit + 5       ; 004171  @ 3E61
    INC digit + 5       ; 004172
    INC digit + 5       ; 004173
    INC digit + 5       ; 004174
    INC digit + 5       ; 004175
    INC digit + 5       ; 004176
    INC digit + 5       ; 004177
    INC digit + 5       ; 004178
    INC digit + 5       ; 004179
    STX digit + 5       ; 004170  @ 3E7C
    INC digit + 4       ; 004180

    STY digit + 5       ; 004181  @ 3E82
    INC digit + 5       ; 004182
    INC digit + 5       ; 004183
    INC digit + 5       ; 004184
    INC digit + 5       ; 004185
    INC digit + 5       ; 004186
    INC digit + 5       ; 004187
    INC digit + 5       ; 004188
    INC digit + 5       ; 004189
    STX digit + 5       ; 004180  @ 3E9D
    INC digit + 4       ; 004190

    STY digit + 5       ; 004191  @ 3EA3
    INC digit + 5       ; 004192
    INC digit + 5       ; 004193
    INC digit + 5       ; 004194
    INC digit + 5       ; 004195
    INC digit + 5       ; 004196
    INC digit + 5       ; 004197
    INC digit + 5       ; 004198
    INC digit + 5       ; 004199
    STX digit + 5       ; 004190  @ 3EBE
    STX digit + 4       ; 004100  @ 3EC1
    INC digit + 3       ; 004200

    STY digit + 5       ; 004201  @ 3EC7
    INC digit + 5       ; 004202
    INC digit + 5       ; 004203
    INC digit + 5       ; 004204
    INC digit + 5       ; 004205
    INC digit + 5       ; 004206
    INC digit + 5       ; 004207
    INC digit + 5       ; 004208
    INC digit + 5       ; 004209
    STX digit + 5       ; 004200  @ 3EE2
    STY digit + 4       ; 004210  @ 3EE5

    STY digit + 5       ; 004211  @ 3EE8
    INC digit + 5       ; 004212
    INC digit + 5       ; 004213
    INC digit + 5       ; 004214
    INC digit + 5       ; 004215
    INC digit + 5       ; 004216
    INC digit + 5       ; 004217
    INC digit + 5       ; 004218
    INC digit + 5       ; 004219
    STX digit + 5       ; 004210  @ 3F03
    INC digit + 4       ; 004220

    STY digit + 5       ; 004221  @ 3F09
    INC digit + 5       ; 004222
    INC digit + 5       ; 004223
    INC digit + 5       ; 004224
    INC digit + 5       ; 004225
    INC digit + 5       ; 004226
    INC digit + 5       ; 004227
    INC digit + 5       ; 004228
    INC digit + 5       ; 004229
    STX digit + 5       ; 004220  @ 3F24
    INC digit + 4       ; 004230

    STY digit + 5       ; 004231  @ 3F2A
    INC digit + 5       ; 004232
    INC digit + 5       ; 004233
    INC digit + 5       ; 004234
    INC digit + 5       ; 004235
    INC digit + 5       ; 004236
    INC digit + 5       ; 004237
    INC digit + 5       ; 004238
    INC digit + 5       ; 004239
    STX digit + 5       ; 004230  @ 3F45
    INC digit + 4       ; 004240

    STY digit + 5       ; 004241  @ 3F4B
    INC digit + 5       ; 004242
    INC digit + 5       ; 004243
    INC digit + 5       ; 004244
    INC digit + 5       ; 004245
    INC digit + 5       ; 004246
    INC digit + 5       ; 004247
    INC digit + 5       ; 004248
    INC digit + 5       ; 004249
    STX digit + 5       ; 004240  @ 3F66
    INC digit + 4       ; 004250

    STY digit + 5       ; 004251  @ 3F6C
    INC digit + 5       ; 004252
    INC digit + 5       ; 004253
    INC digit + 5       ; 004254
    INC digit + 5       ; 004255
    INC digit + 5       ; 004256
    INC digit + 5       ; 004257
    INC digit + 5       ; 004258
    INC digit + 5       ; 004259
    STX digit + 5       ; 004250  @ 3F87
    INC digit + 4       ; 004260

    STY digit + 5       ; 004261  @ 3F8D
    INC digit + 5       ; 004262
    INC digit + 5       ; 004263
    INC digit + 5       ; 004264
    INC digit + 5       ; 004265
    INC digit + 5       ; 004266
    INC digit + 5       ; 004267
    INC digit + 5       ; 004268
    INC digit + 5       ; 004269
    STX digit + 5       ; 004260  @ 3FA8
    INC digit + 4       ; 004270

    STY digit + 5       ; 004271  @ 3FAE
    INC digit + 5       ; 004272
    INC digit + 5       ; 004273
    INC digit + 5       ; 004274
    INC digit + 5       ; 004275
    INC digit + 5       ; 004276
    INC digit + 5       ; 004277
    INC digit + 5       ; 004278
    INC digit + 5       ; 004279
    STX digit + 5       ; 004270  @ 3FC9
    INC digit + 4       ; 004280

    STY digit + 5       ; 004281  @ 3FCF
    INC digit + 5       ; 004282
    INC digit + 5       ; 004283
    INC digit + 5       ; 004284
    INC digit + 5       ; 004285
    INC digit + 5       ; 004286
    INC digit + 5       ; 004287
    INC digit + 5       ; 004288
    INC digit + 5       ; 004289
    STX digit + 5       ; 004280  @ 3FEA
    INC digit + 4       ; 004290

    STY digit + 5       ; 004291  @ 3FF0
    INC digit + 5       ; 004292
    INC digit + 5       ; 004293
    INC digit + 5       ; 004294
    INC digit + 5       ; 004295
    INC digit + 5       ; 004296
    INC digit + 5       ; 004297
    INC digit + 5       ; 004298
    INC digit + 5       ; 004299
    STX digit + 5       ; 004290  @ 400B
    STX digit + 4       ; 004200  @ 400E
    INC digit + 3       ; 004300

    STY digit + 5       ; 004301  @ 4014
    INC digit + 5       ; 004302
    INC digit + 5       ; 004303
    INC digit + 5       ; 004304
    INC digit + 5       ; 004305
    INC digit + 5       ; 004306
    INC digit + 5       ; 004307
    INC digit + 5       ; 004308
    INC digit + 5       ; 004309
    STX digit + 5       ; 004300  @ 402F
    STY digit + 4       ; 004310  @ 4032

    STY digit + 5       ; 004311  @ 4035
    INC digit + 5       ; 004312
    INC digit + 5       ; 004313
    INC digit + 5       ; 004314
    INC digit + 5       ; 004315
    INC digit + 5       ; 004316
    INC digit + 5       ; 004317
    INC digit + 5       ; 004318
    INC digit + 5       ; 004319
    STX digit + 5       ; 004310  @ 4050
    INC digit + 4       ; 004320

    STY digit + 5       ; 004321  @ 4056
    INC digit + 5       ; 004322
    INC digit + 5       ; 004323
    INC digit + 5       ; 004324
    INC digit + 5       ; 004325
    INC digit + 5       ; 004326
    INC digit + 5       ; 004327
    INC digit + 5       ; 004328
    INC digit + 5       ; 004329
    STX digit + 5       ; 004320  @ 4071
    INC digit + 4       ; 004330

    STY digit + 5       ; 004331  @ 4077
    INC digit + 5       ; 004332
    INC digit + 5       ; 004333
    INC digit + 5       ; 004334
    INC digit + 5       ; 004335
    INC digit + 5       ; 004336
    INC digit + 5       ; 004337
    INC digit + 5       ; 004338
    INC digit + 5       ; 004339
    STX digit + 5       ; 004330  @ 4092
    INC digit + 4       ; 004340

    STY digit + 5       ; 004341  @ 4098
    INC digit + 5       ; 004342
    INC digit + 5       ; 004343
    INC digit + 5       ; 004344
    INC digit + 5       ; 004345
    INC digit + 5       ; 004346
    INC digit + 5       ; 004347
    INC digit + 5       ; 004348
    INC digit + 5       ; 004349
    STX digit + 5       ; 004340  @ 40B3
    INC digit + 4       ; 004350

    STY digit + 5       ; 004351  @ 40B9
    INC digit + 5       ; 004352
    INC digit + 5       ; 004353
    INC digit + 5       ; 004354
    INC digit + 5       ; 004355
    INC digit + 5       ; 004356
    INC digit + 5       ; 004357
    INC digit + 5       ; 004358
    INC digit + 5       ; 004359
    STX digit + 5       ; 004350  @ 40D4
    INC digit + 4       ; 004360

    STY digit + 5       ; 004361  @ 40DA
    INC digit + 5       ; 004362
    INC digit + 5       ; 004363
    INC digit + 5       ; 004364
    INC digit + 5       ; 004365
    INC digit + 5       ; 004366
    INC digit + 5       ; 004367
    INC digit + 5       ; 004368
    INC digit + 5       ; 004369
    STX digit + 5       ; 004360  @ 40F5
    INC digit + 4       ; 004370

    STY digit + 5       ; 004371  @ 40FB
    INC digit + 5       ; 004372
    INC digit + 5       ; 004373
    INC digit + 5       ; 004374
    INC digit + 5       ; 004375
    INC digit + 5       ; 004376
    INC digit + 5       ; 004377
    INC digit + 5       ; 004378
    INC digit + 5       ; 004379
    STX digit + 5       ; 004370  @ 4116
    INC digit + 4       ; 004380

    STY digit + 5       ; 004381  @ 411C
    INC digit + 5       ; 004382
    INC digit + 5       ; 004383
    INC digit + 5       ; 004384
    INC digit + 5       ; 004385
    INC digit + 5       ; 004386
    INC digit + 5       ; 004387
    INC digit + 5       ; 004388
    INC digit + 5       ; 004389
    STX digit + 5       ; 004380  @ 4137
    INC digit + 4       ; 004390

    STY digit + 5       ; 004391  @ 413D
    INC digit + 5       ; 004392
    INC digit + 5       ; 004393
    INC digit + 5       ; 004394
    INC digit + 5       ; 004395
    INC digit + 5       ; 004396
    INC digit + 5       ; 004397
    INC digit + 5       ; 004398
    INC digit + 5       ; 004399
    STX digit + 5       ; 004390  @ 4158
    STX digit + 4       ; 004300  @ 415B
    INC digit + 3       ; 004400

    STY digit + 5       ; 004401  @ 4161
    INC digit + 5       ; 004402
    INC digit + 5       ; 004403
    INC digit + 5       ; 004404
    INC digit + 5       ; 004405
    INC digit + 5       ; 004406
    INC digit + 5       ; 004407
    INC digit + 5       ; 004408
    INC digit + 5       ; 004409
    STX digit + 5       ; 004400  @ 417C
    STY digit + 4       ; 004410  @ 417F

    STY digit + 5       ; 004411  @ 4182
    INC digit + 5       ; 004412
    INC digit + 5       ; 004413
    INC digit + 5       ; 004414
    INC digit + 5       ; 004415
    INC digit + 5       ; 004416
    INC digit + 5       ; 004417
    INC digit + 5       ; 004418
    INC digit + 5       ; 004419
    STX digit + 5       ; 004410  @ 419D
    INC digit + 4       ; 004420

    STY digit + 5       ; 004421  @ 41A3
    INC digit + 5       ; 004422
    INC digit + 5       ; 004423
    INC digit + 5       ; 004424
    INC digit + 5       ; 004425
    INC digit + 5       ; 004426
    INC digit + 5       ; 004427
    INC digit + 5       ; 004428
    INC digit + 5       ; 004429
    STX digit + 5       ; 004420  @ 41BE
    INC digit + 4       ; 004430

    STY digit + 5       ; 004431  @ 41C4
    INC digit + 5       ; 004432
    INC digit + 5       ; 004433
    INC digit + 5       ; 004434
    INC digit + 5       ; 004435
    INC digit + 5       ; 004436
    INC digit + 5       ; 004437
    INC digit + 5       ; 004438
    INC digit + 5       ; 004439
    STX digit + 5       ; 004430  @ 41DF
    INC digit + 4       ; 004440

    STY digit + 5       ; 004441  @ 41E5
    INC digit + 5       ; 004442
    INC digit + 5       ; 004443
    INC digit + 5       ; 004444
    INC digit + 5       ; 004445
    INC digit + 5       ; 004446
    INC digit + 5       ; 004447
    INC digit + 5       ; 004448
    INC digit + 5       ; 004449
    STX digit + 5       ; 004440  @ 4200
    INC digit + 4       ; 004450

    STY digit + 5       ; 004451  @ 4206
    INC digit + 5       ; 004452
    INC digit + 5       ; 004453
    INC digit + 5       ; 004454
    INC digit + 5       ; 004455
    INC digit + 5       ; 004456
    INC digit + 5       ; 004457
    INC digit + 5       ; 004458
    INC digit + 5       ; 004459
    STX digit + 5       ; 004450  @ 4221
    INC digit + 4       ; 004460

    STY digit + 5       ; 004461  @ 4227
    INC digit + 5       ; 004462
    INC digit + 5       ; 004463
    INC digit + 5       ; 004464
    INC digit + 5       ; 004465
    INC digit + 5       ; 004466
    INC digit + 5       ; 004467
    INC digit + 5       ; 004468
    INC digit + 5       ; 004469
    STX digit + 5       ; 004460  @ 4242
    INC digit + 4       ; 004470

    STY digit + 5       ; 004471  @ 4248
    INC digit + 5       ; 004472
    INC digit + 5       ; 004473
    INC digit + 5       ; 004474
    INC digit + 5       ; 004475
    INC digit + 5       ; 004476
    INC digit + 5       ; 004477
    INC digit + 5       ; 004478
    INC digit + 5       ; 004479
    STX digit + 5       ; 004470  @ 4263
    INC digit + 4       ; 004480

    STY digit + 5       ; 004481  @ 4269
    INC digit + 5       ; 004482
    INC digit + 5       ; 004483
    INC digit + 5       ; 004484
    INC digit + 5       ; 004485
    INC digit + 5       ; 004486
    INC digit + 5       ; 004487
    INC digit + 5       ; 004488
    INC digit + 5       ; 004489
    STX digit + 5       ; 004480  @ 4284
    INC digit + 4       ; 004490

    STY digit + 5       ; 004491  @ 428A
    INC digit + 5       ; 004492
    INC digit + 5       ; 004493
    INC digit + 5       ; 004494
    INC digit + 5       ; 004495
    INC digit + 5       ; 004496
    INC digit + 5       ; 004497
    INC digit + 5       ; 004498
    INC digit + 5       ; 004499
    STX digit + 5       ; 004490  @ 42A5
    STX digit + 4       ; 004400  @ 42A8
    INC digit + 3       ; 004500

    STY digit + 5       ; 004501  @ 42AE
    INC digit + 5       ; 004502
    INC digit + 5       ; 004503
    INC digit + 5       ; 004504
    INC digit + 5       ; 004505
    INC digit + 5       ; 004506
    INC digit + 5       ; 004507
    INC digit + 5       ; 004508
    INC digit + 5       ; 004509
    STX digit + 5       ; 004500  @ 42C9
    STY digit + 4       ; 004510  @ 42CC

    STY digit + 5       ; 004511  @ 42CF
    INC digit + 5       ; 004512
    INC digit + 5       ; 004513
    INC digit + 5       ; 004514
    INC digit + 5       ; 004515
    INC digit + 5       ; 004516
    INC digit + 5       ; 004517
    INC digit + 5       ; 004518
    INC digit + 5       ; 004519
    STX digit + 5       ; 004510  @ 42EA
    INC digit + 4       ; 004520

    STY digit + 5       ; 004521  @ 42F0
    INC digit + 5       ; 004522
    INC digit + 5       ; 004523
    INC digit + 5       ; 004524
    INC digit + 5       ; 004525
    INC digit + 5       ; 004526
    INC digit + 5       ; 004527
    INC digit + 5       ; 004528
    INC digit + 5       ; 004529
    STX digit + 5       ; 004520  @ 430B
    INC digit + 4       ; 004530

    STY digit + 5       ; 004531  @ 4311
    INC digit + 5       ; 004532
    INC digit + 5       ; 004533
    INC digit + 5       ; 004534
    INC digit + 5       ; 004535
    INC digit + 5       ; 004536
    INC digit + 5       ; 004537
    INC digit + 5       ; 004538
    INC digit + 5       ; 004539
    STX digit + 5       ; 004530  @ 432C
    INC digit + 4       ; 004540

    STY digit + 5       ; 004541  @ 4332
    INC digit + 5       ; 004542
    INC digit + 5       ; 004543
    INC digit + 5       ; 004544
    INC digit + 5       ; 004545
    INC digit + 5       ; 004546
    INC digit + 5       ; 004547
    INC digit + 5       ; 004548
    INC digit + 5       ; 004549
    STX digit + 5       ; 004540  @ 434D
    INC digit + 4       ; 004550

    STY digit + 5       ; 004551  @ 4353
    INC digit + 5       ; 004552
    INC digit + 5       ; 004553
    INC digit + 5       ; 004554
    INC digit + 5       ; 004555
    INC digit + 5       ; 004556
    INC digit + 5       ; 004557
    INC digit + 5       ; 004558
    INC digit + 5       ; 004559
    STX digit + 5       ; 004550  @ 436E
    INC digit + 4       ; 004560

    STY digit + 5       ; 004561  @ 4374
    INC digit + 5       ; 004562
    INC digit + 5       ; 004563
    INC digit + 5       ; 004564
    INC digit + 5       ; 004565
    INC digit + 5       ; 004566
    INC digit + 5       ; 004567
    INC digit + 5       ; 004568
    INC digit + 5       ; 004569
    STX digit + 5       ; 004560  @ 438F
    INC digit + 4       ; 004570

    STY digit + 5       ; 004571  @ 4395
    INC digit + 5       ; 004572
    INC digit + 5       ; 004573
    INC digit + 5       ; 004574
    INC digit + 5       ; 004575
    INC digit + 5       ; 004576
    INC digit + 5       ; 004577
    INC digit + 5       ; 004578
    INC digit + 5       ; 004579
    STX digit + 5       ; 004570  @ 43B0
    INC digit + 4       ; 004580

    STY digit + 5       ; 004581  @ 43B6
    INC digit + 5       ; 004582
    INC digit + 5       ; 004583
    INC digit + 5       ; 004584
    INC digit + 5       ; 004585
    INC digit + 5       ; 004586
    INC digit + 5       ; 004587
    INC digit + 5       ; 004588
    INC digit + 5       ; 004589
    STX digit + 5       ; 004580  @ 43D1
    INC digit + 4       ; 004590

    STY digit + 5       ; 004591  @ 43D7
    INC digit + 5       ; 004592
    INC digit + 5       ; 004593
    INC digit + 5       ; 004594
    INC digit + 5       ; 004595
    INC digit + 5       ; 004596
    INC digit + 5       ; 004597
    INC digit + 5       ; 004598
    INC digit + 5       ; 004599
    STX digit + 5       ; 004590  @ 43F2
    STX digit + 4       ; 004500  @ 43F5
    INC digit + 3       ; 004600

    STY digit + 5       ; 004601  @ 43FB
    INC digit + 5       ; 004602
    INC digit + 5       ; 004603
    INC digit + 5       ; 004604
    INC digit + 5       ; 004605
    INC digit + 5       ; 004606
    INC digit + 5       ; 004607
    INC digit + 5       ; 004608
    INC digit + 5       ; 004609
    STX digit + 5       ; 004600  @ 4416
    STY digit + 4       ; 004610  @ 4419

    STY digit + 5       ; 004611  @ 441C
    INC digit + 5       ; 004612
    INC digit + 5       ; 004613
    INC digit + 5       ; 004614
    INC digit + 5       ; 004615
    INC digit + 5       ; 004616
    INC digit + 5       ; 004617
    INC digit + 5       ; 004618
    INC digit + 5       ; 004619
    STX digit + 5       ; 004610  @ 4437
    INC digit + 4       ; 004620

    STY digit + 5       ; 004621  @ 443D
    INC digit + 5       ; 004622
    INC digit + 5       ; 004623
    INC digit + 5       ; 004624
    INC digit + 5       ; 004625
    INC digit + 5       ; 004626
    INC digit + 5       ; 004627
    INC digit + 5       ; 004628
    INC digit + 5       ; 004629
    STX digit + 5       ; 004620  @ 4458
    INC digit + 4       ; 004630

    STY digit + 5       ; 004631  @ 445E
    INC digit + 5       ; 004632
    INC digit + 5       ; 004633
    INC digit + 5       ; 004634
    INC digit + 5       ; 004635
    INC digit + 5       ; 004636
    INC digit + 5       ; 004637
    INC digit + 5       ; 004638
    INC digit + 5       ; 004639
    STX digit + 5       ; 004630  @ 4479
    INC digit + 4       ; 004640

    STY digit + 5       ; 004641  @ 447F
    INC digit + 5       ; 004642
    INC digit + 5       ; 004643
    INC digit + 5       ; 004644
    INC digit + 5       ; 004645
    INC digit + 5       ; 004646
    INC digit + 5       ; 004647
    INC digit + 5       ; 004648
    INC digit + 5       ; 004649
    STX digit + 5       ; 004640  @ 449A
    INC digit + 4       ; 004650

    STY digit + 5       ; 004651  @ 44A0
    INC digit + 5       ; 004652
    INC digit + 5       ; 004653
    INC digit + 5       ; 004654
    INC digit + 5       ; 004655
    INC digit + 5       ; 004656
    INC digit + 5       ; 004657
    INC digit + 5       ; 004658
    INC digit + 5       ; 004659
    STX digit + 5       ; 004650  @ 44BB
    INC digit + 4       ; 004660

    STY digit + 5       ; 004661  @ 44C1
    INC digit + 5       ; 004662
    INC digit + 5       ; 004663
    INC digit + 5       ; 004664
    INC digit + 5       ; 004665
    INC digit + 5       ; 004666
    INC digit + 5       ; 004667
    INC digit + 5       ; 004668
    INC digit + 5       ; 004669
    STX digit + 5       ; 004660  @ 44DC
    INC digit + 4       ; 004670

    STY digit + 5       ; 004671  @ 44E2
    INC digit + 5       ; 004672
    INC digit + 5       ; 004673
    INC digit + 5       ; 004674
    INC digit + 5       ; 004675
    INC digit + 5       ; 004676
    INC digit + 5       ; 004677
    INC digit + 5       ; 004678
    INC digit + 5       ; 004679
    STX digit + 5       ; 004670  @ 44FD
    INC digit + 4       ; 004680

    STY digit + 5       ; 004681  @ 4503
    INC digit + 5       ; 004682
    INC digit + 5       ; 004683
    INC digit + 5       ; 004684
    INC digit + 5       ; 004685
    INC digit + 5       ; 004686
    INC digit + 5       ; 004687
    INC digit + 5       ; 004688
    INC digit + 5       ; 004689
    STX digit + 5       ; 004680  @ 451E
    INC digit + 4       ; 004690

    STY digit + 5       ; 004691  @ 4524
    INC digit + 5       ; 004692
    INC digit + 5       ; 004693
    INC digit + 5       ; 004694
    INC digit + 5       ; 004695
    INC digit + 5       ; 004696
    INC digit + 5       ; 004697
    INC digit + 5       ; 004698
    INC digit + 5       ; 004699
    STX digit + 5       ; 004690  @ 453F
    STX digit + 4       ; 004600  @ 4542
    INC digit + 3       ; 004700

    STY digit + 5       ; 004701  @ 4548
    INC digit + 5       ; 004702
    INC digit + 5       ; 004703
    INC digit + 5       ; 004704
    INC digit + 5       ; 004705
    INC digit + 5       ; 004706
    INC digit + 5       ; 004707
    INC digit + 5       ; 004708
    INC digit + 5       ; 004709
    STX digit + 5       ; 004700  @ 4563
    STY digit + 4       ; 004710  @ 4566

    STY digit + 5       ; 004711  @ 4569
    INC digit + 5       ; 004712
    INC digit + 5       ; 004713
    INC digit + 5       ; 004714
    INC digit + 5       ; 004715
    INC digit + 5       ; 004716
    INC digit + 5       ; 004717
    INC digit + 5       ; 004718
    INC digit + 5       ; 004719
    STX digit + 5       ; 004710  @ 4584
    INC digit + 4       ; 004720

    STY digit + 5       ; 004721  @ 458A
    INC digit + 5       ; 004722
    INC digit + 5       ; 004723
    INC digit + 5       ; 004724
    INC digit + 5       ; 004725
    INC digit + 5       ; 004726
    INC digit + 5       ; 004727
    INC digit + 5       ; 004728
    INC digit + 5       ; 004729
    STX digit + 5       ; 004720  @ 45A5
    INC digit + 4       ; 004730

    STY digit + 5       ; 004731  @ 45AB
    INC digit + 5       ; 004732
    INC digit + 5       ; 004733
    INC digit + 5       ; 004734
    INC digit + 5       ; 004735
    INC digit + 5       ; 004736
    INC digit + 5       ; 004737
    INC digit + 5       ; 004738
    INC digit + 5       ; 004739
    STX digit + 5       ; 004730  @ 45C6
    INC digit + 4       ; 004740

    STY digit + 5       ; 004741  @ 45CC
    INC digit + 5       ; 004742
    INC digit + 5       ; 004743
    INC digit + 5       ; 004744
    INC digit + 5       ; 004745
    INC digit + 5       ; 004746
    INC digit + 5       ; 004747
    INC digit + 5       ; 004748
    INC digit + 5       ; 004749
    STX digit + 5       ; 004740  @ 45E7
    INC digit + 4       ; 004750

    STY digit + 5       ; 004751  @ 45ED
    INC digit + 5       ; 004752
    INC digit + 5       ; 004753
    INC digit + 5       ; 004754
    INC digit + 5       ; 004755
    INC digit + 5       ; 004756
    INC digit + 5       ; 004757
    INC digit + 5       ; 004758
    INC digit + 5       ; 004759
    STX digit + 5       ; 004750  @ 4608
    INC digit + 4       ; 004760

    STY digit + 5       ; 004761  @ 460E
    INC digit + 5       ; 004762
    INC digit + 5       ; 004763
    INC digit + 5       ; 004764
    INC digit + 5       ; 004765
    INC digit + 5       ; 004766
    INC digit + 5       ; 004767
    INC digit + 5       ; 004768
    INC digit + 5       ; 004769
    STX digit + 5       ; 004760  @ 4629
    INC digit + 4       ; 004770

    STY digit + 5       ; 004771  @ 462F
    INC digit + 5       ; 004772
    INC digit + 5       ; 004773
    INC digit + 5       ; 004774
    INC digit + 5       ; 004775
    INC digit + 5       ; 004776
    INC digit + 5       ; 004777
    INC digit + 5       ; 004778
    INC digit + 5       ; 004779
    STX digit + 5       ; 004770  @ 464A
    INC digit + 4       ; 004780

    STY digit + 5       ; 004781  @ 4650
    INC digit + 5       ; 004782
    INC digit + 5       ; 004783
    INC digit + 5       ; 004784
    INC digit + 5       ; 004785
    INC digit + 5       ; 004786
    INC digit + 5       ; 004787
    INC digit + 5       ; 004788
    INC digit + 5       ; 004789
    STX digit + 5       ; 004780  @ 466B
    INC digit + 4       ; 004790

    STY digit + 5       ; 004791  @ 4671
    INC digit + 5       ; 004792
    INC digit + 5       ; 004793
    INC digit + 5       ; 004794
    INC digit + 5       ; 004795
    INC digit + 5       ; 004796
    INC digit + 5       ; 004797
    INC digit + 5       ; 004798
    INC digit + 5       ; 004799
    STX digit + 5       ; 004790  @ 468C
    STX digit + 4       ; 004700  @ 468F
    INC digit + 3       ; 004800

    STY digit + 5       ; 004801  @ 4695
    INC digit + 5       ; 004802
    INC digit + 5       ; 004803
    INC digit + 5       ; 004804
    INC digit + 5       ; 004805
    INC digit + 5       ; 004806
    INC digit + 5       ; 004807
    INC digit + 5       ; 004808
    INC digit + 5       ; 004809
    STX digit + 5       ; 004800  @ 46B0
    STY digit + 4       ; 004810  @ 46B3

    STY digit + 5       ; 004811  @ 46B6
    INC digit + 5       ; 004812
    INC digit + 5       ; 004813
    INC digit + 5       ; 004814
    INC digit + 5       ; 004815
    INC digit + 5       ; 004816
    INC digit + 5       ; 004817
    INC digit + 5       ; 004818
    INC digit + 5       ; 004819
    STX digit + 5       ; 004810  @ 46D1
    INC digit + 4       ; 004820

    STY digit + 5       ; 004821  @ 46D7
    INC digit + 5       ; 004822
    INC digit + 5       ; 004823
    INC digit + 5       ; 004824
    INC digit + 5       ; 004825
    INC digit + 5       ; 004826
    INC digit + 5       ; 004827
    INC digit + 5       ; 004828
    INC digit + 5       ; 004829
    STX digit + 5       ; 004820  @ 46F2
    INC digit + 4       ; 004830

    STY digit + 5       ; 004831  @ 46F8
    INC digit + 5       ; 004832
    INC digit + 5       ; 004833
    INC digit + 5       ; 004834
    INC digit + 5       ; 004835
    INC digit + 5       ; 004836
    INC digit + 5       ; 004837
    INC digit + 5       ; 004838
    INC digit + 5       ; 004839
    STX digit + 5       ; 004830  @ 4713
    INC digit + 4       ; 004840

    STY digit + 5       ; 004841  @ 4719
    INC digit + 5       ; 004842
    INC digit + 5       ; 004843
    INC digit + 5       ; 004844
    INC digit + 5       ; 004845
    INC digit + 5       ; 004846
    INC digit + 5       ; 004847
    INC digit + 5       ; 004848
    INC digit + 5       ; 004849
    STX digit + 5       ; 004840  @ 4734
    INC digit + 4       ; 004850

    STY digit + 5       ; 004851  @ 473A
    INC digit + 5       ; 004852
    INC digit + 5       ; 004853
    INC digit + 5       ; 004854
    INC digit + 5       ; 004855
    INC digit + 5       ; 004856
    INC digit + 5       ; 004857
    INC digit + 5       ; 004858
    INC digit + 5       ; 004859
    STX digit + 5       ; 004850  @ 4755
    INC digit + 4       ; 004860

    STY digit + 5       ; 004861  @ 475B
    INC digit + 5       ; 004862
    INC digit + 5       ; 004863
    INC digit + 5       ; 004864
    INC digit + 5       ; 004865
    INC digit + 5       ; 004866
    INC digit + 5       ; 004867
    INC digit + 5       ; 004868
    INC digit + 5       ; 004869
    STX digit + 5       ; 004860  @ 4776
    INC digit + 4       ; 004870

    STY digit + 5       ; 004871  @ 477C
    INC digit + 5       ; 004872
    INC digit + 5       ; 004873
    INC digit + 5       ; 004874
    INC digit + 5       ; 004875
    INC digit + 5       ; 004876
    INC digit + 5       ; 004877
    INC digit + 5       ; 004878
    INC digit + 5       ; 004879
    STX digit + 5       ; 004870  @ 4797
    INC digit + 4       ; 004880

    STY digit + 5       ; 004881  @ 479D
    INC digit + 5       ; 004882
    INC digit + 5       ; 004883
    INC digit + 5       ; 004884
    INC digit + 5       ; 004885
    INC digit + 5       ; 004886
    INC digit + 5       ; 004887
    INC digit + 5       ; 004888
    INC digit + 5       ; 004889
    STX digit + 5       ; 004880  @ 47B8
    INC digit + 4       ; 004890

    STY digit + 5       ; 004891  @ 47BE
    INC digit + 5       ; 004892
    INC digit + 5       ; 004893
    INC digit + 5       ; 004894
    INC digit + 5       ; 004895
    INC digit + 5       ; 004896
    INC digit + 5       ; 004897
    INC digit + 5       ; 004898
    INC digit + 5       ; 004899
    STX digit + 5       ; 004890  @ 47D9
    STX digit + 4       ; 004800  @ 47DC
    INC digit + 3       ; 004900

    STY digit + 5       ; 004901  @ 47E2
    INC digit + 5       ; 004902
    INC digit + 5       ; 004903
    INC digit + 5       ; 004904
    INC digit + 5       ; 004905
    INC digit + 5       ; 004906
    INC digit + 5       ; 004907
    INC digit + 5       ; 004908
    INC digit + 5       ; 004909
    STX digit + 5       ; 004900  @ 47FD
    STY digit + 4       ; 004910  @ 4800

    STY digit + 5       ; 004911  @ 4803
    INC digit + 5       ; 004912
    INC digit + 5       ; 004913
    INC digit + 5       ; 004914
    INC digit + 5       ; 004915
    INC digit + 5       ; 004916
    INC digit + 5       ; 004917
    INC digit + 5       ; 004918
    INC digit + 5       ; 004919
    STX digit + 5       ; 004910  @ 481E
    INC digit + 4       ; 004920

    STY digit + 5       ; 004921  @ 4824
    INC digit + 5       ; 004922
    INC digit + 5       ; 004923
    INC digit + 5       ; 004924
    INC digit + 5       ; 004925
    INC digit + 5       ; 004926
    INC digit + 5       ; 004927
    INC digit + 5       ; 004928
    INC digit + 5       ; 004929
    STX digit + 5       ; 004920  @ 483F
    INC digit + 4       ; 004930

    STY digit + 5       ; 004931  @ 4845
    INC digit + 5       ; 004932
    INC digit + 5       ; 004933
    INC digit + 5       ; 004934
    INC digit + 5       ; 004935
    INC digit + 5       ; 004936
    INC digit + 5       ; 004937
    INC digit + 5       ; 004938
    INC digit + 5       ; 004939
    STX digit + 5       ; 004930  @ 4860
    INC digit + 4       ; 004940

    STY digit + 5       ; 004941  @ 4866
    INC digit + 5       ; 004942
    INC digit + 5       ; 004943
    INC digit + 5       ; 004944
    INC digit + 5       ; 004945
    INC digit + 5       ; 004946
    INC digit + 5       ; 004947
    INC digit + 5       ; 004948
    INC digit + 5       ; 004949
    STX digit + 5       ; 004940  @ 4881
    INC digit + 4       ; 004950

    STY digit + 5       ; 004951  @ 4887
    INC digit + 5       ; 004952
    INC digit + 5       ; 004953
    INC digit + 5       ; 004954
    INC digit + 5       ; 004955
    INC digit + 5       ; 004956
    INC digit + 5       ; 004957
    INC digit + 5       ; 004958
    INC digit + 5       ; 004959
    STX digit + 5       ; 004950  @ 48A2
    INC digit + 4       ; 004960

    STY digit + 5       ; 004961  @ 48A8
    INC digit + 5       ; 004962
    INC digit + 5       ; 004963
    INC digit + 5       ; 004964
    INC digit + 5       ; 004965
    INC digit + 5       ; 004966
    INC digit + 5       ; 004967
    INC digit + 5       ; 004968
    INC digit + 5       ; 004969
    STX digit + 5       ; 004960  @ 48C3
    INC digit + 4       ; 004970

    STY digit + 5       ; 004971  @ 48C9
    INC digit + 5       ; 004972
    INC digit + 5       ; 004973
    INC digit + 5       ; 004974
    INC digit + 5       ; 004975
    INC digit + 5       ; 004976
    INC digit + 5       ; 004977
    INC digit + 5       ; 004978
    INC digit + 5       ; 004979
    STX digit + 5       ; 004970  @ 48E4
    INC digit + 4       ; 004980

    STY digit + 5       ; 004981  @ 48EA
    INC digit + 5       ; 004982
    INC digit + 5       ; 004983
    INC digit + 5       ; 004984
    INC digit + 5       ; 004985
    INC digit + 5       ; 004986
    INC digit + 5       ; 004987
    INC digit + 5       ; 004988
    INC digit + 5       ; 004989
    STX digit + 5       ; 004980  @ 4905
    INC digit + 4       ; 004990

    STY digit + 5       ; 004991  @ 490B
    INC digit + 5       ; 004992
    INC digit + 5       ; 004993
    INC digit + 5       ; 004994
    INC digit + 5       ; 004995
    INC digit + 5       ; 004996
    INC digit + 5       ; 004997
    INC digit + 5       ; 004998
    INC digit + 5       ; 004999
    STX digit + 5       ; 004990  @ 4926
    STX digit + 4       ; 004900  @ 4929
    STX digit + 3       ; 004000  @ 492C
    INC digit + 2       ; 005000

    STY digit + 5       ; 005001  @ 4932
    INC digit + 5       ; 005002
    INC digit + 5       ; 005003
    INC digit + 5       ; 005004
    INC digit + 5       ; 005005
    INC digit + 5       ; 005006
    INC digit + 5       ; 005007
    INC digit + 5       ; 005008
    INC digit + 5       ; 005009
    STX digit + 5       ; 005000  @ 494D
    STY digit + 4       ; 005010  @ 4950

    STY digit + 5       ; 005011  @ 4953
    INC digit + 5       ; 005012
    INC digit + 5       ; 005013
    INC digit + 5       ; 005014
    INC digit + 5       ; 005015
    INC digit + 5       ; 005016
    INC digit + 5       ; 005017
    INC digit + 5       ; 005018
    INC digit + 5       ; 005019
    STX digit + 5       ; 005010  @ 496E
    INC digit + 4       ; 005020

    STY digit + 5       ; 005021  @ 4974
    INC digit + 5       ; 005022
    INC digit + 5       ; 005023
    INC digit + 5       ; 005024
    INC digit + 5       ; 005025
    INC digit + 5       ; 005026
    INC digit + 5       ; 005027
    INC digit + 5       ; 005028
    INC digit + 5       ; 005029
    STX digit + 5       ; 005020  @ 498F
    INC digit + 4       ; 005030

    STY digit + 5       ; 005031  @ 4995
    INC digit + 5       ; 005032
    INC digit + 5       ; 005033
    INC digit + 5       ; 005034
    INC digit + 5       ; 005035
    INC digit + 5       ; 005036
    INC digit + 5       ; 005037
    INC digit + 5       ; 005038
    INC digit + 5       ; 005039
    STX digit + 5       ; 005030  @ 49B0
    INC digit + 4       ; 005040

    STY digit + 5       ; 005041  @ 49B6
    INC digit + 5       ; 005042
    INC digit + 5       ; 005043
    INC digit + 5       ; 005044
    INC digit + 5       ; 005045
    INC digit + 5       ; 005046
    INC digit + 5       ; 005047
    INC digit + 5       ; 005048
    INC digit + 5       ; 005049
    STX digit + 5       ; 005040  @ 49D1
    INC digit + 4       ; 005050

    STY digit + 5       ; 005051  @ 49D7
    INC digit + 5       ; 005052
    INC digit + 5       ; 005053
    INC digit + 5       ; 005054
    INC digit + 5       ; 005055
    INC digit + 5       ; 005056
    INC digit + 5       ; 005057
    INC digit + 5       ; 005058
    INC digit + 5       ; 005059
    STX digit + 5       ; 005050  @ 49F2
    INC digit + 4       ; 005060

    STY digit + 5       ; 005061  @ 49F8
    INC digit + 5       ; 005062
    INC digit + 5       ; 005063
    INC digit + 5       ; 005064
    INC digit + 5       ; 005065
    INC digit + 5       ; 005066
    INC digit + 5       ; 005067
    INC digit + 5       ; 005068
    INC digit + 5       ; 005069
    STX digit + 5       ; 005060  @ 4A13
    INC digit + 4       ; 005070

    STY digit + 5       ; 005071  @ 4A19
    INC digit + 5       ; 005072
    INC digit + 5       ; 005073
    INC digit + 5       ; 005074
    INC digit + 5       ; 005075
    INC digit + 5       ; 005076
    INC digit + 5       ; 005077
    INC digit + 5       ; 005078
    INC digit + 5       ; 005079
    STX digit + 5       ; 005070  @ 4A34
    INC digit + 4       ; 005080

    STY digit + 5       ; 005081  @ 4A3A
    INC digit + 5       ; 005082
    INC digit + 5       ; 005083
    INC digit + 5       ; 005084
    INC digit + 5       ; 005085
    INC digit + 5       ; 005086
    INC digit + 5       ; 005087
    INC digit + 5       ; 005088
    INC digit + 5       ; 005089
    STX digit + 5       ; 005080  @ 4A55
    INC digit + 4       ; 005090

    STY digit + 5       ; 005091  @ 4A5B
    INC digit + 5       ; 005092
    INC digit + 5       ; 005093
    INC digit + 5       ; 005094
    INC digit + 5       ; 005095
    INC digit + 5       ; 005096
    INC digit + 5       ; 005097
    INC digit + 5       ; 005098
    INC digit + 5       ; 005099
    STX digit + 5       ; 005090  @ 4A76
    STX digit + 4       ; 005000  @ 4A79
    STY digit + 3       ; 005100  @ 4A7C

    STY digit + 5       ; 005101  @ 4A7F
    INC digit + 5       ; 005102
    INC digit + 5       ; 005103
    INC digit + 5       ; 005104
    INC digit + 5       ; 005105
    INC digit + 5       ; 005106
    INC digit + 5       ; 005107
    INC digit + 5       ; 005108
    INC digit + 5       ; 005109
    STX digit + 5       ; 005100  @ 4A9A
    STY digit + 4       ; 005110  @ 4A9D

    STY digit + 5       ; 005111  @ 4AA0
    INC digit + 5       ; 005112
    INC digit + 5       ; 005113
    INC digit + 5       ; 005114
    INC digit + 5       ; 005115
    INC digit + 5       ; 005116
    INC digit + 5       ; 005117
    INC digit + 5       ; 005118
    INC digit + 5       ; 005119
    STX digit + 5       ; 005110  @ 4ABB
    INC digit + 4       ; 005120

    STY digit + 5       ; 005121  @ 4AC1
    INC digit + 5       ; 005122
    INC digit + 5       ; 005123
    INC digit + 5       ; 005124
    INC digit + 5       ; 005125
    INC digit + 5       ; 005126
    INC digit + 5       ; 005127
    INC digit + 5       ; 005128
    INC digit + 5       ; 005129
    STX digit + 5       ; 005120  @ 4ADC
    INC digit + 4       ; 005130

    STY digit + 5       ; 005131  @ 4AE2
    INC digit + 5       ; 005132
    INC digit + 5       ; 005133
    INC digit + 5       ; 005134
    INC digit + 5       ; 005135
    INC digit + 5       ; 005136
    INC digit + 5       ; 005137
    INC digit + 5       ; 005138
    INC digit + 5       ; 005139
    STX digit + 5       ; 005130  @ 4AFD
    INC digit + 4       ; 005140

    STY digit + 5       ; 005141  @ 4B03
    INC digit + 5       ; 005142
    INC digit + 5       ; 005143
    INC digit + 5       ; 005144
    INC digit + 5       ; 005145
    INC digit + 5       ; 005146
    INC digit + 5       ; 005147
    INC digit + 5       ; 005148
    INC digit + 5       ; 005149
    STX digit + 5       ; 005140  @ 4B1E
    INC digit + 4       ; 005150

    STY digit + 5       ; 005151  @ 4B24
    INC digit + 5       ; 005152
    INC digit + 5       ; 005153
    INC digit + 5       ; 005154
    INC digit + 5       ; 005155
    INC digit + 5       ; 005156
    INC digit + 5       ; 005157
    INC digit + 5       ; 005158
    INC digit + 5       ; 005159
    STX digit + 5       ; 005150  @ 4B3F
    INC digit + 4       ; 005160

    STY digit + 5       ; 005161  @ 4B45
    INC digit + 5       ; 005162
    INC digit + 5       ; 005163
    INC digit + 5       ; 005164
    INC digit + 5       ; 005165
    INC digit + 5       ; 005166
    INC digit + 5       ; 005167
    INC digit + 5       ; 005168
    INC digit + 5       ; 005169
    STX digit + 5       ; 005160  @ 4B60
    INC digit + 4       ; 005170

    STY digit + 5       ; 005171  @ 4B66
    INC digit + 5       ; 005172
    INC digit + 5       ; 005173
    INC digit + 5       ; 005174
    INC digit + 5       ; 005175
    INC digit + 5       ; 005176
    INC digit + 5       ; 005177
    INC digit + 5       ; 005178
    INC digit + 5       ; 005179
    STX digit + 5       ; 005170  @ 4B81
    INC digit + 4       ; 005180

    STY digit + 5       ; 005181  @ 4B87
    INC digit + 5       ; 005182
    INC digit + 5       ; 005183
    INC digit + 5       ; 005184
    INC digit + 5       ; 005185
    INC digit + 5       ; 005186
    INC digit + 5       ; 005187
    INC digit + 5       ; 005188
    INC digit + 5       ; 005189
    STX digit + 5       ; 005180  @ 4BA2
    INC digit + 4       ; 005190

    STY digit + 5       ; 005191  @ 4BA8
    INC digit + 5       ; 005192
    INC digit + 5       ; 005193
    INC digit + 5       ; 005194
    INC digit + 5       ; 005195
    INC digit + 5       ; 005196
    INC digit + 5       ; 005197
    INC digit + 5       ; 005198
    INC digit + 5       ; 005199
    STX digit + 5       ; 005190  @ 4BC3
    STX digit + 4       ; 005100  @ 4BC6
    INC digit + 3       ; 005200

    STY digit + 5       ; 005201  @ 4BCC
    INC digit + 5       ; 005202
    INC digit + 5       ; 005203
    INC digit + 5       ; 005204
    INC digit + 5       ; 005205
    INC digit + 5       ; 005206
    INC digit + 5       ; 005207
    INC digit + 5       ; 005208
    INC digit + 5       ; 005209
    STX digit + 5       ; 005200  @ 4BE7
    STY digit + 4       ; 005210  @ 4BEA

    STY digit + 5       ; 005211  @ 4BED
    INC digit + 5       ; 005212
    INC digit + 5       ; 005213
    INC digit + 5       ; 005214
    INC digit + 5       ; 005215
    INC digit + 5       ; 005216
    INC digit + 5       ; 005217
    INC digit + 5       ; 005218
    INC digit + 5       ; 005219
    STX digit + 5       ; 005210  @ 4C08
    INC digit + 4       ; 005220

    STY digit + 5       ; 005221  @ 4C0E
    INC digit + 5       ; 005222
    INC digit + 5       ; 005223
    INC digit + 5       ; 005224
    INC digit + 5       ; 005225
    INC digit + 5       ; 005226
    INC digit + 5       ; 005227
    INC digit + 5       ; 005228
    INC digit + 5       ; 005229
    STX digit + 5       ; 005220  @ 4C29
    INC digit + 4       ; 005230

    STY digit + 5       ; 005231  @ 4C2F
    INC digit + 5       ; 005232
    INC digit + 5       ; 005233
    INC digit + 5       ; 005234
    INC digit + 5       ; 005235
    INC digit + 5       ; 005236
    INC digit + 5       ; 005237
    INC digit + 5       ; 005238
    INC digit + 5       ; 005239
    STX digit + 5       ; 005230  @ 4C4A
    INC digit + 4       ; 005240

    STY digit + 5       ; 005241  @ 4C50
    INC digit + 5       ; 005242
    INC digit + 5       ; 005243
    INC digit + 5       ; 005244
    INC digit + 5       ; 005245
    INC digit + 5       ; 005246
    INC digit + 5       ; 005247
    INC digit + 5       ; 005248
    INC digit + 5       ; 005249
    STX digit + 5       ; 005240  @ 4C6B
    INC digit + 4       ; 005250

    STY digit + 5       ; 005251  @ 4C71
    INC digit + 5       ; 005252
    INC digit + 5       ; 005253
    INC digit + 5       ; 005254
    INC digit + 5       ; 005255
    INC digit + 5       ; 005256
    INC digit + 5       ; 005257
    INC digit + 5       ; 005258
    INC digit + 5       ; 005259
    STX digit + 5       ; 005250  @ 4C8C
    INC digit + 4       ; 005260

    STY digit + 5       ; 005261  @ 4C92
    INC digit + 5       ; 005262
    INC digit + 5       ; 005263
    INC digit + 5       ; 005264
    INC digit + 5       ; 005265
    INC digit + 5       ; 005266
    INC digit + 5       ; 005267
    INC digit + 5       ; 005268
    INC digit + 5       ; 005269
    STX digit + 5       ; 005260  @ 4CAD
    INC digit + 4       ; 005270

    STY digit + 5       ; 005271  @ 4CB3
    INC digit + 5       ; 005272
    INC digit + 5       ; 005273
    INC digit + 5       ; 005274
    INC digit + 5       ; 005275
    INC digit + 5       ; 005276
    INC digit + 5       ; 005277
    INC digit + 5       ; 005278
    INC digit + 5       ; 005279
    STX digit + 5       ; 005270  @ 4CCE
    INC digit + 4       ; 005280

    STY digit + 5       ; 005281  @ 4CD4
    INC digit + 5       ; 005282
    INC digit + 5       ; 005283
    INC digit + 5       ; 005284
    INC digit + 5       ; 005285
    INC digit + 5       ; 005286
    INC digit + 5       ; 005287
    INC digit + 5       ; 005288
    INC digit + 5       ; 005289
    STX digit + 5       ; 005280  @ 4CEF
    INC digit + 4       ; 005290

    STY digit + 5       ; 005291  @ 4CF5
    INC digit + 5       ; 005292
    INC digit + 5       ; 005293
    INC digit + 5       ; 005294
    INC digit + 5       ; 005295
    INC digit + 5       ; 005296
    INC digit + 5       ; 005297
    INC digit + 5       ; 005298
    INC digit + 5       ; 005299
    STX digit + 5       ; 005290  @ 4D10
    STX digit + 4       ; 005200  @ 4D13
    INC digit + 3       ; 005300

    STY digit + 5       ; 005301  @ 4D19
    INC digit + 5       ; 005302
    INC digit + 5       ; 005303
    INC digit + 5       ; 005304
    INC digit + 5       ; 005305
    INC digit + 5       ; 005306
    INC digit + 5       ; 005307
    INC digit + 5       ; 005308
    INC digit + 5       ; 005309
    STX digit + 5       ; 005300  @ 4D34
    STY digit + 4       ; 005310  @ 4D37

    STY digit + 5       ; 005311  @ 4D3A
    INC digit + 5       ; 005312
    INC digit + 5       ; 005313
    INC digit + 5       ; 005314
    INC digit + 5       ; 005315
    INC digit + 5       ; 005316
    INC digit + 5       ; 005317
    INC digit + 5       ; 005318
    INC digit + 5       ; 005319
    STX digit + 5       ; 005310  @ 4D55
    INC digit + 4       ; 005320

    STY digit + 5       ; 005321  @ 4D5B
    INC digit + 5       ; 005322
    INC digit + 5       ; 005323
    INC digit + 5       ; 005324
    INC digit + 5       ; 005325
    INC digit + 5       ; 005326
    INC digit + 5       ; 005327
    INC digit + 5       ; 005328
    INC digit + 5       ; 005329
    STX digit + 5       ; 005320  @ 4D76
    INC digit + 4       ; 005330

    STY digit + 5       ; 005331  @ 4D7C
    INC digit + 5       ; 005332
    INC digit + 5       ; 005333
    INC digit + 5       ; 005334
    INC digit + 5       ; 005335
    INC digit + 5       ; 005336
    INC digit + 5       ; 005337
    INC digit + 5       ; 005338
    INC digit + 5       ; 005339
    STX digit + 5       ; 005330  @ 4D97
    INC digit + 4       ; 005340

    STY digit + 5       ; 005341  @ 4D9D
    INC digit + 5       ; 005342
    INC digit + 5       ; 005343
    INC digit + 5       ; 005344
    INC digit + 5       ; 005345
    INC digit + 5       ; 005346
    INC digit + 5       ; 005347
    INC digit + 5       ; 005348
    INC digit + 5       ; 005349
    STX digit + 5       ; 005340  @ 4DB8
    INC digit + 4       ; 005350

    STY digit + 5       ; 005351  @ 4DBE
    INC digit + 5       ; 005352
    INC digit + 5       ; 005353
    INC digit + 5       ; 005354
    INC digit + 5       ; 005355
    INC digit + 5       ; 005356
    INC digit + 5       ; 005357
    INC digit + 5       ; 005358
    INC digit + 5       ; 005359
    STX digit + 5       ; 005350  @ 4DD9
    INC digit + 4       ; 005360

    STY digit + 5       ; 005361  @ 4DDF
    INC digit + 5       ; 005362
    INC digit + 5       ; 005363
    INC digit + 5       ; 005364
    INC digit + 5       ; 005365
    INC digit + 5       ; 005366
    INC digit + 5       ; 005367
    INC digit + 5       ; 005368
    INC digit + 5       ; 005369
    STX digit + 5       ; 005360  @ 4DFA
    INC digit + 4       ; 005370

    STY digit + 5       ; 005371  @ 4E00
    INC digit + 5       ; 005372
    INC digit + 5       ; 005373
    INC digit + 5       ; 005374
    INC digit + 5       ; 005375
    INC digit + 5       ; 005376
    INC digit + 5       ; 005377
    INC digit + 5       ; 005378
    INC digit + 5       ; 005379
    STX digit + 5       ; 005370  @ 4E1B
    INC digit + 4       ; 005380

    STY digit + 5       ; 005381  @ 4E21
    INC digit + 5       ; 005382
    INC digit + 5       ; 005383
    INC digit + 5       ; 005384
    INC digit + 5       ; 005385
    INC digit + 5       ; 005386
    INC digit + 5       ; 005387
    INC digit + 5       ; 005388
    INC digit + 5       ; 005389
    STX digit + 5       ; 005380  @ 4E3C
    INC digit + 4       ; 005390

    STY digit + 5       ; 005391  @ 4E42
    INC digit + 5       ; 005392
    INC digit + 5       ; 005393
    INC digit + 5       ; 005394
    INC digit + 5       ; 005395
    INC digit + 5       ; 005396
    INC digit + 5       ; 005397
    INC digit + 5       ; 005398
    INC digit + 5       ; 005399
    STX digit + 5       ; 005390  @ 4E5D
    STX digit + 4       ; 005300  @ 4E60
    INC digit + 3       ; 005400

    STY digit + 5       ; 005401  @ 4E66
    INC digit + 5       ; 005402
    INC digit + 5       ; 005403
    INC digit + 5       ; 005404
    INC digit + 5       ; 005405
    INC digit + 5       ; 005406
    INC digit + 5       ; 005407
    INC digit + 5       ; 005408
    INC digit + 5       ; 005409
    STX digit + 5       ; 005400  @ 4E81
    STY digit + 4       ; 005410  @ 4E84

    STY digit + 5       ; 005411  @ 4E87
    INC digit + 5       ; 005412
    INC digit + 5       ; 005413
    INC digit + 5       ; 005414
    INC digit + 5       ; 005415
    INC digit + 5       ; 005416
    INC digit + 5       ; 005417
    INC digit + 5       ; 005418
    INC digit + 5       ; 005419
    STX digit + 5       ; 005410  @ 4EA2
    INC digit + 4       ; 005420

    STY digit + 5       ; 005421  @ 4EA8
    INC digit + 5       ; 005422
    INC digit + 5       ; 005423
    INC digit + 5       ; 005424
    INC digit + 5       ; 005425
    INC digit + 5       ; 005426
    INC digit + 5       ; 005427
    INC digit + 5       ; 005428
    INC digit + 5       ; 005429
    STX digit + 5       ; 005420  @ 4EC3
    INC digit + 4       ; 005430

    STY digit + 5       ; 005431  @ 4EC9
    INC digit + 5       ; 005432
    INC digit + 5       ; 005433
    INC digit + 5       ; 005434
    INC digit + 5       ; 005435
    INC digit + 5       ; 005436
    INC digit + 5       ; 005437
    INC digit + 5       ; 005438
    INC digit + 5       ; 005439
    STX digit + 5       ; 005430  @ 4EE4
    INC digit + 4       ; 005440

    STY digit + 5       ; 005441  @ 4EEA
    INC digit + 5       ; 005442
    INC digit + 5       ; 005443
    INC digit + 5       ; 005444
    INC digit + 5       ; 005445
    INC digit + 5       ; 005446
    INC digit + 5       ; 005447
    INC digit + 5       ; 005448
    INC digit + 5       ; 005449
    STX digit + 5       ; 005440  @ 4F05
    INC digit + 4       ; 005450

    STY digit + 5       ; 005451  @ 4F0B
    INC digit + 5       ; 005452
    INC digit + 5       ; 005453
    INC digit + 5       ; 005454
    INC digit + 5       ; 005455
    INC digit + 5       ; 005456
    INC digit + 5       ; 005457
    INC digit + 5       ; 005458
    INC digit + 5       ; 005459
    STX digit + 5       ; 005450  @ 4F26
    INC digit + 4       ; 005460

    STY digit + 5       ; 005461  @ 4F2C
    INC digit + 5       ; 005462
    INC digit + 5       ; 005463
    INC digit + 5       ; 005464
    INC digit + 5       ; 005465
    INC digit + 5       ; 005466
    INC digit + 5       ; 005467
    INC digit + 5       ; 005468
    INC digit + 5       ; 005469
    STX digit + 5       ; 005460  @ 4F47
    INC digit + 4       ; 005470

    STY digit + 5       ; 005471  @ 4F4D
    INC digit + 5       ; 005472
    INC digit + 5       ; 005473
    INC digit + 5       ; 005474
    INC digit + 5       ; 005475
    INC digit + 5       ; 005476
    INC digit + 5       ; 005477
    INC digit + 5       ; 005478
    INC digit + 5       ; 005479
    STX digit + 5       ; 005470  @ 4F68
    INC digit + 4       ; 005480

    STY digit + 5       ; 005481  @ 4F6E
    INC digit + 5       ; 005482
    INC digit + 5       ; 005483
    INC digit + 5       ; 005484
    INC digit + 5       ; 005485
    INC digit + 5       ; 005486
    INC digit + 5       ; 005487
    INC digit + 5       ; 005488
    INC digit + 5       ; 005489
    STX digit + 5       ; 005480  @ 4F89
    INC digit + 4       ; 005490

    STY digit + 5       ; 005491  @ 4F8F
    INC digit + 5       ; 005492
    INC digit + 5       ; 005493
    INC digit + 5       ; 005494
    INC digit + 5       ; 005495
    INC digit + 5       ; 005496
    INC digit + 5       ; 005497
    INC digit + 5       ; 005498
    INC digit + 5       ; 005499
    STX digit + 5       ; 005490  @ 4FAA
    STX digit + 4       ; 005400  @ 4FAD
    INC digit + 3       ; 005500

    STY digit + 5       ; 005501  @ 4FB3
    INC digit + 5       ; 005502
    INC digit + 5       ; 005503
    INC digit + 5       ; 005504
    INC digit + 5       ; 005505
    INC digit + 5       ; 005506
    INC digit + 5       ; 005507
    INC digit + 5       ; 005508
    INC digit + 5       ; 005509
    STX digit + 5       ; 005500  @ 4FCE
    STY digit + 4       ; 005510  @ 4FD1

    STY digit + 5       ; 005511  @ 4FD4
    INC digit + 5       ; 005512
    INC digit + 5       ; 005513
    INC digit + 5       ; 005514
    INC digit + 5       ; 005515
    INC digit + 5       ; 005516
    INC digit + 5       ; 005517
    INC digit + 5       ; 005518
    INC digit + 5       ; 005519
    STX digit + 5       ; 005510  @ 4FEF
    INC digit + 4       ; 005520

    STY digit + 5       ; 005521  @ 4FF5
    INC digit + 5       ; 005522
    INC digit + 5       ; 005523
    INC digit + 5       ; 005524
    INC digit + 5       ; 005525
    INC digit + 5       ; 005526
    INC digit + 5       ; 005527
    INC digit + 5       ; 005528
    INC digit + 5       ; 005529
    STX digit + 5       ; 005520  @ 5010
    INC digit + 4       ; 005530

    STY digit + 5       ; 005531  @ 5016
    INC digit + 5       ; 005532
    INC digit + 5       ; 005533
    INC digit + 5       ; 005534
    INC digit + 5       ; 005535
    INC digit + 5       ; 005536
    INC digit + 5       ; 005537
    INC digit + 5       ; 005538
    INC digit + 5       ; 005539
    STX digit + 5       ; 005530  @ 5031
    INC digit + 4       ; 005540

    STY digit + 5       ; 005541  @ 5037
    INC digit + 5       ; 005542
    INC digit + 5       ; 005543
    INC digit + 5       ; 005544
    INC digit + 5       ; 005545
    INC digit + 5       ; 005546
    INC digit + 5       ; 005547
    INC digit + 5       ; 005548
    INC digit + 5       ; 005549
    STX digit + 5       ; 005540  @ 5052
    INC digit + 4       ; 005550

    STY digit + 5       ; 005551  @ 5058
    INC digit + 5       ; 005552
    INC digit + 5       ; 005553
    INC digit + 5       ; 005554
    INC digit + 5       ; 005555
    INC digit + 5       ; 005556
    INC digit + 5       ; 005557
    INC digit + 5       ; 005558
    INC digit + 5       ; 005559
    STX digit + 5       ; 005550  @ 5073
    INC digit + 4       ; 005560

    STY digit + 5       ; 005561  @ 5079
    INC digit + 5       ; 005562
    INC digit + 5       ; 005563
    INC digit + 5       ; 005564
    INC digit + 5       ; 005565
    INC digit + 5       ; 005566
    INC digit + 5       ; 005567
    INC digit + 5       ; 005568
    INC digit + 5       ; 005569
    STX digit + 5       ; 005560  @ 5094
    INC digit + 4       ; 005570

    STY digit + 5       ; 005571  @ 509A
    INC digit + 5       ; 005572
    INC digit + 5       ; 005573
    INC digit + 5       ; 005574
    INC digit + 5       ; 005575
    INC digit + 5       ; 005576
    INC digit + 5       ; 005577
    INC digit + 5       ; 005578
    INC digit + 5       ; 005579
    STX digit + 5       ; 005570  @ 50B5
    INC digit + 4       ; 005580

    STY digit + 5       ; 005581  @ 50BB
    INC digit + 5       ; 005582
    INC digit + 5       ; 005583
    INC digit + 5       ; 005584
    INC digit + 5       ; 005585
    INC digit + 5       ; 005586
    INC digit + 5       ; 005587
    INC digit + 5       ; 005588
    INC digit + 5       ; 005589
    STX digit + 5       ; 005580  @ 50D6
    INC digit + 4       ; 005590

    STY digit + 5       ; 005591  @ 50DC
    INC digit + 5       ; 005592
    INC digit + 5       ; 005593
    INC digit + 5       ; 005594
    INC digit + 5       ; 005595
    INC digit + 5       ; 005596
    INC digit + 5       ; 005597
    INC digit + 5       ; 005598
    INC digit + 5       ; 005599
    STX digit + 5       ; 005590  @ 50F7
    STX digit + 4       ; 005500  @ 50FA
    INC digit + 3       ; 005600

    STY digit + 5       ; 005601  @ 5100
    INC digit + 5       ; 005602
    INC digit + 5       ; 005603
    INC digit + 5       ; 005604
    INC digit + 5       ; 005605
    INC digit + 5       ; 005606
    INC digit + 5       ; 005607
    INC digit + 5       ; 005608
    INC digit + 5       ; 005609
    STX digit + 5       ; 005600  @ 511B
    STY digit + 4       ; 005610  @ 511E

    STY digit + 5       ; 005611  @ 5121
    INC digit + 5       ; 005612
    INC digit + 5       ; 005613
    INC digit + 5       ; 005614
    INC digit + 5       ; 005615
    INC digit + 5       ; 005616
    INC digit + 5       ; 005617
    INC digit + 5       ; 005618
    INC digit + 5       ; 005619
    STX digit + 5       ; 005610  @ 513C
    INC digit + 4       ; 005620

    STY digit + 5       ; 005621  @ 5142
    INC digit + 5       ; 005622
    INC digit + 5       ; 005623
    INC digit + 5       ; 005624
    INC digit + 5       ; 005625
    INC digit + 5       ; 005626
    INC digit + 5       ; 005627
    INC digit + 5       ; 005628
    INC digit + 5       ; 005629
    STX digit + 5       ; 005620  @ 515D
    INC digit + 4       ; 005630

    STY digit + 5       ; 005631  @ 5163
    INC digit + 5       ; 005632
    INC digit + 5       ; 005633
    INC digit + 5       ; 005634
    INC digit + 5       ; 005635
    INC digit + 5       ; 005636
    INC digit + 5       ; 005637
    INC digit + 5       ; 005638
    INC digit + 5       ; 005639
    STX digit + 5       ; 005630  @ 517E
    INC digit + 4       ; 005640

    STY digit + 5       ; 005641  @ 5184
    INC digit + 5       ; 005642
    INC digit + 5       ; 005643
    INC digit + 5       ; 005644
    INC digit + 5       ; 005645
    INC digit + 5       ; 005646
    INC digit + 5       ; 005647
    INC digit + 5       ; 005648
    INC digit + 5       ; 005649
    STX digit + 5       ; 005640  @ 519F
    INC digit + 4       ; 005650

    STY digit + 5       ; 005651  @ 51A5
    INC digit + 5       ; 005652
    INC digit + 5       ; 005653
    INC digit + 5       ; 005654
    INC digit + 5       ; 005655
    INC digit + 5       ; 005656
    INC digit + 5       ; 005657
    INC digit + 5       ; 005658
    INC digit + 5       ; 005659
    STX digit + 5       ; 005650  @ 51C0
    INC digit + 4       ; 005660

    STY digit + 5       ; 005661  @ 51C6
    INC digit + 5       ; 005662
    INC digit + 5       ; 005663
    INC digit + 5       ; 005664
    INC digit + 5       ; 005665
    INC digit + 5       ; 005666
    INC digit + 5       ; 005667
    INC digit + 5       ; 005668
    INC digit + 5       ; 005669
    STX digit + 5       ; 005660  @ 51E1
    INC digit + 4       ; 005670

    STY digit + 5       ; 005671  @ 51E7
    INC digit + 5       ; 005672
    INC digit + 5       ; 005673
    INC digit + 5       ; 005674
    INC digit + 5       ; 005675
    INC digit + 5       ; 005676
    INC digit + 5       ; 005677
    INC digit + 5       ; 005678
    INC digit + 5       ; 005679
    STX digit + 5       ; 005670  @ 5202
    INC digit + 4       ; 005680

    STY digit + 5       ; 005681  @ 5208
    INC digit + 5       ; 005682
    INC digit + 5       ; 005683
    INC digit + 5       ; 005684
    INC digit + 5       ; 005685
    INC digit + 5       ; 005686
    INC digit + 5       ; 005687
    INC digit + 5       ; 005688
    INC digit + 5       ; 005689
    STX digit + 5       ; 005680  @ 5223
    INC digit + 4       ; 005690

    STY digit + 5       ; 005691  @ 5229
    INC digit + 5       ; 005692
    INC digit + 5       ; 005693
    INC digit + 5       ; 005694
    INC digit + 5       ; 005695
    INC digit + 5       ; 005696
    INC digit + 5       ; 005697
    INC digit + 5       ; 005698
    INC digit + 5       ; 005699
    STX digit + 5       ; 005690  @ 5244
    STX digit + 4       ; 005600  @ 5247
    INC digit + 3       ; 005700

    STY digit + 5       ; 005701  @ 524D
    INC digit + 5       ; 005702
    INC digit + 5       ; 005703
    INC digit + 5       ; 005704
    INC digit + 5       ; 005705
    INC digit + 5       ; 005706
    INC digit + 5       ; 005707
    INC digit + 5       ; 005708
    INC digit + 5       ; 005709
    STX digit + 5       ; 005700  @ 5268
    STY digit + 4       ; 005710  @ 526B

    STY digit + 5       ; 005711  @ 526E
    INC digit + 5       ; 005712
    INC digit + 5       ; 005713
    INC digit + 5       ; 005714
    INC digit + 5       ; 005715
    INC digit + 5       ; 005716
    INC digit + 5       ; 005717
    INC digit + 5       ; 005718
    INC digit + 5       ; 005719
    STX digit + 5       ; 005710  @ 5289
    INC digit + 4       ; 005720

    STY digit + 5       ; 005721  @ 528F
    INC digit + 5       ; 005722
    INC digit + 5       ; 005723
    INC digit + 5       ; 005724
    INC digit + 5       ; 005725
    INC digit + 5       ; 005726
    INC digit + 5       ; 005727
    INC digit + 5       ; 005728
    INC digit + 5       ; 005729
    STX digit + 5       ; 005720  @ 52AA
    INC digit + 4       ; 005730

    STY digit + 5       ; 005731  @ 52B0
    INC digit + 5       ; 005732
    INC digit + 5       ; 005733
    INC digit + 5       ; 005734
    INC digit + 5       ; 005735
    INC digit + 5       ; 005736
    INC digit + 5       ; 005737
    INC digit + 5       ; 005738
    INC digit + 5       ; 005739
    STX digit + 5       ; 005730  @ 52CB
    INC digit + 4       ; 005740

    STY digit + 5       ; 005741  @ 52D1
    INC digit + 5       ; 005742
    INC digit + 5       ; 005743
    INC digit + 5       ; 005744
    INC digit + 5       ; 005745
    INC digit + 5       ; 005746
    INC digit + 5       ; 005747
    INC digit + 5       ; 005748
    INC digit + 5       ; 005749
    STX digit + 5       ; 005740  @ 52EC
    INC digit + 4       ; 005750

    STY digit + 5       ; 005751  @ 52F2
    INC digit + 5       ; 005752
    INC digit + 5       ; 005753
    INC digit + 5       ; 005754
    INC digit + 5       ; 005755
    INC digit + 5       ; 005756
    INC digit + 5       ; 005757
    INC digit + 5       ; 005758
    INC digit + 5       ; 005759
    STX digit + 5       ; 005750  @ 530D
    INC digit + 4       ; 005760

    STY digit + 5       ; 005761  @ 5313
    INC digit + 5       ; 005762
    INC digit + 5       ; 005763
    INC digit + 5       ; 005764
    INC digit + 5       ; 005765
    INC digit + 5       ; 005766
    INC digit + 5       ; 005767
    INC digit + 5       ; 005768
    INC digit + 5       ; 005769
    STX digit + 5       ; 005760  @ 532E
    INC digit + 4       ; 005770

    STY digit + 5       ; 005771  @ 5334
    INC digit + 5       ; 005772
    INC digit + 5       ; 005773
    INC digit + 5       ; 005774
    INC digit + 5       ; 005775
    INC digit + 5       ; 005776
    INC digit + 5       ; 005777
    INC digit + 5       ; 005778
    INC digit + 5       ; 005779
    STX digit + 5       ; 005770  @ 534F
    INC digit + 4       ; 005780

    STY digit + 5       ; 005781  @ 5355
    INC digit + 5       ; 005782
    INC digit + 5       ; 005783
    INC digit + 5       ; 005784
    INC digit + 5       ; 005785
    INC digit + 5       ; 005786
    INC digit + 5       ; 005787
    INC digit + 5       ; 005788
    INC digit + 5       ; 005789
    STX digit + 5       ; 005780  @ 5370
    INC digit + 4       ; 005790

    STY digit + 5       ; 005791  @ 5376
    INC digit + 5       ; 005792
    INC digit + 5       ; 005793
    INC digit + 5       ; 005794
    INC digit + 5       ; 005795
    INC digit + 5       ; 005796
    INC digit + 5       ; 005797
    INC digit + 5       ; 005798
    INC digit + 5       ; 005799
    STX digit + 5       ; 005790  @ 5391
    STX digit + 4       ; 005700  @ 5394
    INC digit + 3       ; 005800

    STY digit + 5       ; 005801  @ 539A
    INC digit + 5       ; 005802
    INC digit + 5       ; 005803
    INC digit + 5       ; 005804
    INC digit + 5       ; 005805
    INC digit + 5       ; 005806
    INC digit + 5       ; 005807
    INC digit + 5       ; 005808
    INC digit + 5       ; 005809
    STX digit + 5       ; 005800  @ 53B5
    STY digit + 4       ; 005810  @ 53B8

    STY digit + 5       ; 005811  @ 53BB
    INC digit + 5       ; 005812
    INC digit + 5       ; 005813
    INC digit + 5       ; 005814
    INC digit + 5       ; 005815
    INC digit + 5       ; 005816
    INC digit + 5       ; 005817
    INC digit + 5       ; 005818
    INC digit + 5       ; 005819
    STX digit + 5       ; 005810  @ 53D6
    INC digit + 4       ; 005820

    STY digit + 5       ; 005821  @ 53DC
    INC digit + 5       ; 005822
    INC digit + 5       ; 005823
    INC digit + 5       ; 005824
    INC digit + 5       ; 005825
    INC digit + 5       ; 005826
    INC digit + 5       ; 005827
    INC digit + 5       ; 005828
    INC digit + 5       ; 005829
    STX digit + 5       ; 005820  @ 53F7
    INC digit + 4       ; 005830

    STY digit + 5       ; 005831  @ 53FD
    INC digit + 5       ; 005832
    INC digit + 5       ; 005833
    INC digit + 5       ; 005834
    INC digit + 5       ; 005835
    INC digit + 5       ; 005836
    INC digit + 5       ; 005837
    INC digit + 5       ; 005838
    INC digit + 5       ; 005839
    STX digit + 5       ; 005830  @ 5418
    INC digit + 4       ; 005840

    STY digit + 5       ; 005841  @ 541E
    INC digit + 5       ; 005842
    INC digit + 5       ; 005843
    INC digit + 5       ; 005844
    INC digit + 5       ; 005845
    INC digit + 5       ; 005846
    INC digit + 5       ; 005847
    INC digit + 5       ; 005848
    INC digit + 5       ; 005849
    STX digit + 5       ; 005840  @ 5439
    INC digit + 4       ; 005850

    STY digit + 5       ; 005851  @ 543F
    INC digit + 5       ; 005852
    INC digit + 5       ; 005853
    INC digit + 5       ; 005854
    INC digit + 5       ; 005855
    INC digit + 5       ; 005856
    INC digit + 5       ; 005857
    INC digit + 5       ; 005858
    INC digit + 5       ; 005859
    STX digit + 5       ; 005850  @ 545A
    INC digit + 4       ; 005860

    STY digit + 5       ; 005861  @ 5460
    INC digit + 5       ; 005862
    INC digit + 5       ; 005863
    INC digit + 5       ; 005864
    INC digit + 5       ; 005865
    INC digit + 5       ; 005866
    INC digit + 5       ; 005867
    INC digit + 5       ; 005868
    INC digit + 5       ; 005869
    STX digit + 5       ; 005860  @ 547B
    INC digit + 4       ; 005870

    STY digit + 5       ; 005871  @ 5481
    INC digit + 5       ; 005872
    INC digit + 5       ; 005873
    INC digit + 5       ; 005874
    INC digit + 5       ; 005875
    INC digit + 5       ; 005876
    INC digit + 5       ; 005877
    INC digit + 5       ; 005878
    INC digit + 5       ; 005879
    STX digit + 5       ; 005870  @ 549C
    INC digit + 4       ; 005880

    STY digit + 5       ; 005881  @ 54A2
    INC digit + 5       ; 005882
    INC digit + 5       ; 005883
    INC digit + 5       ; 005884
    INC digit + 5       ; 005885
    INC digit + 5       ; 005886
    INC digit + 5       ; 005887
    INC digit + 5       ; 005888
    INC digit + 5       ; 005889
    STX digit + 5       ; 005880  @ 54BD
    INC digit + 4       ; 005890

    STY digit + 5       ; 005891  @ 54C3
    INC digit + 5       ; 005892
    INC digit + 5       ; 005893
    INC digit + 5       ; 005894
    INC digit + 5       ; 005895
    INC digit + 5       ; 005896
    INC digit + 5       ; 005897
    INC digit + 5       ; 005898
    INC digit + 5       ; 005899
    STX digit + 5       ; 005890  @ 54DE
    STX digit + 4       ; 005800  @ 54E1
    INC digit + 3       ; 005900

    STY digit + 5       ; 005901  @ 54E7
    INC digit + 5       ; 005902
    INC digit + 5       ; 005903
    INC digit + 5       ; 005904
    INC digit + 5       ; 005905
    INC digit + 5       ; 005906
    INC digit + 5       ; 005907
    INC digit + 5       ; 005908
    INC digit + 5       ; 005909
    STX digit + 5       ; 005900  @ 5502
    STY digit + 4       ; 005910  @ 5505

    STY digit + 5       ; 005911  @ 5508
    INC digit + 5       ; 005912
    INC digit + 5       ; 005913
    INC digit + 5       ; 005914
    INC digit + 5       ; 005915
    INC digit + 5       ; 005916
    INC digit + 5       ; 005917
    INC digit + 5       ; 005918
    INC digit + 5       ; 005919
    STX digit + 5       ; 005910  @ 5523
    INC digit + 4       ; 005920

    STY digit + 5       ; 005921  @ 5529
    INC digit + 5       ; 005922
    INC digit + 5       ; 005923
    INC digit + 5       ; 005924
    INC digit + 5       ; 005925
    INC digit + 5       ; 005926
    INC digit + 5       ; 005927
    INC digit + 5       ; 005928
    INC digit + 5       ; 005929
    STX digit + 5       ; 005920  @ 5544
    INC digit + 4       ; 005930

    STY digit + 5       ; 005931  @ 554A
    INC digit + 5       ; 005932
    INC digit + 5       ; 005933
    INC digit + 5       ; 005934
    INC digit + 5       ; 005935
    INC digit + 5       ; 005936
    INC digit + 5       ; 005937
    INC digit + 5       ; 005938
    INC digit + 5       ; 005939
    STX digit + 5       ; 005930  @ 5565
    INC digit + 4       ; 005940

    STY digit + 5       ; 005941  @ 556B
    INC digit + 5       ; 005942
    INC digit + 5       ; 005943
    INC digit + 5       ; 005944
    INC digit + 5       ; 005945
    INC digit + 5       ; 005946
    INC digit + 5       ; 005947
    INC digit + 5       ; 005948
    INC digit + 5       ; 005949
    STX digit + 5       ; 005940  @ 5586
    INC digit + 4       ; 005950

    STY digit + 5       ; 005951  @ 558C
    INC digit + 5       ; 005952
    INC digit + 5       ; 005953
    INC digit + 5       ; 005954
    INC digit + 5       ; 005955
    INC digit + 5       ; 005956
    INC digit + 5       ; 005957
    INC digit + 5       ; 005958
    INC digit + 5       ; 005959
    STX digit + 5       ; 005950  @ 55A7
    INC digit + 4       ; 005960

    STY digit + 5       ; 005961  @ 55AD
    INC digit + 5       ; 005962
    INC digit + 5       ; 005963
    INC digit + 5       ; 005964
    INC digit + 5       ; 005965
    INC digit + 5       ; 005966
    INC digit + 5       ; 005967
    INC digit + 5       ; 005968
    INC digit + 5       ; 005969
    STX digit + 5       ; 005960  @ 55C8
    INC digit + 4       ; 005970

    STY digit + 5       ; 005971  @ 55CE
    INC digit + 5       ; 005972
    INC digit + 5       ; 005973
    INC digit + 5       ; 005974
    INC digit + 5       ; 005975
    INC digit + 5       ; 005976
    INC digit + 5       ; 005977
    INC digit + 5       ; 005978
    INC digit + 5       ; 005979
    STX digit + 5       ; 005970  @ 55E9
    INC digit + 4       ; 005980

    STY digit + 5       ; 005981  @ 55EF
    INC digit + 5       ; 005982
    INC digit + 5       ; 005983
    INC digit + 5       ; 005984
    INC digit + 5       ; 005985
    INC digit + 5       ; 005986
    INC digit + 5       ; 005987
    INC digit + 5       ; 005988
    INC digit + 5       ; 005989
    STX digit + 5       ; 005980  @ 560A
    INC digit + 4       ; 005990

    STY digit + 5       ; 005991  @ 5610
    INC digit + 5       ; 005992
    INC digit + 5       ; 005993
    INC digit + 5       ; 005994
    INC digit + 5       ; 005995
    INC digit + 5       ; 005996
    INC digit + 5       ; 005997
    INC digit + 5       ; 005998
    INC digit + 5       ; 005999
    STX digit + 5       ; 005990  @ 562B
    STX digit + 4       ; 005900  @ 562E
    STX digit + 3       ; 005000  @ 5631
    INC digit + 2       ; 006000

    STY digit + 5       ; 006001  @ 5637
    INC digit + 5       ; 006002
    INC digit + 5       ; 006003
    INC digit + 5       ; 006004
    INC digit + 5       ; 006005
    INC digit + 5       ; 006006
    INC digit + 5       ; 006007
    INC digit + 5       ; 006008
    INC digit + 5       ; 006009
    STX digit + 5       ; 006000  @ 5652
    STY digit + 4       ; 006010  @ 5655

    STY digit + 5       ; 006011  @ 5658
    INC digit + 5       ; 006012
    INC digit + 5       ; 006013
    INC digit + 5       ; 006014
    INC digit + 5       ; 006015
    INC digit + 5       ; 006016
    INC digit + 5       ; 006017
    INC digit + 5       ; 006018
    INC digit + 5       ; 006019
    STX digit + 5       ; 006010  @ 5673
    INC digit + 4       ; 006020

    STY digit + 5       ; 006021  @ 5679
    INC digit + 5       ; 006022
    INC digit + 5       ; 006023
    INC digit + 5       ; 006024
    INC digit + 5       ; 006025
    INC digit + 5       ; 006026
    INC digit + 5       ; 006027
    INC digit + 5       ; 006028
    INC digit + 5       ; 006029
    STX digit + 5       ; 006020  @ 5694
    INC digit + 4       ; 006030

    STY digit + 5       ; 006031  @ 569A
    INC digit + 5       ; 006032
    INC digit + 5       ; 006033
    INC digit + 5       ; 006034
    INC digit + 5       ; 006035
    INC digit + 5       ; 006036
    INC digit + 5       ; 006037
    INC digit + 5       ; 006038
    INC digit + 5       ; 006039
    STX digit + 5       ; 006030  @ 56B5
    INC digit + 4       ; 006040

    STY digit + 5       ; 006041  @ 56BB
    INC digit + 5       ; 006042
    INC digit + 5       ; 006043
    INC digit + 5       ; 006044
    INC digit + 5       ; 006045
    INC digit + 5       ; 006046
    INC digit + 5       ; 006047
    INC digit + 5       ; 006048
    INC digit + 5       ; 006049
    STX digit + 5       ; 006040  @ 56D6
    INC digit + 4       ; 006050

    STY digit + 5       ; 006051  @ 56DC
    INC digit + 5       ; 006052
    INC digit + 5       ; 006053
    INC digit + 5       ; 006054
    INC digit + 5       ; 006055
    INC digit + 5       ; 006056
    INC digit + 5       ; 006057
    INC digit + 5       ; 006058
    INC digit + 5       ; 006059
    STX digit + 5       ; 006050  @ 56F7
    INC digit + 4       ; 006060

    STY digit + 5       ; 006061  @ 56FD
    INC digit + 5       ; 006062
    INC digit + 5       ; 006063
    INC digit + 5       ; 006064
    INC digit + 5       ; 006065
    INC digit + 5       ; 006066
    INC digit + 5       ; 006067
    INC digit + 5       ; 006068
    INC digit + 5       ; 006069
    STX digit + 5       ; 006060  @ 5718
    INC digit + 4       ; 006070

    STY digit + 5       ; 006071  @ 571E
    INC digit + 5       ; 006072
    INC digit + 5       ; 006073
    INC digit + 5       ; 006074
    INC digit + 5       ; 006075
    INC digit + 5       ; 006076
    INC digit + 5       ; 006077
    INC digit + 5       ; 006078
    INC digit + 5       ; 006079
    STX digit + 5       ; 006070  @ 5739
    INC digit + 4       ; 006080

    STY digit + 5       ; 006081  @ 573F
    INC digit + 5       ; 006082
    INC digit + 5       ; 006083
    INC digit + 5       ; 006084
    INC digit + 5       ; 006085
    INC digit + 5       ; 006086
    INC digit + 5       ; 006087
    INC digit + 5       ; 006088
    INC digit + 5       ; 006089
    STX digit + 5       ; 006080  @ 575A
    INC digit + 4       ; 006090

    STY digit + 5       ; 006091  @ 5760
    INC digit + 5       ; 006092
    INC digit + 5       ; 006093
    INC digit + 5       ; 006094
    INC digit + 5       ; 006095
    INC digit + 5       ; 006096
    INC digit + 5       ; 006097
    INC digit + 5       ; 006098
    INC digit + 5       ; 006099
    STX digit + 5       ; 006090  @ 577B
    STX digit + 4       ; 006000  @ 577E
    STY digit + 3       ; 006100  @ 5781

    STY digit + 5       ; 006101  @ 5784
    INC digit + 5       ; 006102
    INC digit + 5       ; 006103
    INC digit + 5       ; 006104
    INC digit + 5       ; 006105
    INC digit + 5       ; 006106
    INC digit + 5       ; 006107
    INC digit + 5       ; 006108
    INC digit + 5       ; 006109
    STX digit + 5       ; 006100  @ 579F
    STY digit + 4       ; 006110  @ 57A2

    STY digit + 5       ; 006111  @ 57A5
    INC digit + 5       ; 006112
    INC digit + 5       ; 006113
    INC digit + 5       ; 006114
    INC digit + 5       ; 006115
    INC digit + 5       ; 006116
    INC digit + 5       ; 006117
    INC digit + 5       ; 006118
    INC digit + 5       ; 006119
    STX digit + 5       ; 006110  @ 57C0
    INC digit + 4       ; 006120

    STY digit + 5       ; 006121  @ 57C6
    INC digit + 5       ; 006122
    INC digit + 5       ; 006123
    INC digit + 5       ; 006124
    INC digit + 5       ; 006125
    INC digit + 5       ; 006126
    INC digit + 5       ; 006127
    INC digit + 5       ; 006128
    INC digit + 5       ; 006129
    STX digit + 5       ; 006120  @ 57E1
    INC digit + 4       ; 006130

    STY digit + 5       ; 006131  @ 57E7
    INC digit + 5       ; 006132
    INC digit + 5       ; 006133
    INC digit + 5       ; 006134
    INC digit + 5       ; 006135
    INC digit + 5       ; 006136
    INC digit + 5       ; 006137
    INC digit + 5       ; 006138
    INC digit + 5       ; 006139
    STX digit + 5       ; 006130  @ 5802
    INC digit + 4       ; 006140

    STY digit + 5       ; 006141  @ 5808
    INC digit + 5       ; 006142
    INC digit + 5       ; 006143
    INC digit + 5       ; 006144
    INC digit + 5       ; 006145
    INC digit + 5       ; 006146
    INC digit + 5       ; 006147
    INC digit + 5       ; 006148
    INC digit + 5       ; 006149
    STX digit + 5       ; 006140  @ 5823
    INC digit + 4       ; 006150

    STY digit + 5       ; 006151  @ 5829
    INC digit + 5       ; 006152
    INC digit + 5       ; 006153
    INC digit + 5       ; 006154
    INC digit + 5       ; 006155
    INC digit + 5       ; 006156
    INC digit + 5       ; 006157
    INC digit + 5       ; 006158
    INC digit + 5       ; 006159
    STX digit + 5       ; 006150  @ 5844
    INC digit + 4       ; 006160

    STY digit + 5       ; 006161  @ 584A
    INC digit + 5       ; 006162
    INC digit + 5       ; 006163
    INC digit + 5       ; 006164
    INC digit + 5       ; 006165
    INC digit + 5       ; 006166
    INC digit + 5       ; 006167
    INC digit + 5       ; 006168
    INC digit + 5       ; 006169
    STX digit + 5       ; 006160  @ 5865
    INC digit + 4       ; 006170

    STY digit + 5       ; 006171  @ 586B
    INC digit + 5       ; 006172
    INC digit + 5       ; 006173
    INC digit + 5       ; 006174
    INC digit + 5       ; 006175
    INC digit + 5       ; 006176
    INC digit + 5       ; 006177
    INC digit + 5       ; 006178
    INC digit + 5       ; 006179
    STX digit + 5       ; 006170  @ 5886
    INC digit + 4       ; 006180

    STY digit + 5       ; 006181  @ 588C
    INC digit + 5       ; 006182
    INC digit + 5       ; 006183
    INC digit + 5       ; 006184
    INC digit + 5       ; 006185
    INC digit + 5       ; 006186
    INC digit + 5       ; 006187
    INC digit + 5       ; 006188
    INC digit + 5       ; 006189
    STX digit + 5       ; 006180  @ 58A7
    INC digit + 4       ; 006190

    STY digit + 5       ; 006191  @ 58AD
    INC digit + 5       ; 006192
    INC digit + 5       ; 006193
    INC digit + 5       ; 006194
    INC digit + 5       ; 006195
    INC digit + 5       ; 006196
    INC digit + 5       ; 006197
    INC digit + 5       ; 006198
    INC digit + 5       ; 006199
    STX digit + 5       ; 006190  @ 58C8
    STX digit + 4       ; 006100  @ 58CB
    INC digit + 3       ; 006200

    STY digit + 5       ; 006201  @ 58D1
    INC digit + 5       ; 006202
    INC digit + 5       ; 006203
    INC digit + 5       ; 006204
    INC digit + 5       ; 006205
    INC digit + 5       ; 006206
    INC digit + 5       ; 006207
    INC digit + 5       ; 006208
    INC digit + 5       ; 006209
    STX digit + 5       ; 006200  @ 58EC
    STY digit + 4       ; 006210  @ 58EF

    STY digit + 5       ; 006211  @ 58F2
    INC digit + 5       ; 006212
    INC digit + 5       ; 006213
    INC digit + 5       ; 006214
    INC digit + 5       ; 006215
    INC digit + 5       ; 006216
    INC digit + 5       ; 006217
    INC digit + 5       ; 006218
    INC digit + 5       ; 006219
    STX digit + 5       ; 006210  @ 590D
    INC digit + 4       ; 006220

    STY digit + 5       ; 006221  @ 5913
    INC digit + 5       ; 006222
    INC digit + 5       ; 006223
    INC digit + 5       ; 006224
    INC digit + 5       ; 006225
    INC digit + 5       ; 006226
    INC digit + 5       ; 006227
    INC digit + 5       ; 006228
    INC digit + 5       ; 006229
    STX digit + 5       ; 006220  @ 592E
    INC digit + 4       ; 006230

    STY digit + 5       ; 006231  @ 5934
    INC digit + 5       ; 006232
    INC digit + 5       ; 006233
    INC digit + 5       ; 006234
    INC digit + 5       ; 006235
    INC digit + 5       ; 006236
    INC digit + 5       ; 006237
    INC digit + 5       ; 006238
    INC digit + 5       ; 006239
    STX digit + 5       ; 006230  @ 594F
    INC digit + 4       ; 006240

    STY digit + 5       ; 006241  @ 5955
    INC digit + 5       ; 006242
    INC digit + 5       ; 006243
    INC digit + 5       ; 006244
    INC digit + 5       ; 006245
    INC digit + 5       ; 006246
    INC digit + 5       ; 006247
    INC digit + 5       ; 006248
    INC digit + 5       ; 006249
    STX digit + 5       ; 006240  @ 5970
    INC digit + 4       ; 006250

    STY digit + 5       ; 006251  @ 5976
    INC digit + 5       ; 006252
    INC digit + 5       ; 006253
    INC digit + 5       ; 006254
    INC digit + 5       ; 006255
    INC digit + 5       ; 006256
    INC digit + 5       ; 006257
    INC digit + 5       ; 006258
    INC digit + 5       ; 006259
    STX digit + 5       ; 006250  @ 5991
    INC digit + 4       ; 006260

    STY digit + 5       ; 006261  @ 5997
    INC digit + 5       ; 006262
    INC digit + 5       ; 006263
    INC digit + 5       ; 006264
    INC digit + 5       ; 006265
    INC digit + 5       ; 006266
    INC digit + 5       ; 006267
    INC digit + 5       ; 006268
    INC digit + 5       ; 006269
    STX digit + 5       ; 006260  @ 59B2
    INC digit + 4       ; 006270

    STY digit + 5       ; 006271  @ 59B8
    INC digit + 5       ; 006272
    INC digit + 5       ; 006273
    INC digit + 5       ; 006274
    INC digit + 5       ; 006275
    INC digit + 5       ; 006276
    INC digit + 5       ; 006277
    INC digit + 5       ; 006278
    INC digit + 5       ; 006279
    STX digit + 5       ; 006270  @ 59D3
    INC digit + 4       ; 006280

    STY digit + 5       ; 006281  @ 59D9
    INC digit + 5       ; 006282
    INC digit + 5       ; 006283
    INC digit + 5       ; 006284
    INC digit + 5       ; 006285
    INC digit + 5       ; 006286
    INC digit + 5       ; 006287
    INC digit + 5       ; 006288
    INC digit + 5       ; 006289
    STX digit + 5       ; 006280  @ 59F4
    INC digit + 4       ; 006290

    STY digit + 5       ; 006291  @ 59FA
    INC digit + 5       ; 006292
    INC digit + 5       ; 006293
    INC digit + 5       ; 006294
    INC digit + 5       ; 006295
    INC digit + 5       ; 006296
    INC digit + 5       ; 006297
    INC digit + 5       ; 006298
    INC digit + 5       ; 006299
    STX digit + 5       ; 006290  @ 5A15
    STX digit + 4       ; 006200  @ 5A18
    INC digit + 3       ; 006300

    STY digit + 5       ; 006301  @ 5A1E
    INC digit + 5       ; 006302
    INC digit + 5       ; 006303
    INC digit + 5       ; 006304
    INC digit + 5       ; 006305
    INC digit + 5       ; 006306
    INC digit + 5       ; 006307
    INC digit + 5       ; 006308
    INC digit + 5       ; 006309
    STX digit + 5       ; 006300  @ 5A39
    STY digit + 4       ; 006310  @ 5A3C

    STY digit + 5       ; 006311  @ 5A3F
    INC digit + 5       ; 006312
    INC digit + 5       ; 006313
    INC digit + 5       ; 006314
    INC digit + 5       ; 006315
    INC digit + 5       ; 006316
    INC digit + 5       ; 006317
    INC digit + 5       ; 006318
    INC digit + 5       ; 006319
    STX digit + 5       ; 006310  @ 5A5A
    INC digit + 4       ; 006320

    STY digit + 5       ; 006321  @ 5A60
    INC digit + 5       ; 006322
    INC digit + 5       ; 006323
    INC digit + 5       ; 006324
    INC digit + 5       ; 006325
    INC digit + 5       ; 006326
    INC digit + 5       ; 006327
    INC digit + 5       ; 006328
    INC digit + 5       ; 006329
    STX digit + 5       ; 006320  @ 5A7B
    INC digit + 4       ; 006330

    STY digit + 5       ; 006331  @ 5A81
    INC digit + 5       ; 006332
    INC digit + 5       ; 006333
    INC digit + 5       ; 006334
    INC digit + 5       ; 006335
    INC digit + 5       ; 006336
    INC digit + 5       ; 006337
    INC digit + 5       ; 006338
    INC digit + 5       ; 006339
    STX digit + 5       ; 006330  @ 5A9C
    INC digit + 4       ; 006340

    STY digit + 5       ; 006341  @ 5AA2
    INC digit + 5       ; 006342
    INC digit + 5       ; 006343
    INC digit + 5       ; 006344
    INC digit + 5       ; 006345
    INC digit + 5       ; 006346
    INC digit + 5       ; 006347
    INC digit + 5       ; 006348
    INC digit + 5       ; 006349
    STX digit + 5       ; 006340  @ 5ABD
    INC digit + 4       ; 006350

    STY digit + 5       ; 006351  @ 5AC3
    INC digit + 5       ; 006352
    INC digit + 5       ; 006353
    INC digit + 5       ; 006354
    INC digit + 5       ; 006355
    INC digit + 5       ; 006356
    INC digit + 5       ; 006357
    INC digit + 5       ; 006358
    INC digit + 5       ; 006359
    STX digit + 5       ; 006350  @ 5ADE
    INC digit + 4       ; 006360

    STY digit + 5       ; 006361  @ 5AE4
    INC digit + 5       ; 006362
    INC digit + 5       ; 006363
    INC digit + 5       ; 006364
    INC digit + 5       ; 006365
    INC digit + 5       ; 006366
    INC digit + 5       ; 006367
    INC digit + 5       ; 006368
    INC digit + 5       ; 006369
    STX digit + 5       ; 006360  @ 5AFF
    INC digit + 4       ; 006370

    STY digit + 5       ; 006371  @ 5B05
    INC digit + 5       ; 006372
    INC digit + 5       ; 006373
    INC digit + 5       ; 006374
    INC digit + 5       ; 006375
    INC digit + 5       ; 006376
    INC digit + 5       ; 006377
    INC digit + 5       ; 006378
    INC digit + 5       ; 006379
    STX digit + 5       ; 006370  @ 5B20
    INC digit + 4       ; 006380

    STY digit + 5       ; 006381  @ 5B26
    INC digit + 5       ; 006382
    INC digit + 5       ; 006383
    INC digit + 5       ; 006384
    INC digit + 5       ; 006385
    INC digit + 5       ; 006386
    INC digit + 5       ; 006387
    INC digit + 5       ; 006388
    INC digit + 5       ; 006389
    STX digit + 5       ; 006380  @ 5B41
    INC digit + 4       ; 006390

    STY digit + 5       ; 006391  @ 5B47
    INC digit + 5       ; 006392
    INC digit + 5       ; 006393
    INC digit + 5       ; 006394
    INC digit + 5       ; 006395
    INC digit + 5       ; 006396
    INC digit + 5       ; 006397
    INC digit + 5       ; 006398
    INC digit + 5       ; 006399
    STX digit + 5       ; 006390  @ 5B62
    STX digit + 4       ; 006300  @ 5B65
    INC digit + 3       ; 006400

    STY digit + 5       ; 006401  @ 5B6B
    INC digit + 5       ; 006402
    INC digit + 5       ; 006403
    INC digit + 5       ; 006404
    INC digit + 5       ; 006405
    INC digit + 5       ; 006406
    INC digit + 5       ; 006407
    INC digit + 5       ; 006408
    INC digit + 5       ; 006409
    STX digit + 5       ; 006400  @ 5B86
    STY digit + 4       ; 006410  @ 5B89

    STY digit + 5       ; 006411  @ 5B8C
    INC digit + 5       ; 006412
    INC digit + 5       ; 006413
    INC digit + 5       ; 006414
    INC digit + 5       ; 006415
    INC digit + 5       ; 006416
    INC digit + 5       ; 006417
    INC digit + 5       ; 006418
    INC digit + 5       ; 006419
    STX digit + 5       ; 006410  @ 5BA7
    INC digit + 4       ; 006420

    STY digit + 5       ; 006421  @ 5BAD
    INC digit + 5       ; 006422
    INC digit + 5       ; 006423
    INC digit + 5       ; 006424
    INC digit + 5       ; 006425
    INC digit + 5       ; 006426
    INC digit + 5       ; 006427
    INC digit + 5       ; 006428
    INC digit + 5       ; 006429
    STX digit + 5       ; 006420  @ 5BC8
    INC digit + 4       ; 006430

    STY digit + 5       ; 006431  @ 5BCE
    INC digit + 5       ; 006432
    INC digit + 5       ; 006433
    INC digit + 5       ; 006434
    INC digit + 5       ; 006435
    INC digit + 5       ; 006436
    INC digit + 5       ; 006437
    INC digit + 5       ; 006438
    INC digit + 5       ; 006439
    STX digit + 5       ; 006430  @ 5BE9
    INC digit + 4       ; 006440

    STY digit + 5       ; 006441  @ 5BEF
    INC digit + 5       ; 006442
    INC digit + 5       ; 006443
    INC digit + 5       ; 006444
    INC digit + 5       ; 006445
    INC digit + 5       ; 006446
    INC digit + 5       ; 006447
    INC digit + 5       ; 006448
    INC digit + 5       ; 006449
    STX digit + 5       ; 006440  @ 5C0A
    INC digit + 4       ; 006450

    STY digit + 5       ; 006451  @ 5C10
    INC digit + 5       ; 006452
    INC digit + 5       ; 006453
    INC digit + 5       ; 006454
    INC digit + 5       ; 006455
    INC digit + 5       ; 006456
    INC digit + 5       ; 006457
    INC digit + 5       ; 006458
    INC digit + 5       ; 006459
    STX digit + 5       ; 006450  @ 5C2B
    INC digit + 4       ; 006460

    STY digit + 5       ; 006461  @ 5C31
    INC digit + 5       ; 006462
    INC digit + 5       ; 006463
    INC digit + 5       ; 006464
    INC digit + 5       ; 006465
    INC digit + 5       ; 006466
    INC digit + 5       ; 006467
    INC digit + 5       ; 006468
    INC digit + 5       ; 006469
    STX digit + 5       ; 006460  @ 5C4C
    INC digit + 4       ; 006470

    STY digit + 5       ; 006471  @ 5C52
    INC digit + 5       ; 006472
    INC digit + 5       ; 006473
    INC digit + 5       ; 006474
    INC digit + 5       ; 006475
    INC digit + 5       ; 006476
    INC digit + 5       ; 006477
    INC digit + 5       ; 006478
    INC digit + 5       ; 006479
    STX digit + 5       ; 006470  @ 5C6D
    INC digit + 4       ; 006480

    STY digit + 5       ; 006481  @ 5C73
    INC digit + 5       ; 006482
    INC digit + 5       ; 006483
    INC digit + 5       ; 006484
    INC digit + 5       ; 006485
    INC digit + 5       ; 006486
    INC digit + 5       ; 006487
    INC digit + 5       ; 006488
    INC digit + 5       ; 006489
    STX digit + 5       ; 006480  @ 5C8E
    INC digit + 4       ; 006490

    STY digit + 5       ; 006491  @ 5C94
    INC digit + 5       ; 006492
    INC digit + 5       ; 006493
    INC digit + 5       ; 006494
    INC digit + 5       ; 006495
    INC digit + 5       ; 006496
    INC digit + 5       ; 006497
    INC digit + 5       ; 006498
    INC digit + 5       ; 006499
    STX digit + 5       ; 006490  @ 5CAF
    STX digit + 4       ; 006400  @ 5CB2
    INC digit + 3       ; 006500

    STY digit + 5       ; 006501  @ 5CB8
    INC digit + 5       ; 006502
    INC digit + 5       ; 006503
    INC digit + 5       ; 006504
    INC digit + 5       ; 006505
    INC digit + 5       ; 006506
    INC digit + 5       ; 006507
    INC digit + 5       ; 006508
    INC digit + 5       ; 006509
    STX digit + 5       ; 006500  @ 5CD3
    STY digit + 4       ; 006510  @ 5CD6

    STY digit + 5       ; 006511  @ 5CD9
    INC digit + 5       ; 006512
    INC digit + 5       ; 006513
    INC digit + 5       ; 006514
    INC digit + 5       ; 006515
    INC digit + 5       ; 006516
    INC digit + 5       ; 006517
    INC digit + 5       ; 006518
    INC digit + 5       ; 006519
    STX digit + 5       ; 006510  @ 5CF4
    INC digit + 4       ; 006520

    STY digit + 5       ; 006521  @ 5CFA
    INC digit + 5       ; 006522
    INC digit + 5       ; 006523
    INC digit + 5       ; 006524
    INC digit + 5       ; 006525
    INC digit + 5       ; 006526
    INC digit + 5       ; 006527
    INC digit + 5       ; 006528
    INC digit + 5       ; 006529
    STX digit + 5       ; 006520  @ 5D15
    INC digit + 4       ; 006530

    STY digit + 5       ; 006531  @ 5D1B
    INC digit + 5       ; 006532
    INC digit + 5       ; 006533
    INC digit + 5       ; 006534
    INC digit + 5       ; 006535
    INC digit + 5       ; 006536
    INC digit + 5       ; 006537
    INC digit + 5       ; 006538
    INC digit + 5       ; 006539
    STX digit + 5       ; 006530  @ 5D36
    INC digit + 4       ; 006540

    STY digit + 5       ; 006541  @ 5D3C
    INC digit + 5       ; 006542
    INC digit + 5       ; 006543
    INC digit + 5       ; 006544
    INC digit + 5       ; 006545
    INC digit + 5       ; 006546
    INC digit + 5       ; 006547
    INC digit + 5       ; 006548
    INC digit + 5       ; 006549
    STX digit + 5       ; 006540  @ 5D57
    INC digit + 4       ; 006550

    STY digit + 5       ; 006551  @ 5D5D
    INC digit + 5       ; 006552
    INC digit + 5       ; 006553
    INC digit + 5       ; 006554
    INC digit + 5       ; 006555
    INC digit + 5       ; 006556
    INC digit + 5       ; 006557
    INC digit + 5       ; 006558
    INC digit + 5       ; 006559
    STX digit + 5       ; 006550  @ 5D78
    INC digit + 4       ; 006560

    STY digit + 5       ; 006561  @ 5D7E
    INC digit + 5       ; 006562
    INC digit + 5       ; 006563
    INC digit + 5       ; 006564
    INC digit + 5       ; 006565
    INC digit + 5       ; 006566
    INC digit + 5       ; 006567
    INC digit + 5       ; 006568
    INC digit + 5       ; 006569
    STX digit + 5       ; 006560  @ 5D99
    INC digit + 4       ; 006570

    STY digit + 5       ; 006571  @ 5D9F
    INC digit + 5       ; 006572
    INC digit + 5       ; 006573
    INC digit + 5       ; 006574
    INC digit + 5       ; 006575
    INC digit + 5       ; 006576
    INC digit + 5       ; 006577
    INC digit + 5       ; 006578
    INC digit + 5       ; 006579
    STX digit + 5       ; 006570  @ 5DBA
    INC digit + 4       ; 006580

    STY digit + 5       ; 006581  @ 5DC0
    INC digit + 5       ; 006582
    INC digit + 5       ; 006583
    INC digit + 5       ; 006584
    INC digit + 5       ; 006585
    INC digit + 5       ; 006586
    INC digit + 5       ; 006587
    INC digit + 5       ; 006588
    INC digit + 5       ; 006589
    STX digit + 5       ; 006580  @ 5DDB
    INC digit + 4       ; 006590

    STY digit + 5       ; 006591  @ 5DE1
    INC digit + 5       ; 006592
    INC digit + 5       ; 006593
    INC digit + 5       ; 006594
    INC digit + 5       ; 006595
    INC digit + 5       ; 006596
    INC digit + 5       ; 006597
    INC digit + 5       ; 006598
    INC digit + 5       ; 006599
    STX digit + 5       ; 006590  @ 5DFC
    STX digit + 4       ; 006500  @ 5DFF
    INC digit + 3       ; 006600

    STY digit + 5       ; 006601  @ 5E05
    INC digit + 5       ; 006602
    INC digit + 5       ; 006603
    INC digit + 5       ; 006604
    INC digit + 5       ; 006605
    INC digit + 5       ; 006606
    INC digit + 5       ; 006607
    INC digit + 5       ; 006608
    INC digit + 5       ; 006609
    STX digit + 5       ; 006600  @ 5E20
    STY digit + 4       ; 006610  @ 5E23

    STY digit + 5       ; 006611  @ 5E26
    INC digit + 5       ; 006612
    INC digit + 5       ; 006613
    INC digit + 5       ; 006614
    INC digit + 5       ; 006615
    INC digit + 5       ; 006616
    INC digit + 5       ; 006617
    INC digit + 5       ; 006618
    INC digit + 5       ; 006619
    STX digit + 5       ; 006610  @ 5E41
    INC digit + 4       ; 006620

    STY digit + 5       ; 006621  @ 5E47
    INC digit + 5       ; 006622
    INC digit + 5       ; 006623
    INC digit + 5       ; 006624
    INC digit + 5       ; 006625
    INC digit + 5       ; 006626
    INC digit + 5       ; 006627
    INC digit + 5       ; 006628
    INC digit + 5       ; 006629
    STX digit + 5       ; 006620  @ 5E62
    INC digit + 4       ; 006630

    STY digit + 5       ; 006631  @ 5E68
    INC digit + 5       ; 006632
    INC digit + 5       ; 006633
    INC digit + 5       ; 006634
    INC digit + 5       ; 006635
    INC digit + 5       ; 006636
    INC digit + 5       ; 006637
    INC digit + 5       ; 006638
    INC digit + 5       ; 006639
    STX digit + 5       ; 006630  @ 5E83
    INC digit + 4       ; 006640

    STY digit + 5       ; 006641  @ 5E89
    INC digit + 5       ; 006642
    INC digit + 5       ; 006643
    INC digit + 5       ; 006644
    INC digit + 5       ; 006645
    INC digit + 5       ; 006646
    INC digit + 5       ; 006647
    INC digit + 5       ; 006648
    INC digit + 5       ; 006649
    STX digit + 5       ; 006640  @ 5EA4
    INC digit + 4       ; 006650

    STY digit + 5       ; 006651  @ 5EAA
    INC digit + 5       ; 006652
    INC digit + 5       ; 006653
    INC digit + 5       ; 006654
    INC digit + 5       ; 006655
    INC digit + 5       ; 006656
    INC digit + 5       ; 006657
    INC digit + 5       ; 006658
    INC digit + 5       ; 006659
    STX digit + 5       ; 006650  @ 5EC5
    INC digit + 4       ; 006660

    STY digit + 5       ; 006661  @ 5ECB
    INC digit + 5       ; 006662
    INC digit + 5       ; 006663
    INC digit + 5       ; 006664
    INC digit + 5       ; 006665
    INC digit + 5       ; 006666
    INC digit + 5       ; 006667
    INC digit + 5       ; 006668
    INC digit + 5       ; 006669
    STX digit + 5       ; 006660  @ 5EE6
    INC digit + 4       ; 006670

    STY digit + 5       ; 006671  @ 5EEC
    INC digit + 5       ; 006672
    INC digit + 5       ; 006673
    INC digit + 5       ; 006674
    INC digit + 5       ; 006675
    INC digit + 5       ; 006676
    INC digit + 5       ; 006677
    INC digit + 5       ; 006678
    INC digit + 5       ; 006679
    STX digit + 5       ; 006670  @ 5F07
    INC digit + 4       ; 006680

    STY digit + 5       ; 006681  @ 5F0D
    INC digit + 5       ; 006682
    INC digit + 5       ; 006683
    INC digit + 5       ; 006684
    INC digit + 5       ; 006685
    INC digit + 5       ; 006686
    INC digit + 5       ; 006687
    INC digit + 5       ; 006688
    INC digit + 5       ; 006689
    STX digit + 5       ; 006680  @ 5F28
    INC digit + 4       ; 006690

    STY digit + 5       ; 006691  @ 5F2E
    INC digit + 5       ; 006692
    INC digit + 5       ; 006693
    INC digit + 5       ; 006694
    INC digit + 5       ; 006695
    INC digit + 5       ; 006696
    INC digit + 5       ; 006697
    INC digit + 5       ; 006698
    INC digit + 5       ; 006699
    STX digit + 5       ; 006690  @ 5F49
    STX digit + 4       ; 006600  @ 5F4C
    INC digit + 3       ; 006700

    STY digit + 5       ; 006701  @ 5F52
    INC digit + 5       ; 006702
    INC digit + 5       ; 006703
    INC digit + 5       ; 006704
    INC digit + 5       ; 006705
    INC digit + 5       ; 006706
    INC digit + 5       ; 006707
    INC digit + 5       ; 006708
    INC digit + 5       ; 006709
    STX digit + 5       ; 006700  @ 5F6D
    STY digit + 4       ; 006710  @ 5F70

    STY digit + 5       ; 006711  @ 5F73
    INC digit + 5       ; 006712
    INC digit + 5       ; 006713
    INC digit + 5       ; 006714
    INC digit + 5       ; 006715
    INC digit + 5       ; 006716
    INC digit + 5       ; 006717
    INC digit + 5       ; 006718
    INC digit + 5       ; 006719
    STX digit + 5       ; 006710  @ 5F8E
    INC digit + 4       ; 006720

    STY digit + 5       ; 006721  @ 5F94
    INC digit + 5       ; 006722
    INC digit + 5       ; 006723
    INC digit + 5       ; 006724
    INC digit + 5       ; 006725
    INC digit + 5       ; 006726
    INC digit + 5       ; 006727
    INC digit + 5       ; 006728
    INC digit + 5       ; 006729
    STX digit + 5       ; 006720  @ 5FAF
    INC digit + 4       ; 006730

    STY digit + 5       ; 006731  @ 5FB5
    INC digit + 5       ; 006732
    INC digit + 5       ; 006733
    INC digit + 5       ; 006734
    INC digit + 5       ; 006735
    INC digit + 5       ; 006736
    INC digit + 5       ; 006737
    INC digit + 5       ; 006738
    INC digit + 5       ; 006739
    STX digit + 5       ; 006730  @ 5FD0
    INC digit + 4       ; 006740

    STY digit + 5       ; 006741  @ 5FD6
    INC digit + 5       ; 006742
    INC digit + 5       ; 006743
    INC digit + 5       ; 006744
    INC digit + 5       ; 006745
    INC digit + 5       ; 006746
    INC digit + 5       ; 006747
    INC digit + 5       ; 006748
    INC digit + 5       ; 006749
    STX digit + 5       ; 006740  @ 5FF1
    INC digit + 4       ; 006750

    STY digit + 5       ; 006751  @ 5FF7
    INC digit + 5       ; 006752
    INC digit + 5       ; 006753
    INC digit + 5       ; 006754
    INC digit + 5       ; 006755
    INC digit + 5       ; 006756
    INC digit + 5       ; 006757
    INC digit + 5       ; 006758
    INC digit + 5       ; 006759
    STX digit + 5       ; 006750  @ 6012
    INC digit + 4       ; 006760

    STY digit + 5       ; 006761  @ 6018
    INC digit + 5       ; 006762
    INC digit + 5       ; 006763
    INC digit + 5       ; 006764
    INC digit + 5       ; 006765
    INC digit + 5       ; 006766
    INC digit + 5       ; 006767
    INC digit + 5       ; 006768
    INC digit + 5       ; 006769
    STX digit + 5       ; 006760  @ 6033
    INC digit + 4       ; 006770

    STY digit + 5       ; 006771  @ 6039
    INC digit + 5       ; 006772
    INC digit + 5       ; 006773
    INC digit + 5       ; 006774
    INC digit + 5       ; 006775
    INC digit + 5       ; 006776
    INC digit + 5       ; 006777
    INC digit + 5       ; 006778
    INC digit + 5       ; 006779
    STX digit + 5       ; 006770  @ 6054
    INC digit + 4       ; 006780

    STY digit + 5       ; 006781  @ 605A
    INC digit + 5       ; 006782
    INC digit + 5       ; 006783
    INC digit + 5       ; 006784
    INC digit + 5       ; 006785
    INC digit + 5       ; 006786
    INC digit + 5       ; 006787
    INC digit + 5       ; 006788
    INC digit + 5       ; 006789
    STX digit + 5       ; 006780  @ 6075
    INC digit + 4       ; 006790

    STY digit + 5       ; 006791  @ 607B
    INC digit + 5       ; 006792
    INC digit + 5       ; 006793
    INC digit + 5       ; 006794
    INC digit + 5       ; 006795
    INC digit + 5       ; 006796
    INC digit + 5       ; 006797
    INC digit + 5       ; 006798
    INC digit + 5       ; 006799
    STX digit + 5       ; 006790  @ 6096
    STX digit + 4       ; 006700  @ 6099
    INC digit + 3       ; 006800

    STY digit + 5       ; 006801  @ 609F
    INC digit + 5       ; 006802
    INC digit + 5       ; 006803
    INC digit + 5       ; 006804
    INC digit + 5       ; 006805
    INC digit + 5       ; 006806
    INC digit + 5       ; 006807
    INC digit + 5       ; 006808
    INC digit + 5       ; 006809
    STX digit + 5       ; 006800  @ 60BA
    STY digit + 4       ; 006810  @ 60BD

    STY digit + 5       ; 006811  @ 60C0
    INC digit + 5       ; 006812
    INC digit + 5       ; 006813
    INC digit + 5       ; 006814
    INC digit + 5       ; 006815
    INC digit + 5       ; 006816
    INC digit + 5       ; 006817
    INC digit + 5       ; 006818
    INC digit + 5       ; 006819
    STX digit + 5       ; 006810  @ 60DB
    INC digit + 4       ; 006820

    STY digit + 5       ; 006821  @ 60E1
    INC digit + 5       ; 006822
    INC digit + 5       ; 006823
    INC digit + 5       ; 006824
    INC digit + 5       ; 006825
    INC digit + 5       ; 006826
    INC digit + 5       ; 006827
    INC digit + 5       ; 006828
    INC digit + 5       ; 006829
    STX digit + 5       ; 006820  @ 60FC
    INC digit + 4       ; 006830

    STY digit + 5       ; 006831  @ 6102
    INC digit + 5       ; 006832
    INC digit + 5       ; 006833
    INC digit + 5       ; 006834
    INC digit + 5       ; 006835
    INC digit + 5       ; 006836
    INC digit + 5       ; 006837
    INC digit + 5       ; 006838
    INC digit + 5       ; 006839
    STX digit + 5       ; 006830  @ 611D
    INC digit + 4       ; 006840

    STY digit + 5       ; 006841  @ 6123
    INC digit + 5       ; 006842
    INC digit + 5       ; 006843
    INC digit + 5       ; 006844
    INC digit + 5       ; 006845
    INC digit + 5       ; 006846
    INC digit + 5       ; 006847
    INC digit + 5       ; 006848
    INC digit + 5       ; 006849
    STX digit + 5       ; 006840  @ 613E
    INC digit + 4       ; 006850

    STY digit + 5       ; 006851  @ 6144
    INC digit + 5       ; 006852
    INC digit + 5       ; 006853
    INC digit + 5       ; 006854
    INC digit + 5       ; 006855
    INC digit + 5       ; 006856
    INC digit + 5       ; 006857
    INC digit + 5       ; 006858
    INC digit + 5       ; 006859
    STX digit + 5       ; 006850  @ 615F
    INC digit + 4       ; 006860

    STY digit + 5       ; 006861  @ 6165
    INC digit + 5       ; 006862
    INC digit + 5       ; 006863
    INC digit + 5       ; 006864
    INC digit + 5       ; 006865
    INC digit + 5       ; 006866
    INC digit + 5       ; 006867
    INC digit + 5       ; 006868
    INC digit + 5       ; 006869
    STX digit + 5       ; 006860  @ 6180
    INC digit + 4       ; 006870

    STY digit + 5       ; 006871  @ 6186
    INC digit + 5       ; 006872
    INC digit + 5       ; 006873
    INC digit + 5       ; 006874
    INC digit + 5       ; 006875
    INC digit + 5       ; 006876
    INC digit + 5       ; 006877
    INC digit + 5       ; 006878
    INC digit + 5       ; 006879
    STX digit + 5       ; 006870  @ 61A1
    INC digit + 4       ; 006880

    STY digit + 5       ; 006881  @ 61A7
    INC digit + 5       ; 006882
    INC digit + 5       ; 006883
    INC digit + 5       ; 006884
    INC digit + 5       ; 006885
    INC digit + 5       ; 006886
    INC digit + 5       ; 006887
    INC digit + 5       ; 006888
    INC digit + 5       ; 006889
    STX digit + 5       ; 006880  @ 61C2
    INC digit + 4       ; 006890

    STY digit + 5       ; 006891  @ 61C8
    INC digit + 5       ; 006892
    INC digit + 5       ; 006893
    INC digit + 5       ; 006894
    INC digit + 5       ; 006895
    INC digit + 5       ; 006896
    INC digit + 5       ; 006897
    INC digit + 5       ; 006898
    INC digit + 5       ; 006899
    STX digit + 5       ; 006890  @ 61E3
    STX digit + 4       ; 006800  @ 61E6
    INC digit + 3       ; 006900

    STY digit + 5       ; 006901  @ 61EC
    INC digit + 5       ; 006902
    INC digit + 5       ; 006903
    INC digit + 5       ; 006904
    INC digit + 5       ; 006905
    INC digit + 5       ; 006906
    INC digit + 5       ; 006907
    INC digit + 5       ; 006908
    INC digit + 5       ; 006909
    STX digit + 5       ; 006900  @ 6207
    STY digit + 4       ; 006910  @ 620A

    STY digit + 5       ; 006911  @ 620D
    INC digit + 5       ; 006912
    INC digit + 5       ; 006913
    INC digit + 5       ; 006914
    INC digit + 5       ; 006915
    INC digit + 5       ; 006916
    INC digit + 5       ; 006917
    INC digit + 5       ; 006918
    INC digit + 5       ; 006919
    STX digit + 5       ; 006910  @ 6228
    INC digit + 4       ; 006920

    STY digit + 5       ; 006921  @ 622E
    INC digit + 5       ; 006922
    INC digit + 5       ; 006923
    INC digit + 5       ; 006924
    INC digit + 5       ; 006925
    INC digit + 5       ; 006926
    INC digit + 5       ; 006927
    INC digit + 5       ; 006928
    INC digit + 5       ; 006929
    STX digit + 5       ; 006920  @ 6249
    INC digit + 4       ; 006930

    STY digit + 5       ; 006931  @ 624F
    INC digit + 5       ; 006932
    INC digit + 5       ; 006933
    INC digit + 5       ; 006934
    INC digit + 5       ; 006935
    INC digit + 5       ; 006936
    INC digit + 5       ; 006937
    INC digit + 5       ; 006938
    INC digit + 5       ; 006939
    STX digit + 5       ; 006930  @ 626A
    INC digit + 4       ; 006940

    STY digit + 5       ; 006941  @ 6270
    INC digit + 5       ; 006942
    INC digit + 5       ; 006943
    INC digit + 5       ; 006944
    INC digit + 5       ; 006945
    INC digit + 5       ; 006946
    INC digit + 5       ; 006947
    INC digit + 5       ; 006948
    INC digit + 5       ; 006949
    STX digit + 5       ; 006940  @ 628B
    INC digit + 4       ; 006950

    STY digit + 5       ; 006951  @ 6291
    INC digit + 5       ; 006952
    INC digit + 5       ; 006953
    INC digit + 5       ; 006954
    INC digit + 5       ; 006955
    INC digit + 5       ; 006956
    INC digit + 5       ; 006957
    INC digit + 5       ; 006958
    INC digit + 5       ; 006959
    STX digit + 5       ; 006950  @ 62AC
    INC digit + 4       ; 006960

    STY digit + 5       ; 006961  @ 62B2
    INC digit + 5       ; 006962
    INC digit + 5       ; 006963
    INC digit + 5       ; 006964
    INC digit + 5       ; 006965
    INC digit + 5       ; 006966
    INC digit + 5       ; 006967
    INC digit + 5       ; 006968
    INC digit + 5       ; 006969
    STX digit + 5       ; 006960  @ 62CD
    INC digit + 4       ; 006970

    STY digit + 5       ; 006971  @ 62D3
    INC digit + 5       ; 006972
    INC digit + 5       ; 006973
    INC digit + 5       ; 006974
    INC digit + 5       ; 006975
    INC digit + 5       ; 006976
    INC digit + 5       ; 006977
    INC digit + 5       ; 006978
    INC digit + 5       ; 006979
    STX digit + 5       ; 006970  @ 62EE
    INC digit + 4       ; 006980

    STY digit + 5       ; 006981  @ 62F4
    INC digit + 5       ; 006982
    INC digit + 5       ; 006983
    INC digit + 5       ; 006984
    INC digit + 5       ; 006985
    INC digit + 5       ; 006986
    INC digit + 5       ; 006987
    INC digit + 5       ; 006988
    INC digit + 5       ; 006989
    STX digit + 5       ; 006980  @ 630F
    INC digit + 4       ; 006990

    STY digit + 5       ; 006991  @ 6315
    INC digit + 5       ; 006992
    INC digit + 5       ; 006993
    INC digit + 5       ; 006994
    INC digit + 5       ; 006995
    INC digit + 5       ; 006996
    INC digit + 5       ; 006997
    INC digit + 5       ; 006998
    INC digit + 5       ; 006999
    STX digit + 5       ; 006990  @ 6330
    STX digit + 4       ; 006900  @ 6333
    STX digit + 3       ; 006000  @ 6336
    INC digit + 2       ; 007000

    STY digit + 5       ; 007001  @ 633C
    INC digit + 5       ; 007002
    INC digit + 5       ; 007003
    INC digit + 5       ; 007004
    INC digit + 5       ; 007005
    INC digit + 5       ; 007006
    INC digit + 5       ; 007007
    INC digit + 5       ; 007008
    INC digit + 5       ; 007009
    STX digit + 5       ; 007000  @ 6357
    STY digit + 4       ; 007010  @ 635A

    STY digit + 5       ; 007011  @ 635D
    INC digit + 5       ; 007012
    INC digit + 5       ; 007013
    INC digit + 5       ; 007014
    INC digit + 5       ; 007015
    INC digit + 5       ; 007016
    INC digit + 5       ; 007017
    INC digit + 5       ; 007018
    INC digit + 5       ; 007019
    STX digit + 5       ; 007010  @ 6378
    INC digit + 4       ; 007020

    STY digit + 5       ; 007021  @ 637E
    INC digit + 5       ; 007022
    INC digit + 5       ; 007023
    INC digit + 5       ; 007024
    INC digit + 5       ; 007025
    INC digit + 5       ; 007026
    INC digit + 5       ; 007027
    INC digit + 5       ; 007028
    INC digit + 5       ; 007029
    STX digit + 5       ; 007020  @ 6399
    INC digit + 4       ; 007030

    STY digit + 5       ; 007031  @ 639F
    INC digit + 5       ; 007032
    INC digit + 5       ; 007033
    INC digit + 5       ; 007034
    INC digit + 5       ; 007035
    INC digit + 5       ; 007036
    INC digit + 5       ; 007037
    INC digit + 5       ; 007038
    INC digit + 5       ; 007039
    STX digit + 5       ; 007030  @ 63BA
    INC digit + 4       ; 007040

    STY digit + 5       ; 007041  @ 63C0
    INC digit + 5       ; 007042
    INC digit + 5       ; 007043
    INC digit + 5       ; 007044
    INC digit + 5       ; 007045
    INC digit + 5       ; 007046
    INC digit + 5       ; 007047
    INC digit + 5       ; 007048
    INC digit + 5       ; 007049
    STX digit + 5       ; 007040  @ 63DB
    INC digit + 4       ; 007050

    STY digit + 5       ; 007051  @ 63E1
    INC digit + 5       ; 007052
    INC digit + 5       ; 007053
    INC digit + 5       ; 007054
    INC digit + 5       ; 007055
    INC digit + 5       ; 007056
    INC digit + 5       ; 007057
    INC digit + 5       ; 007058
    INC digit + 5       ; 007059
    STX digit + 5       ; 007050  @ 63FC
    INC digit + 4       ; 007060

    STY digit + 5       ; 007061  @ 6402
    INC digit + 5       ; 007062
    INC digit + 5       ; 007063
    INC digit + 5       ; 007064
    INC digit + 5       ; 007065
    INC digit + 5       ; 007066
    INC digit + 5       ; 007067
    INC digit + 5       ; 007068
    INC digit + 5       ; 007069
    STX digit + 5       ; 007060  @ 641D
    INC digit + 4       ; 007070

    STY digit + 5       ; 007071  @ 6423
    INC digit + 5       ; 007072
    INC digit + 5       ; 007073
    INC digit + 5       ; 007074
    INC digit + 5       ; 007075
    INC digit + 5       ; 007076
    INC digit + 5       ; 007077
    INC digit + 5       ; 007078
    INC digit + 5       ; 007079
    STX digit + 5       ; 007070  @ 643E
    INC digit + 4       ; 007080

    STY digit + 5       ; 007081  @ 6444
    INC digit + 5       ; 007082
    INC digit + 5       ; 007083
    INC digit + 5       ; 007084
    INC digit + 5       ; 007085
    INC digit + 5       ; 007086
    INC digit + 5       ; 007087
    INC digit + 5       ; 007088
    INC digit + 5       ; 007089
    STX digit + 5       ; 007080  @ 645F
    INC digit + 4       ; 007090

    STY digit + 5       ; 007091  @ 6465
    INC digit + 5       ; 007092
    INC digit + 5       ; 007093
    INC digit + 5       ; 007094
    INC digit + 5       ; 007095
    INC digit + 5       ; 007096
    INC digit + 5       ; 007097
    INC digit + 5       ; 007098
    INC digit + 5       ; 007099
    STX digit + 5       ; 007090  @ 6480
    STX digit + 4       ; 007000  @ 6483
    STY digit + 3       ; 007100  @ 6486

    STY digit + 5       ; 007101  @ 6489
    INC digit + 5       ; 007102
    INC digit + 5       ; 007103
    INC digit + 5       ; 007104
    INC digit + 5       ; 007105
    INC digit + 5       ; 007106
    INC digit + 5       ; 007107
    INC digit + 5       ; 007108
    INC digit + 5       ; 007109
    STX digit + 5       ; 007100  @ 64A4
    STY digit + 4       ; 007110  @ 64A7

    STY digit + 5       ; 007111  @ 64AA
    INC digit + 5       ; 007112
    INC digit + 5       ; 007113
    INC digit + 5       ; 007114
    INC digit + 5       ; 007115
    INC digit + 5       ; 007116
    INC digit + 5       ; 007117
    INC digit + 5       ; 007118
    INC digit + 5       ; 007119
    STX digit + 5       ; 007110  @ 64C5
    INC digit + 4       ; 007120

    STY digit + 5       ; 007121  @ 64CB
    INC digit + 5       ; 007122
    INC digit + 5       ; 007123
    INC digit + 5       ; 007124
    INC digit + 5       ; 007125
    INC digit + 5       ; 007126
    INC digit + 5       ; 007127
    INC digit + 5       ; 007128
    INC digit + 5       ; 007129
    STX digit + 5       ; 007120  @ 64E6
    INC digit + 4       ; 007130

    STY digit + 5       ; 007131  @ 64EC
    INC digit + 5       ; 007132
    INC digit + 5       ; 007133
    INC digit + 5       ; 007134
    INC digit + 5       ; 007135
    INC digit + 5       ; 007136
    INC digit + 5       ; 007137
    INC digit + 5       ; 007138
    INC digit + 5       ; 007139
    STX digit + 5       ; 007130  @ 6507
    INC digit + 4       ; 007140

    STY digit + 5       ; 007141  @ 650D
    INC digit + 5       ; 007142
    INC digit + 5       ; 007143
    INC digit + 5       ; 007144
    INC digit + 5       ; 007145
    INC digit + 5       ; 007146
    INC digit + 5       ; 007147
    INC digit + 5       ; 007148
    INC digit + 5       ; 007149
    STX digit + 5       ; 007140  @ 6528
    INC digit + 4       ; 007150

    STY digit + 5       ; 007151  @ 652E
    INC digit + 5       ; 007152
    INC digit + 5       ; 007153
    INC digit + 5       ; 007154
    INC digit + 5       ; 007155
    INC digit + 5       ; 007156
    INC digit + 5       ; 007157
    INC digit + 5       ; 007158
    INC digit + 5       ; 007159
    STX digit + 5       ; 007150  @ 6549
    INC digit + 4       ; 007160

    STY digit + 5       ; 007161  @ 654F
    INC digit + 5       ; 007162
    INC digit + 5       ; 007163
    INC digit + 5       ; 007164
    INC digit + 5       ; 007165
    INC digit + 5       ; 007166
    INC digit + 5       ; 007167
    INC digit + 5       ; 007168
    INC digit + 5       ; 007169
    STX digit + 5       ; 007160  @ 656A
    INC digit + 4       ; 007170

    STY digit + 5       ; 007171  @ 6570
    INC digit + 5       ; 007172
    INC digit + 5       ; 007173
    INC digit + 5       ; 007174
    INC digit + 5       ; 007175
    INC digit + 5       ; 007176
    INC digit + 5       ; 007177
    INC digit + 5       ; 007178
    INC digit + 5       ; 007179
    STX digit + 5       ; 007170  @ 658B
    INC digit + 4       ; 007180

    STY digit + 5       ; 007181  @ 6591
    INC digit + 5       ; 007182
    INC digit + 5       ; 007183
    INC digit + 5       ; 007184
    INC digit + 5       ; 007185
    INC digit + 5       ; 007186
    INC digit + 5       ; 007187
    INC digit + 5       ; 007188
    INC digit + 5       ; 007189
    STX digit + 5       ; 007180  @ 65AC
    INC digit + 4       ; 007190

    STY digit + 5       ; 007191  @ 65B2
    INC digit + 5       ; 007192
    INC digit + 5       ; 007193
    INC digit + 5       ; 007194
    INC digit + 5       ; 007195
    INC digit + 5       ; 007196
    INC digit + 5       ; 007197
    INC digit + 5       ; 007198
    INC digit + 5       ; 007199
    STX digit + 5       ; 007190  @ 65CD
    STX digit + 4       ; 007100  @ 65D0
    INC digit + 3       ; 007200

    STY digit + 5       ; 007201  @ 65D6
    INC digit + 5       ; 007202
    INC digit + 5       ; 007203
    INC digit + 5       ; 007204
    INC digit + 5       ; 007205
    INC digit + 5       ; 007206
    INC digit + 5       ; 007207
    INC digit + 5       ; 007208
    INC digit + 5       ; 007209
    STX digit + 5       ; 007200  @ 65F1
    STY digit + 4       ; 007210  @ 65F4

    STY digit + 5       ; 007211  @ 65F7
    INC digit + 5       ; 007212
    INC digit + 5       ; 007213
    INC digit + 5       ; 007214
    INC digit + 5       ; 007215
    INC digit + 5       ; 007216
    INC digit + 5       ; 007217
    INC digit + 5       ; 007218
    INC digit + 5       ; 007219
    STX digit + 5       ; 007210  @ 6612
    INC digit + 4       ; 007220

    STY digit + 5       ; 007221  @ 6618
    INC digit + 5       ; 007222
    INC digit + 5       ; 007223
    INC digit + 5       ; 007224
    INC digit + 5       ; 007225
    INC digit + 5       ; 007226
    INC digit + 5       ; 007227
    INC digit + 5       ; 007228
    INC digit + 5       ; 007229
    STX digit + 5       ; 007220  @ 6633
    INC digit + 4       ; 007230

    STY digit + 5       ; 007231  @ 6639
    INC digit + 5       ; 007232
    INC digit + 5       ; 007233
    INC digit + 5       ; 007234
    INC digit + 5       ; 007235
    INC digit + 5       ; 007236
    INC digit + 5       ; 007237
    INC digit + 5       ; 007238
    INC digit + 5       ; 007239
    STX digit + 5       ; 007230  @ 6654
    INC digit + 4       ; 007240

    STY digit + 5       ; 007241  @ 665A
    INC digit + 5       ; 007242
    INC digit + 5       ; 007243
    INC digit + 5       ; 007244
    INC digit + 5       ; 007245
    INC digit + 5       ; 007246
    INC digit + 5       ; 007247
    INC digit + 5       ; 007248
    INC digit + 5       ; 007249
    STX digit + 5       ; 007240  @ 6675
    INC digit + 4       ; 007250

    STY digit + 5       ; 007251  @ 667B
    INC digit + 5       ; 007252
    INC digit + 5       ; 007253
    INC digit + 5       ; 007254
    INC digit + 5       ; 007255
    INC digit + 5       ; 007256
    INC digit + 5       ; 007257
    INC digit + 5       ; 007258
    INC digit + 5       ; 007259
    STX digit + 5       ; 007250  @ 6696
    INC digit + 4       ; 007260

    STY digit + 5       ; 007261  @ 669C
    INC digit + 5       ; 007262
    INC digit + 5       ; 007263
    INC digit + 5       ; 007264
    INC digit + 5       ; 007265
    INC digit + 5       ; 007266
    INC digit + 5       ; 007267
    INC digit + 5       ; 007268
    INC digit + 5       ; 007269
    STX digit + 5       ; 007260  @ 66B7
    INC digit + 4       ; 007270

    STY digit + 5       ; 007271  @ 66BD
    INC digit + 5       ; 007272
    INC digit + 5       ; 007273
    INC digit + 5       ; 007274
    INC digit + 5       ; 007275
    INC digit + 5       ; 007276
    INC digit + 5       ; 007277
    INC digit + 5       ; 007278
    INC digit + 5       ; 007279
    STX digit + 5       ; 007270  @ 66D8
    INC digit + 4       ; 007280

    STY digit + 5       ; 007281  @ 66DE
    INC digit + 5       ; 007282
    INC digit + 5       ; 007283
    INC digit + 5       ; 007284
    INC digit + 5       ; 007285
    INC digit + 5       ; 007286
    INC digit + 5       ; 007287
    INC digit + 5       ; 007288
    INC digit + 5       ; 007289
    STX digit + 5       ; 007280  @ 66F9
    INC digit + 4       ; 007290

    STY digit + 5       ; 007291  @ 66FF
    INC digit + 5       ; 007292
    INC digit + 5       ; 007293
    INC digit + 5       ; 007294
    INC digit + 5       ; 007295
    INC digit + 5       ; 007296
    INC digit + 5       ; 007297
    INC digit + 5       ; 007298
    INC digit + 5       ; 007299
    STX digit + 5       ; 007290  @ 671A
    STX digit + 4       ; 007200  @ 671D
    INC digit + 3       ; 007300

    STY digit + 5       ; 007301  @ 6723
    INC digit + 5       ; 007302
    INC digit + 5       ; 007303
    INC digit + 5       ; 007304
    INC digit + 5       ; 007305
    INC digit + 5       ; 007306
    INC digit + 5       ; 007307
    INC digit + 5       ; 007308
    INC digit + 5       ; 007309
    STX digit + 5       ; 007300  @ 673E
    STY digit + 4       ; 007310  @ 6741

    STY digit + 5       ; 007311  @ 6744
    INC digit + 5       ; 007312
    INC digit + 5       ; 007313
    INC digit + 5       ; 007314
    INC digit + 5       ; 007315
    INC digit + 5       ; 007316
    INC digit + 5       ; 007317
    INC digit + 5       ; 007318
    INC digit + 5       ; 007319
    STX digit + 5       ; 007310  @ 675F
    INC digit + 4       ; 007320

    STY digit + 5       ; 007321  @ 6765
    INC digit + 5       ; 007322
    INC digit + 5       ; 007323
    INC digit + 5       ; 007324
    INC digit + 5       ; 007325
    INC digit + 5       ; 007326
    INC digit + 5       ; 007327
    INC digit + 5       ; 007328
    INC digit + 5       ; 007329
    STX digit + 5       ; 007320  @ 6780
    INC digit + 4       ; 007330

    STY digit + 5       ; 007331  @ 6786
    INC digit + 5       ; 007332
    INC digit + 5       ; 007333
    INC digit + 5       ; 007334
    INC digit + 5       ; 007335
    INC digit + 5       ; 007336
    INC digit + 5       ; 007337
    INC digit + 5       ; 007338
    INC digit + 5       ; 007339
    STX digit + 5       ; 007330  @ 67A1
    INC digit + 4       ; 007340

    STY digit + 5       ; 007341  @ 67A7
    INC digit + 5       ; 007342
    INC digit + 5       ; 007343
    INC digit + 5       ; 007344
    INC digit + 5       ; 007345
    INC digit + 5       ; 007346
    INC digit + 5       ; 007347
    INC digit + 5       ; 007348
    INC digit + 5       ; 007349
    STX digit + 5       ; 007340  @ 67C2
    INC digit + 4       ; 007350

    STY digit + 5       ; 007351  @ 67C8
    INC digit + 5       ; 007352
    INC digit + 5       ; 007353
    INC digit + 5       ; 007354
    INC digit + 5       ; 007355
    INC digit + 5       ; 007356
    INC digit + 5       ; 007357
    INC digit + 5       ; 007358
    INC digit + 5       ; 007359
    STX digit + 5       ; 007350  @ 67E3
    INC digit + 4       ; 007360

    STY digit + 5       ; 007361  @ 67E9
    INC digit + 5       ; 007362
    INC digit + 5       ; 007363
    INC digit + 5       ; 007364
    INC digit + 5       ; 007365
    INC digit + 5       ; 007366
    INC digit + 5       ; 007367
    INC digit + 5       ; 007368
    INC digit + 5       ; 007369
    STX digit + 5       ; 007360  @ 6804
    INC digit + 4       ; 007370

    STY digit + 5       ; 007371  @ 680A
    INC digit + 5       ; 007372
    INC digit + 5       ; 007373
    INC digit + 5       ; 007374
    INC digit + 5       ; 007375
    INC digit + 5       ; 007376
    INC digit + 5       ; 007377
    INC digit + 5       ; 007378
    INC digit + 5       ; 007379
    STX digit + 5       ; 007370  @ 6825
    INC digit + 4       ; 007380

    STY digit + 5       ; 007381  @ 682B
    INC digit + 5       ; 007382
    INC digit + 5       ; 007383
    INC digit + 5       ; 007384
    INC digit + 5       ; 007385
    INC digit + 5       ; 007386
    INC digit + 5       ; 007387
    INC digit + 5       ; 007388
    INC digit + 5       ; 007389
    STX digit + 5       ; 007380  @ 6846
    INC digit + 4       ; 007390

    STY digit + 5       ; 007391  @ 684C
    INC digit + 5       ; 007392
    INC digit + 5       ; 007393
    INC digit + 5       ; 007394
    INC digit + 5       ; 007395
    INC digit + 5       ; 007396
    INC digit + 5       ; 007397
    INC digit + 5       ; 007398
    INC digit + 5       ; 007399
    STX digit + 5       ; 007390  @ 6867
    STX digit + 4       ; 007300  @ 686A
    INC digit + 3       ; 007400

    STY digit + 5       ; 007401  @ 6870
    INC digit + 5       ; 007402
    INC digit + 5       ; 007403
    INC digit + 5       ; 007404
    INC digit + 5       ; 007405
    INC digit + 5       ; 007406
    INC digit + 5       ; 007407
    INC digit + 5       ; 007408
    INC digit + 5       ; 007409
    STX digit + 5       ; 007400  @ 688B
    STY digit + 4       ; 007410  @ 688E

    STY digit + 5       ; 007411  @ 6891
    INC digit + 5       ; 007412
    INC digit + 5       ; 007413
    INC digit + 5       ; 007414
    INC digit + 5       ; 007415
    INC digit + 5       ; 007416
    INC digit + 5       ; 007417
    INC digit + 5       ; 007418
    INC digit + 5       ; 007419
    STX digit + 5       ; 007410  @ 68AC
    INC digit + 4       ; 007420

    STY digit + 5       ; 007421  @ 68B2
    INC digit + 5       ; 007422
    INC digit + 5       ; 007423
    INC digit + 5       ; 007424
    INC digit + 5       ; 007425
    INC digit + 5       ; 007426
    INC digit + 5       ; 007427
    INC digit + 5       ; 007428
    INC digit + 5       ; 007429
    STX digit + 5       ; 007420  @ 68CD
    INC digit + 4       ; 007430

    STY digit + 5       ; 007431  @ 68D3
    INC digit + 5       ; 007432
    INC digit + 5       ; 007433
    INC digit + 5       ; 007434
    INC digit + 5       ; 007435
    INC digit + 5       ; 007436
    INC digit + 5       ; 007437
    INC digit + 5       ; 007438
    INC digit + 5       ; 007439
    STX digit + 5       ; 007430  @ 68EE
    INC digit + 4       ; 007440

    STY digit + 5       ; 007441  @ 68F4
    INC digit + 5       ; 007442
    INC digit + 5       ; 007443
    INC digit + 5       ; 007444
    INC digit + 5       ; 007445
    INC digit + 5       ; 007446
    INC digit + 5       ; 007447
    INC digit + 5       ; 007448
    INC digit + 5       ; 007449
    STX digit + 5       ; 007440  @ 690F
    INC digit + 4       ; 007450

    STY digit + 5       ; 007451  @ 6915
    INC digit + 5       ; 007452
    INC digit + 5       ; 007453
    INC digit + 5       ; 007454
    INC digit + 5       ; 007455
    INC digit + 5       ; 007456
    INC digit + 5       ; 007457
    INC digit + 5       ; 007458
    INC digit + 5       ; 007459
    STX digit + 5       ; 007450  @ 6930
    INC digit + 4       ; 007460

    STY digit + 5       ; 007461  @ 6936
    INC digit + 5       ; 007462
    INC digit + 5       ; 007463
    INC digit + 5       ; 007464
    INC digit + 5       ; 007465
    INC digit + 5       ; 007466
    INC digit + 5       ; 007467
    INC digit + 5       ; 007468
    INC digit + 5       ; 007469
    STX digit + 5       ; 007460  @ 6951
    INC digit + 4       ; 007470

    STY digit + 5       ; 007471  @ 6957
    INC digit + 5       ; 007472
    INC digit + 5       ; 007473
    INC digit + 5       ; 007474
    INC digit + 5       ; 007475
    INC digit + 5       ; 007476
    INC digit + 5       ; 007477
    INC digit + 5       ; 007478
    INC digit + 5       ; 007479
    STX digit + 5       ; 007470  @ 6972
    INC digit + 4       ; 007480

    STY digit + 5       ; 007481  @ 6978
    INC digit + 5       ; 007482
    INC digit + 5       ; 007483
    INC digit + 5       ; 007484
    INC digit + 5       ; 007485
    INC digit + 5       ; 007486
    INC digit + 5       ; 007487
    INC digit + 5       ; 007488
    INC digit + 5       ; 007489
    STX digit + 5       ; 007480  @ 6993
    INC digit + 4       ; 007490

    STY digit + 5       ; 007491  @ 6999
    INC digit + 5       ; 007492
    INC digit + 5       ; 007493
    INC digit + 5       ; 007494
    INC digit + 5       ; 007495
    INC digit + 5       ; 007496
    INC digit + 5       ; 007497
    INC digit + 5       ; 007498
    INC digit + 5       ; 007499
    STX digit + 5       ; 007490  @ 69B4
    STX digit + 4       ; 007400  @ 69B7
    INC digit + 3       ; 007500

    STY digit + 5       ; 007501  @ 69BD
    INC digit + 5       ; 007502
    INC digit + 5       ; 007503
    INC digit + 5       ; 007504
    INC digit + 5       ; 007505
    INC digit + 5       ; 007506
    INC digit + 5       ; 007507
    INC digit + 5       ; 007508
    INC digit + 5       ; 007509
    STX digit + 5       ; 007500  @ 69D8
    STY digit + 4       ; 007510  @ 69DB

    STY digit + 5       ; 007511  @ 69DE
    INC digit + 5       ; 007512
    INC digit + 5       ; 007513
    INC digit + 5       ; 007514
    INC digit + 5       ; 007515
    INC digit + 5       ; 007516
    INC digit + 5       ; 007517
    INC digit + 5       ; 007518
    INC digit + 5       ; 007519
    STX digit + 5       ; 007510  @ 69F9
    INC digit + 4       ; 007520

    STY digit + 5       ; 007521  @ 69FF
    INC digit + 5       ; 007522
    INC digit + 5       ; 007523
    INC digit + 5       ; 007524
    INC digit + 5       ; 007525
    INC digit + 5       ; 007526
    INC digit + 5       ; 007527
    INC digit + 5       ; 007528
    INC digit + 5       ; 007529
    STX digit + 5       ; 007520  @ 6A1A
    INC digit + 4       ; 007530

    STY digit + 5       ; 007531  @ 6A20
    INC digit + 5       ; 007532
    INC digit + 5       ; 007533
    INC digit + 5       ; 007534
    INC digit + 5       ; 007535
    INC digit + 5       ; 007536
    INC digit + 5       ; 007537
    INC digit + 5       ; 007538
    INC digit + 5       ; 007539
    STX digit + 5       ; 007530  @ 6A3B
    INC digit + 4       ; 007540

    STY digit + 5       ; 007541  @ 6A41
    INC digit + 5       ; 007542
    INC digit + 5       ; 007543
    INC digit + 5       ; 007544
    INC digit + 5       ; 007545
    INC digit + 5       ; 007546
    INC digit + 5       ; 007547
    INC digit + 5       ; 007548
    INC digit + 5       ; 007549
    STX digit + 5       ; 007540  @ 6A5C
    INC digit + 4       ; 007550

    STY digit + 5       ; 007551  @ 6A62
    INC digit + 5       ; 007552
    INC digit + 5       ; 007553
    INC digit + 5       ; 007554
    INC digit + 5       ; 007555
    INC digit + 5       ; 007556
    INC digit + 5       ; 007557
    INC digit + 5       ; 007558
    INC digit + 5       ; 007559
    STX digit + 5       ; 007550  @ 6A7D
    INC digit + 4       ; 007560

    STY digit + 5       ; 007561  @ 6A83
    INC digit + 5       ; 007562
    INC digit + 5       ; 007563
    INC digit + 5       ; 007564
    INC digit + 5       ; 007565
    INC digit + 5       ; 007566
    INC digit + 5       ; 007567
    INC digit + 5       ; 007568
    INC digit + 5       ; 007569
    STX digit + 5       ; 007560  @ 6A9E
    INC digit + 4       ; 007570

    STY digit + 5       ; 007571  @ 6AA4
    INC digit + 5       ; 007572
    INC digit + 5       ; 007573
    INC digit + 5       ; 007574
    INC digit + 5       ; 007575
    INC digit + 5       ; 007576
    INC digit + 5       ; 007577
    INC digit + 5       ; 007578
    INC digit + 5       ; 007579
    STX digit + 5       ; 007570  @ 6ABF
    INC digit + 4       ; 007580

    STY digit + 5       ; 007581  @ 6AC5
    INC digit + 5       ; 007582
    INC digit + 5       ; 007583
    INC digit + 5       ; 007584
    INC digit + 5       ; 007585
    INC digit + 5       ; 007586
    INC digit + 5       ; 007587
    INC digit + 5       ; 007588
    INC digit + 5       ; 007589
    STX digit + 5       ; 007580  @ 6AE0
    INC digit + 4       ; 007590

    STY digit + 5       ; 007591  @ 6AE6
    INC digit + 5       ; 007592
    INC digit + 5       ; 007593
    INC digit + 5       ; 007594
    INC digit + 5       ; 007595
    INC digit + 5       ; 007596
    INC digit + 5       ; 007597
    INC digit + 5       ; 007598
    INC digit + 5       ; 007599
    STX digit + 5       ; 007590  @ 6B01
    STX digit + 4       ; 007500  @ 6B04
    INC digit + 3       ; 007600

    STY digit + 5       ; 007601  @ 6B0A
    INC digit + 5       ; 007602
    INC digit + 5       ; 007603
    INC digit + 5       ; 007604
    INC digit + 5       ; 007605
    INC digit + 5       ; 007606
    INC digit + 5       ; 007607
    INC digit + 5       ; 007608
    INC digit + 5       ; 007609
    STX digit + 5       ; 007600  @ 6B25
    STY digit + 4       ; 007610  @ 6B28

    STY digit + 5       ; 007611  @ 6B2B
    INC digit + 5       ; 007612
    INC digit + 5       ; 007613
    INC digit + 5       ; 007614
    INC digit + 5       ; 007615
    INC digit + 5       ; 007616
    INC digit + 5       ; 007617
    INC digit + 5       ; 007618
    INC digit + 5       ; 007619
    STX digit + 5       ; 007610  @ 6B46
    INC digit + 4       ; 007620

    STY digit + 5       ; 007621  @ 6B4C
    INC digit + 5       ; 007622
    INC digit + 5       ; 007623
    INC digit + 5       ; 007624
    INC digit + 5       ; 007625
    INC digit + 5       ; 007626
    INC digit + 5       ; 007627
    INC digit + 5       ; 007628
    INC digit + 5       ; 007629
    STX digit + 5       ; 007620  @ 6B67
    INC digit + 4       ; 007630

    STY digit + 5       ; 007631  @ 6B6D
    INC digit + 5       ; 007632
    INC digit + 5       ; 007633
    INC digit + 5       ; 007634
    INC digit + 5       ; 007635
    INC digit + 5       ; 007636
    INC digit + 5       ; 007637
    INC digit + 5       ; 007638
    INC digit + 5       ; 007639
    STX digit + 5       ; 007630  @ 6B88
    INC digit + 4       ; 007640

    STY digit + 5       ; 007641  @ 6B8E
    INC digit + 5       ; 007642
    INC digit + 5       ; 007643
    INC digit + 5       ; 007644
    INC digit + 5       ; 007645
    INC digit + 5       ; 007646
    INC digit + 5       ; 007647
    INC digit + 5       ; 007648
    INC digit + 5       ; 007649
    STX digit + 5       ; 007640  @ 6BA9
    INC digit + 4       ; 007650

    STY digit + 5       ; 007651  @ 6BAF
    INC digit + 5       ; 007652
    INC digit + 5       ; 007653
    INC digit + 5       ; 007654
    INC digit + 5       ; 007655
    INC digit + 5       ; 007656
    INC digit + 5       ; 007657
    INC digit + 5       ; 007658
    INC digit + 5       ; 007659
    STX digit + 5       ; 007650  @ 6BCA
    INC digit + 4       ; 007660

    STY digit + 5       ; 007661  @ 6BD0
    INC digit + 5       ; 007662
    INC digit + 5       ; 007663
    INC digit + 5       ; 007664
    INC digit + 5       ; 007665
    INC digit + 5       ; 007666
    INC digit + 5       ; 007667
    INC digit + 5       ; 007668
    INC digit + 5       ; 007669
    STX digit + 5       ; 007660  @ 6BEB
    INC digit + 4       ; 007670

    STY digit + 5       ; 007671  @ 6BF1
    INC digit + 5       ; 007672
    INC digit + 5       ; 007673
    INC digit + 5       ; 007674
    INC digit + 5       ; 007675
    INC digit + 5       ; 007676
    INC digit + 5       ; 007677
    INC digit + 5       ; 007678
    INC digit + 5       ; 007679
    STX digit + 5       ; 007670  @ 6C0C
    INC digit + 4       ; 007680

    STY digit + 5       ; 007681  @ 6C12
    INC digit + 5       ; 007682
    INC digit + 5       ; 007683
    INC digit + 5       ; 007684
    INC digit + 5       ; 007685
    INC digit + 5       ; 007686
    INC digit + 5       ; 007687
    INC digit + 5       ; 007688
    INC digit + 5       ; 007689
    STX digit + 5       ; 007680  @ 6C2D
    INC digit + 4       ; 007690

    STY digit + 5       ; 007691  @ 6C33
    INC digit + 5       ; 007692
    INC digit + 5       ; 007693
    INC digit + 5       ; 007694
    INC digit + 5       ; 007695
    INC digit + 5       ; 007696
    INC digit + 5       ; 007697
    INC digit + 5       ; 007698
    INC digit + 5       ; 007699
    STX digit + 5       ; 007690  @ 6C4E
    STX digit + 4       ; 007600  @ 6C51
    INC digit + 3       ; 007700

    STY digit + 5       ; 007701  @ 6C57
    INC digit + 5       ; 007702
    INC digit + 5       ; 007703
    INC digit + 5       ; 007704
    INC digit + 5       ; 007705
    INC digit + 5       ; 007706
    INC digit + 5       ; 007707
    INC digit + 5       ; 007708
    INC digit + 5       ; 007709
    STX digit + 5       ; 007700  @ 6C72
    STY digit + 4       ; 007710  @ 6C75

    STY digit + 5       ; 007711  @ 6C78
    INC digit + 5       ; 007712
    INC digit + 5       ; 007713
    INC digit + 5       ; 007714
    INC digit + 5       ; 007715
    INC digit + 5       ; 007716
    INC digit + 5       ; 007717
    INC digit + 5       ; 007718
    INC digit + 5       ; 007719
    STX digit + 5       ; 007710  @ 6C93
    INC digit + 4       ; 007720

    STY digit + 5       ; 007721  @ 6C99
    INC digit + 5       ; 007722
    INC digit + 5       ; 007723
    INC digit + 5       ; 007724
    INC digit + 5       ; 007725
    INC digit + 5       ; 007726
    INC digit + 5       ; 007727
    INC digit + 5       ; 007728
    INC digit + 5       ; 007729
    STX digit + 5       ; 007720  @ 6CB4
    INC digit + 4       ; 007730

    STY digit + 5       ; 007731  @ 6CBA
    INC digit + 5       ; 007732
    INC digit + 5       ; 007733
    INC digit + 5       ; 007734
    INC digit + 5       ; 007735
    INC digit + 5       ; 007736
    INC digit + 5       ; 007737
    INC digit + 5       ; 007738
    INC digit + 5       ; 007739
    STX digit + 5       ; 007730  @ 6CD5
    INC digit + 4       ; 007740

    STY digit + 5       ; 007741  @ 6CDB
    INC digit + 5       ; 007742
    INC digit + 5       ; 007743
    INC digit + 5       ; 007744
    INC digit + 5       ; 007745
    INC digit + 5       ; 007746
    INC digit + 5       ; 007747
    INC digit + 5       ; 007748
    INC digit + 5       ; 007749
    STX digit + 5       ; 007740  @ 6CF6
    INC digit + 4       ; 007750

    STY digit + 5       ; 007751  @ 6CFC
    INC digit + 5       ; 007752
    INC digit + 5       ; 007753
    INC digit + 5       ; 007754
    INC digit + 5       ; 007755
    INC digit + 5       ; 007756
    INC digit + 5       ; 007757
    INC digit + 5       ; 007758
    INC digit + 5       ; 007759
    STX digit + 5       ; 007750  @ 6D17
    INC digit + 4       ; 007760

    STY digit + 5       ; 007761  @ 6D1D
    INC digit + 5       ; 007762
    INC digit + 5       ; 007763
    INC digit + 5       ; 007764
    INC digit + 5       ; 007765
    INC digit + 5       ; 007766
    INC digit + 5       ; 007767
    INC digit + 5       ; 007768
    INC digit + 5       ; 007769
    STX digit + 5       ; 007760  @ 6D38
    INC digit + 4       ; 007770

    STY digit + 5       ; 007771  @ 6D3E
    INC digit + 5       ; 007772
    INC digit + 5       ; 007773
    INC digit + 5       ; 007774
    INC digit + 5       ; 007775
    INC digit + 5       ; 007776
    INC digit + 5       ; 007777
    INC digit + 5       ; 007778
    INC digit + 5       ; 007779
    STX digit + 5       ; 007770  @ 6D59
    INC digit + 4       ; 007780

    STY digit + 5       ; 007781  @ 6D5F
    INC digit + 5       ; 007782
    INC digit + 5       ; 007783
    INC digit + 5       ; 007784
    INC digit + 5       ; 007785
    INC digit + 5       ; 007786
    INC digit + 5       ; 007787
    INC digit + 5       ; 007788
    INC digit + 5       ; 007789
    STX digit + 5       ; 007780  @ 6D7A
    INC digit + 4       ; 007790

    STY digit + 5       ; 007791  @ 6D80
    INC digit + 5       ; 007792
    INC digit + 5       ; 007793
    INC digit + 5       ; 007794
    INC digit + 5       ; 007795
    INC digit + 5       ; 007796
    INC digit + 5       ; 007797
    INC digit + 5       ; 007798
    INC digit + 5       ; 007799
    STX digit + 5       ; 007790  @ 6D9B
    STX digit + 4       ; 007700  @ 6D9E
    INC digit + 3       ; 007800

    STY digit + 5       ; 007801  @ 6DA4
    INC digit + 5       ; 007802
    INC digit + 5       ; 007803
    INC digit + 5       ; 007804
    INC digit + 5       ; 007805
    INC digit + 5       ; 007806
    INC digit + 5       ; 007807
    INC digit + 5       ; 007808
    INC digit + 5       ; 007809
    STX digit + 5       ; 007800  @ 6DBF
    STY digit + 4       ; 007810  @ 6DC2

    STY digit + 5       ; 007811  @ 6DC5
    INC digit + 5       ; 007812
    INC digit + 5       ; 007813
    INC digit + 5       ; 007814
    INC digit + 5       ; 007815
    INC digit + 5       ; 007816
    INC digit + 5       ; 007817
    INC digit + 5       ; 007818
    INC digit + 5       ; 007819
    STX digit + 5       ; 007810  @ 6DE0
    INC digit + 4       ; 007820

    STY digit + 5       ; 007821  @ 6DE6
    INC digit + 5       ; 007822
    INC digit + 5       ; 007823
    INC digit + 5       ; 007824
    INC digit + 5       ; 007825
    INC digit + 5       ; 007826
    INC digit + 5       ; 007827
    INC digit + 5       ; 007828
    INC digit + 5       ; 007829
    STX digit + 5       ; 007820  @ 6E01
    INC digit + 4       ; 007830

    STY digit + 5       ; 007831  @ 6E07
    INC digit + 5       ; 007832
    INC digit + 5       ; 007833
    INC digit + 5       ; 007834
    INC digit + 5       ; 007835
    INC digit + 5       ; 007836
    INC digit + 5       ; 007837
    INC digit + 5       ; 007838
    INC digit + 5       ; 007839
    STX digit + 5       ; 007830  @ 6E22
    INC digit + 4       ; 007840

    STY digit + 5       ; 007841  @ 6E28
    INC digit + 5       ; 007842
    INC digit + 5       ; 007843
    INC digit + 5       ; 007844
    INC digit + 5       ; 007845
    INC digit + 5       ; 007846
    INC digit + 5       ; 007847
    INC digit + 5       ; 007848
    INC digit + 5       ; 007849
    STX digit + 5       ; 007840  @ 6E43
    INC digit + 4       ; 007850

    STY digit + 5       ; 007851  @ 6E49
    INC digit + 5       ; 007852
    INC digit + 5       ; 007853
    INC digit + 5       ; 007854
    INC digit + 5       ; 007855
    INC digit + 5       ; 007856
    INC digit + 5       ; 007857
    INC digit + 5       ; 007858
    INC digit + 5       ; 007859
    STX digit + 5       ; 007850  @ 6E64
    INC digit + 4       ; 007860

    STY digit + 5       ; 007861  @ 6E6A
    INC digit + 5       ; 007862
    INC digit + 5       ; 007863
    INC digit + 5       ; 007864
    INC digit + 5       ; 007865
    INC digit + 5       ; 007866
    INC digit + 5       ; 007867
    INC digit + 5       ; 007868
    INC digit + 5       ; 007869
    STX digit + 5       ; 007860  @ 6E85
    INC digit + 4       ; 007870

    STY digit + 5       ; 007871  @ 6E8B
    INC digit + 5       ; 007872
    INC digit + 5       ; 007873
    INC digit + 5       ; 007874
    INC digit + 5       ; 007875
    INC digit + 5       ; 007876
    INC digit + 5       ; 007877
    INC digit + 5       ; 007878
    INC digit + 5       ; 007879
    STX digit + 5       ; 007870  @ 6EA6
    INC digit + 4       ; 007880

    STY digit + 5       ; 007881  @ 6EAC
    INC digit + 5       ; 007882
    INC digit + 5       ; 007883
    INC digit + 5       ; 007884
    INC digit + 5       ; 007885
    INC digit + 5       ; 007886
    INC digit + 5       ; 007887
    INC digit + 5       ; 007888
    INC digit + 5       ; 007889
    STX digit + 5       ; 007880  @ 6EC7
    INC digit + 4       ; 007890

    STY digit + 5       ; 007891  @ 6ECD
    INC digit + 5       ; 007892
    INC digit + 5       ; 007893
    INC digit + 5       ; 007894
    INC digit + 5       ; 007895
    INC digit + 5       ; 007896
    INC digit + 5       ; 007897
    INC digit + 5       ; 007898
    INC digit + 5       ; 007899
    STX digit + 5       ; 007890  @ 6EE8
    STX digit + 4       ; 007800  @ 6EEB
    INC digit + 3       ; 007900

    STY digit + 5       ; 007901  @ 6EF1
    INC digit + 5       ; 007902
    INC digit + 5       ; 007903
    INC digit + 5       ; 007904
    INC digit + 5       ; 007905
    INC digit + 5       ; 007906
    INC digit + 5       ; 007907
    INC digit + 5       ; 007908
    INC digit + 5       ; 007909
    STX digit + 5       ; 007900  @ 6F0C
    STY digit + 4       ; 007910  @ 6F0F

    STY digit + 5       ; 007911  @ 6F12
    INC digit + 5       ; 007912
    INC digit + 5       ; 007913
    INC digit + 5       ; 007914
    INC digit + 5       ; 007915
    INC digit + 5       ; 007916
    INC digit + 5       ; 007917
    INC digit + 5       ; 007918
    INC digit + 5       ; 007919
    STX digit + 5       ; 007910  @ 6F2D
    INC digit + 4       ; 007920

    STY digit + 5       ; 007921  @ 6F33
    INC digit + 5       ; 007922
    INC digit + 5       ; 007923
    INC digit + 5       ; 007924
    INC digit + 5       ; 007925
    INC digit + 5       ; 007926
    INC digit + 5       ; 007927
    INC digit + 5       ; 007928
    INC digit + 5       ; 007929
    STX digit + 5       ; 007920  @ 6F4E
    INC digit + 4       ; 007930

    STY digit + 5       ; 007931  @ 6F54
    INC digit + 5       ; 007932
    INC digit + 5       ; 007933
    INC digit + 5       ; 007934
    INC digit + 5       ; 007935
    INC digit + 5       ; 007936
    INC digit + 5       ; 007937
    INC digit + 5       ; 007938
    INC digit + 5       ; 007939
    STX digit + 5       ; 007930  @ 6F6F
    INC digit + 4       ; 007940

    STY digit + 5       ; 007941  @ 6F75
    INC digit + 5       ; 007942
    INC digit + 5       ; 007943
    INC digit + 5       ; 007944
    INC digit + 5       ; 007945
    INC digit + 5       ; 007946
    INC digit + 5       ; 007947
    INC digit + 5       ; 007948
    INC digit + 5       ; 007949
    STX digit + 5       ; 007940  @ 6F90
    INC digit + 4       ; 007950

    STY digit + 5       ; 007951  @ 6F96
    INC digit + 5       ; 007952
    INC digit + 5       ; 007953
    INC digit + 5       ; 007954
    INC digit + 5       ; 007955
    INC digit + 5       ; 007956
    INC digit + 5       ; 007957
    INC digit + 5       ; 007958
    INC digit + 5       ; 007959
    STX digit + 5       ; 007950  @ 6FB1
    INC digit + 4       ; 007960

    STY digit + 5       ; 007961  @ 6FB7
    INC digit + 5       ; 007962
    INC digit + 5       ; 007963
    INC digit + 5       ; 007964
    INC digit + 5       ; 007965
    INC digit + 5       ; 007966
    INC digit + 5       ; 007967
    INC digit + 5       ; 007968
    INC digit + 5       ; 007969
    STX digit + 5       ; 007960  @ 6FD2
    INC digit + 4       ; 007970

    STY digit + 5       ; 007971  @ 6FD8
    INC digit + 5       ; 007972
    INC digit + 5       ; 007973
    INC digit + 5       ; 007974
    INC digit + 5       ; 007975
    INC digit + 5       ; 007976
    INC digit + 5       ; 007977
    INC digit + 5       ; 007978
    INC digit + 5       ; 007979
    STX digit + 5       ; 007970  @ 6FF3
    INC digit + 4       ; 007980

    STY digit + 5       ; 007981  @ 6FF9
    INC digit + 5       ; 007982
    INC digit + 5       ; 007983
    INC digit + 5       ; 007984
    INC digit + 5       ; 007985
    INC digit + 5       ; 007986
    INC digit + 5       ; 007987
    INC digit + 5       ; 007988
    INC digit + 5       ; 007989
    STX digit + 5       ; 007980  @ 7014
    INC digit + 4       ; 007990

    STY digit + 5       ; 007991  @ 701A
    INC digit + 5       ; 007992
    INC digit + 5       ; 007993
    INC digit + 5       ; 007994
    INC digit + 5       ; 007995
    INC digit + 5       ; 007996
    INC digit + 5       ; 007997
    INC digit + 5       ; 007998
    INC digit + 5       ; 007999
    STX digit + 5       ; 007990  @ 7035
    STX digit + 4       ; 007900  @ 7038
    STX digit + 3       ; 007000  @ 703B
    INC digit + 2       ; 008000

    STY digit + 5       ; 008001  @ 7041
    INC digit + 5       ; 008002
    INC digit + 5       ; 008003
    INC digit + 5       ; 008004
    INC digit + 5       ; 008005
    INC digit + 5       ; 008006
    INC digit + 5       ; 008007
    INC digit + 5       ; 008008
    INC digit + 5       ; 008009
    STX digit + 5       ; 008000  @ 705C
    STY digit + 4       ; 008010  @ 705F

    STY digit + 5       ; 008011  @ 7062
    INC digit + 5       ; 008012
    INC digit + 5       ; 008013
    INC digit + 5       ; 008014
    INC digit + 5       ; 008015
    INC digit + 5       ; 008016
    INC digit + 5       ; 008017
    INC digit + 5       ; 008018
    INC digit + 5       ; 008019
    STX digit + 5       ; 008010  @ 707D
    INC digit + 4       ; 008020

    STY digit + 5       ; 008021  @ 7083
    INC digit + 5       ; 008022
    INC digit + 5       ; 008023
    INC digit + 5       ; 008024
    INC digit + 5       ; 008025
    INC digit + 5       ; 008026
    INC digit + 5       ; 008027
    INC digit + 5       ; 008028
    INC digit + 5       ; 008029
    STX digit + 5       ; 008020  @ 709E
    INC digit + 4       ; 008030

    STY digit + 5       ; 008031  @ 70A4
    INC digit + 5       ; 008032
    INC digit + 5       ; 008033
    INC digit + 5       ; 008034
    INC digit + 5       ; 008035
    INC digit + 5       ; 008036
    INC digit + 5       ; 008037
    INC digit + 5       ; 008038
    INC digit + 5       ; 008039
    STX digit + 5       ; 008030  @ 70BF
    INC digit + 4       ; 008040

    STY digit + 5       ; 008041  @ 70C5
    INC digit + 5       ; 008042
    INC digit + 5       ; 008043
    INC digit + 5       ; 008044
    INC digit + 5       ; 008045
    INC digit + 5       ; 008046
    INC digit + 5       ; 008047
    INC digit + 5       ; 008048
    INC digit + 5       ; 008049
    STX digit + 5       ; 008040  @ 70E0
    INC digit + 4       ; 008050

    STY digit + 5       ; 008051  @ 70E6
    INC digit + 5       ; 008052
    INC digit + 5       ; 008053
    INC digit + 5       ; 008054
    INC digit + 5       ; 008055
    INC digit + 5       ; 008056
    INC digit + 5       ; 008057
    INC digit + 5       ; 008058
    INC digit + 5       ; 008059
    STX digit + 5       ; 008050  @ 7101
    INC digit + 4       ; 008060

    STY digit + 5       ; 008061  @ 7107
    INC digit + 5       ; 008062
    INC digit + 5       ; 008063
    INC digit + 5       ; 008064
    INC digit + 5       ; 008065
    INC digit + 5       ; 008066
    INC digit + 5       ; 008067
    INC digit + 5       ; 008068
    INC digit + 5       ; 008069
    STX digit + 5       ; 008060  @ 7122
    INC digit + 4       ; 008070

    STY digit + 5       ; 008071  @ 7128
    INC digit + 5       ; 008072
    INC digit + 5       ; 008073
    INC digit + 5       ; 008074
    INC digit + 5       ; 008075
    INC digit + 5       ; 008076
    INC digit + 5       ; 008077
    INC digit + 5       ; 008078
    INC digit + 5       ; 008079
    STX digit + 5       ; 008070  @ 7143
    INC digit + 4       ; 008080

    STY digit + 5       ; 008081  @ 7149
    INC digit + 5       ; 008082
    INC digit + 5       ; 008083
    INC digit + 5       ; 008084
    INC digit + 5       ; 008085
    INC digit + 5       ; 008086
    INC digit + 5       ; 008087
    INC digit + 5       ; 008088
    INC digit + 5       ; 008089
    STX digit + 5       ; 008080  @ 7164
    INC digit + 4       ; 008090

    STY digit + 5       ; 008091  @ 716A
    INC digit + 5       ; 008092
    INC digit + 5       ; 008093
    INC digit + 5       ; 008094
    INC digit + 5       ; 008095
    INC digit + 5       ; 008096
    INC digit + 5       ; 008097
    INC digit + 5       ; 008098
    INC digit + 5       ; 008099
    STX digit + 5       ; 008090  @ 7185
    STX digit + 4       ; 008000  @ 7188
    STY digit + 3       ; 008100  @ 718B

    STY digit + 5       ; 008101  @ 718E
    INC digit + 5       ; 008102
    INC digit + 5       ; 008103
    INC digit + 5       ; 008104
    INC digit + 5       ; 008105
    INC digit + 5       ; 008106
    INC digit + 5       ; 008107
    INC digit + 5       ; 008108
    INC digit + 5       ; 008109
    STX digit + 5       ; 008100  @ 71A9
    STY digit + 4       ; 008110  @ 71AC

    STY digit + 5       ; 008111  @ 71AF
    INC digit + 5       ; 008112
    INC digit + 5       ; 008113
    INC digit + 5       ; 008114
    INC digit + 5       ; 008115
    INC digit + 5       ; 008116
    INC digit + 5       ; 008117
    INC digit + 5       ; 008118
    INC digit + 5       ; 008119
    STX digit + 5       ; 008110  @ 71CA
    INC digit + 4       ; 008120

    STY digit + 5       ; 008121  @ 71D0
    INC digit + 5       ; 008122
    INC digit + 5       ; 008123
    INC digit + 5       ; 008124
    INC digit + 5       ; 008125
    INC digit + 5       ; 008126
    INC digit + 5       ; 008127
    INC digit + 5       ; 008128
    INC digit + 5       ; 008129
    STX digit + 5       ; 008120  @ 71EB
    INC digit + 4       ; 008130

    STY digit + 5       ; 008131  @ 71F1
    INC digit + 5       ; 008132
    INC digit + 5       ; 008133
    INC digit + 5       ; 008134
    INC digit + 5       ; 008135
    INC digit + 5       ; 008136
    INC digit + 5       ; 008137
    INC digit + 5       ; 008138
    INC digit + 5       ; 008139
    STX digit + 5       ; 008130  @ 720C
    INC digit + 4       ; 008140

    STY digit + 5       ; 008141  @ 7212
    INC digit + 5       ; 008142
    INC digit + 5       ; 008143
    INC digit + 5       ; 008144
    INC digit + 5       ; 008145
    INC digit + 5       ; 008146
    INC digit + 5       ; 008147
    INC digit + 5       ; 008148
    INC digit + 5       ; 008149
    STX digit + 5       ; 008140  @ 722D
    INC digit + 4       ; 008150

    STY digit + 5       ; 008151  @ 7233
    INC digit + 5       ; 008152
    INC digit + 5       ; 008153
    INC digit + 5       ; 008154
    INC digit + 5       ; 008155
    INC digit + 5       ; 008156
    INC digit + 5       ; 008157
    INC digit + 5       ; 008158
    INC digit + 5       ; 008159
    STX digit + 5       ; 008150  @ 724E
    INC digit + 4       ; 008160

    STY digit + 5       ; 008161  @ 7254
    INC digit + 5       ; 008162
    INC digit + 5       ; 008163
    INC digit + 5       ; 008164
    INC digit + 5       ; 008165
    INC digit + 5       ; 008166
    INC digit + 5       ; 008167
    INC digit + 5       ; 008168
    INC digit + 5       ; 008169
    STX digit + 5       ; 008160  @ 726F
    INC digit + 4       ; 008170

    STY digit + 5       ; 008171  @ 7275
    INC digit + 5       ; 008172
    INC digit + 5       ; 008173
    INC digit + 5       ; 008174
    INC digit + 5       ; 008175
    INC digit + 5       ; 008176
    INC digit + 5       ; 008177
    INC digit + 5       ; 008178
    INC digit + 5       ; 008179
    STX digit + 5       ; 008170  @ 7290
    INC digit + 4       ; 008180

    STY digit + 5       ; 008181  @ 7296
    INC digit + 5       ; 008182
    INC digit + 5       ; 008183
    INC digit + 5       ; 008184
    INC digit + 5       ; 008185
    INC digit + 5       ; 008186
    INC digit + 5       ; 008187
    INC digit + 5       ; 008188
    INC digit + 5       ; 008189
    STX digit + 5       ; 008180  @ 72B1
    INC digit + 4       ; 008190

    STY digit + 5       ; 008191  @ 72B7
    INC digit + 5       ; 008192
    INC digit + 5       ; 008193
    INC digit + 5       ; 008194
    INC digit + 5       ; 008195
    INC digit + 5       ; 008196
    INC digit + 5       ; 008197
    INC digit + 5       ; 008198
    INC digit + 5       ; 008199
    STX digit + 5       ; 008190  @ 72D2
    STX digit + 4       ; 008100  @ 72D5
    INC digit + 3       ; 008200

    STY digit + 5       ; 008201  @ 72DB
    INC digit + 5       ; 008202
    INC digit + 5       ; 008203
    INC digit + 5       ; 008204
    INC digit + 5       ; 008205
    INC digit + 5       ; 008206
    INC digit + 5       ; 008207
    INC digit + 5       ; 008208
    INC digit + 5       ; 008209
    STX digit + 5       ; 008200  @ 72F6
    STY digit + 4       ; 008210  @ 72F9

    STY digit + 5       ; 008211  @ 72FC
    INC digit + 5       ; 008212
    INC digit + 5       ; 008213
    INC digit + 5       ; 008214
    INC digit + 5       ; 008215
    INC digit + 5       ; 008216
    INC digit + 5       ; 008217
    INC digit + 5       ; 008218
    INC digit + 5       ; 008219
    STX digit + 5       ; 008210  @ 7317
    INC digit + 4       ; 008220

    STY digit + 5       ; 008221  @ 731D
    INC digit + 5       ; 008222
    INC digit + 5       ; 008223
    INC digit + 5       ; 008224
    INC digit + 5       ; 008225
    INC digit + 5       ; 008226
    INC digit + 5       ; 008227
    INC digit + 5       ; 008228
    INC digit + 5       ; 008229
    STX digit + 5       ; 008220  @ 7338
    INC digit + 4       ; 008230

    STY digit + 5       ; 008231  @ 733E
    INC digit + 5       ; 008232
    INC digit + 5       ; 008233
    INC digit + 5       ; 008234
    INC digit + 5       ; 008235
    INC digit + 5       ; 008236
    INC digit + 5       ; 008237
    INC digit + 5       ; 008238
    INC digit + 5       ; 008239
    STX digit + 5       ; 008230  @ 7359
    INC digit + 4       ; 008240

    STY digit + 5       ; 008241  @ 735F
    INC digit + 5       ; 008242
    INC digit + 5       ; 008243
    INC digit + 5       ; 008244
    INC digit + 5       ; 008245
    INC digit + 5       ; 008246
    INC digit + 5       ; 008247
    INC digit + 5       ; 008248
    INC digit + 5       ; 008249
    STX digit + 5       ; 008240  @ 737A
    INC digit + 4       ; 008250

    STY digit + 5       ; 008251  @ 7380
    INC digit + 5       ; 008252
    INC digit + 5       ; 008253
    INC digit + 5       ; 008254
    INC digit + 5       ; 008255
    INC digit + 5       ; 008256
    INC digit + 5       ; 008257
    INC digit + 5       ; 008258
    INC digit + 5       ; 008259
    STX digit + 5       ; 008250  @ 739B
    INC digit + 4       ; 008260

    STY digit + 5       ; 008261  @ 73A1
    INC digit + 5       ; 008262
    INC digit + 5       ; 008263
    INC digit + 5       ; 008264
    INC digit + 5       ; 008265
    INC digit + 5       ; 008266
    INC digit + 5       ; 008267
    INC digit + 5       ; 008268
    INC digit + 5       ; 008269
    STX digit + 5       ; 008260  @ 73BC
    INC digit + 4       ; 008270

    STY digit + 5       ; 008271  @ 73C2
    INC digit + 5       ; 008272
    INC digit + 5       ; 008273
    INC digit + 5       ; 008274
    INC digit + 5       ; 008275
    INC digit + 5       ; 008276
    INC digit + 5       ; 008277
    INC digit + 5       ; 008278
    INC digit + 5       ; 008279
    STX digit + 5       ; 008270  @ 73DD
    INC digit + 4       ; 008280

    STY digit + 5       ; 008281  @ 73E3
    INC digit + 5       ; 008282
    INC digit + 5       ; 008283
    INC digit + 5       ; 008284
    INC digit + 5       ; 008285
    INC digit + 5       ; 008286
    INC digit + 5       ; 008287
    INC digit + 5       ; 008288
    INC digit + 5       ; 008289
    STX digit + 5       ; 008280  @ 73FE
    INC digit + 4       ; 008290

    STY digit + 5       ; 008291  @ 7404
    INC digit + 5       ; 008292
    INC digit + 5       ; 008293
    INC digit + 5       ; 008294
    INC digit + 5       ; 008295
    INC digit + 5       ; 008296
    INC digit + 5       ; 008297
    INC digit + 5       ; 008298
    INC digit + 5       ; 008299
    STX digit + 5       ; 008290  @ 741F
    STX digit + 4       ; 008200  @ 7422
    INC digit + 3       ; 008300

    STY digit + 5       ; 008301  @ 7428
    INC digit + 5       ; 008302
    INC digit + 5       ; 008303
    INC digit + 5       ; 008304
    INC digit + 5       ; 008305
    INC digit + 5       ; 008306
    INC digit + 5       ; 008307
    INC digit + 5       ; 008308
    INC digit + 5       ; 008309
    STX digit + 5       ; 008300  @ 7443
    STY digit + 4       ; 008310  @ 7446

    STY digit + 5       ; 008311  @ 7449
    INC digit + 5       ; 008312
    INC digit + 5       ; 008313
    INC digit + 5       ; 008314
    INC digit + 5       ; 008315
    INC digit + 5       ; 008316
    INC digit + 5       ; 008317
    INC digit + 5       ; 008318
    INC digit + 5       ; 008319
    STX digit + 5       ; 008310  @ 7464
    INC digit + 4       ; 008320

    STY digit + 5       ; 008321  @ 746A
    INC digit + 5       ; 008322
    INC digit + 5       ; 008323
    INC digit + 5       ; 008324
    INC digit + 5       ; 008325
    INC digit + 5       ; 008326
    INC digit + 5       ; 008327
    INC digit + 5       ; 008328
    INC digit + 5       ; 008329
    STX digit + 5       ; 008320  @ 7485
    INC digit + 4       ; 008330

    STY digit + 5       ; 008331  @ 748B
    INC digit + 5       ; 008332
    INC digit + 5       ; 008333
    INC digit + 5       ; 008334
    INC digit + 5       ; 008335
    INC digit + 5       ; 008336
    INC digit + 5       ; 008337
    INC digit + 5       ; 008338
    INC digit + 5       ; 008339
    STX digit + 5       ; 008330  @ 74A6
    INC digit + 4       ; 008340

    STY digit + 5       ; 008341  @ 74AC
    INC digit + 5       ; 008342
    INC digit + 5       ; 008343
    INC digit + 5       ; 008344
    INC digit + 5       ; 008345
    INC digit + 5       ; 008346
    INC digit + 5       ; 008347
    INC digit + 5       ; 008348
    INC digit + 5       ; 008349
    STX digit + 5       ; 008340  @ 74C7
    INC digit + 4       ; 008350

    STY digit + 5       ; 008351  @ 74CD
    INC digit + 5       ; 008352
    INC digit + 5       ; 008353
    INC digit + 5       ; 008354
    INC digit + 5       ; 008355
    INC digit + 5       ; 008356
    INC digit + 5       ; 008357
    INC digit + 5       ; 008358
    INC digit + 5       ; 008359
    STX digit + 5       ; 008350  @ 74E8
    INC digit + 4       ; 008360

    STY digit + 5       ; 008361  @ 74EE
    INC digit + 5       ; 008362
    INC digit + 5       ; 008363
    INC digit + 5       ; 008364
    INC digit + 5       ; 008365
    INC digit + 5       ; 008366
    INC digit + 5       ; 008367
    INC digit + 5       ; 008368
    INC digit + 5       ; 008369
    STX digit + 5       ; 008360  @ 7509
    INC digit + 4       ; 008370

    STY digit + 5       ; 008371  @ 750F
    INC digit + 5       ; 008372
    INC digit + 5       ; 008373
    INC digit + 5       ; 008374
    INC digit + 5       ; 008375
    INC digit + 5       ; 008376
    INC digit + 5       ; 008377
    INC digit + 5       ; 008378
    INC digit + 5       ; 008379
    STX digit + 5       ; 008370  @ 752A
    INC digit + 4       ; 008380

    STY digit + 5       ; 008381  @ 7530
    INC digit + 5       ; 008382
    INC digit + 5       ; 008383
    INC digit + 5       ; 008384
    INC digit + 5       ; 008385
    INC digit + 5       ; 008386
    INC digit + 5       ; 008387
    INC digit + 5       ; 008388
    INC digit + 5       ; 008389
    STX digit + 5       ; 008380  @ 754B
    INC digit + 4       ; 008390

    STY digit + 5       ; 008391  @ 7551
    INC digit + 5       ; 008392
    INC digit + 5       ; 008393
    INC digit + 5       ; 008394
    INC digit + 5       ; 008395
    INC digit + 5       ; 008396
    INC digit + 5       ; 008397
    INC digit + 5       ; 008398
    INC digit + 5       ; 008399
    STX digit + 5       ; 008390  @ 756C
    STX digit + 4       ; 008300  @ 756F
    INC digit + 3       ; 008400

    STY digit + 5       ; 008401  @ 7575
    INC digit + 5       ; 008402
    INC digit + 5       ; 008403
    INC digit + 5       ; 008404
    INC digit + 5       ; 008405
    INC digit + 5       ; 008406
    INC digit + 5       ; 008407
    INC digit + 5       ; 008408
    INC digit + 5       ; 008409
    STX digit + 5       ; 008400  @ 7590
    STY digit + 4       ; 008410  @ 7593

    STY digit + 5       ; 008411  @ 7596
    INC digit + 5       ; 008412
    INC digit + 5       ; 008413
    INC digit + 5       ; 008414
    INC digit + 5       ; 008415
    INC digit + 5       ; 008416
    INC digit + 5       ; 008417
    INC digit + 5       ; 008418
    INC digit + 5       ; 008419
    STX digit + 5       ; 008410  @ 75B1
    INC digit + 4       ; 008420

    STY digit + 5       ; 008421  @ 75B7
    INC digit + 5       ; 008422
    INC digit + 5       ; 008423
    INC digit + 5       ; 008424
    INC digit + 5       ; 008425
    INC digit + 5       ; 008426
    INC digit + 5       ; 008427
    INC digit + 5       ; 008428
    INC digit + 5       ; 008429
    STX digit + 5       ; 008420  @ 75D2
    INC digit + 4       ; 008430

    STY digit + 5       ; 008431  @ 75D8
    INC digit + 5       ; 008432
    INC digit + 5       ; 008433
    INC digit + 5       ; 008434
    INC digit + 5       ; 008435
    INC digit + 5       ; 008436
    INC digit + 5       ; 008437
    INC digit + 5       ; 008438
    INC digit + 5       ; 008439
    STX digit + 5       ; 008430  @ 75F3
    INC digit + 4       ; 008440

    STY digit + 5       ; 008441  @ 75F9
    INC digit + 5       ; 008442
    INC digit + 5       ; 008443
    INC digit + 5       ; 008444
    INC digit + 5       ; 008445
    INC digit + 5       ; 008446
    INC digit + 5       ; 008447
    INC digit + 5       ; 008448
    INC digit + 5       ; 008449
    STX digit + 5       ; 008440  @ 7614
    INC digit + 4       ; 008450

    STY digit + 5       ; 008451  @ 761A
    INC digit + 5       ; 008452
    INC digit + 5       ; 008453
    INC digit + 5       ; 008454
    INC digit + 5       ; 008455
    INC digit + 5       ; 008456
    INC digit + 5       ; 008457
    INC digit + 5       ; 008458
    INC digit + 5       ; 008459
    STX digit + 5       ; 008450  @ 7635
    INC digit + 4       ; 008460

    STY digit + 5       ; 008461  @ 763B
    INC digit + 5       ; 008462
    INC digit + 5       ; 008463
    INC digit + 5       ; 008464
    INC digit + 5       ; 008465
    INC digit + 5       ; 008466
    INC digit + 5       ; 008467
    INC digit + 5       ; 008468
    INC digit + 5       ; 008469
    STX digit + 5       ; 008460  @ 7656
    INC digit + 4       ; 008470

    STY digit + 5       ; 008471  @ 765C
    INC digit + 5       ; 008472
    INC digit + 5       ; 008473
    INC digit + 5       ; 008474
    INC digit + 5       ; 008475
    INC digit + 5       ; 008476
    INC digit + 5       ; 008477
    INC digit + 5       ; 008478
    INC digit + 5       ; 008479
    STX digit + 5       ; 008470  @ 7677
    INC digit + 4       ; 008480

    STY digit + 5       ; 008481  @ 767D
    INC digit + 5       ; 008482
    INC digit + 5       ; 008483
    INC digit + 5       ; 008484
    INC digit + 5       ; 008485
    INC digit + 5       ; 008486
    INC digit + 5       ; 008487
    INC digit + 5       ; 008488
    INC digit + 5       ; 008489
    STX digit + 5       ; 008480  @ 7698
    INC digit + 4       ; 008490

    STY digit + 5       ; 008491  @ 769E
    INC digit + 5       ; 008492
    INC digit + 5       ; 008493
    INC digit + 5       ; 008494
    INC digit + 5       ; 008495
    INC digit + 5       ; 008496
    INC digit + 5       ; 008497
    INC digit + 5       ; 008498
    INC digit + 5       ; 008499
    STX digit + 5       ; 008490  @ 76B9
    STX digit + 4       ; 008400  @ 76BC
    INC digit + 3       ; 008500

    STY digit + 5       ; 008501  @ 76C2
    INC digit + 5       ; 008502
    INC digit + 5       ; 008503
    INC digit + 5       ; 008504
    INC digit + 5       ; 008505
    INC digit + 5       ; 008506
    INC digit + 5       ; 008507
    INC digit + 5       ; 008508
    INC digit + 5       ; 008509
    STX digit + 5       ; 008500  @ 76DD
    STY digit + 4       ; 008510  @ 76E0

    STY digit + 5       ; 008511  @ 76E3
    INC digit + 5       ; 008512
    INC digit + 5       ; 008513
    INC digit + 5       ; 008514
    INC digit + 5       ; 008515
    INC digit + 5       ; 008516
    INC digit + 5       ; 008517
    INC digit + 5       ; 008518
    INC digit + 5       ; 008519
    STX digit + 5       ; 008510  @ 76FE
    INC digit + 4       ; 008520

    STY digit + 5       ; 008521  @ 7704
    INC digit + 5       ; 008522
    INC digit + 5       ; 008523
    INC digit + 5       ; 008524
    INC digit + 5       ; 008525
    INC digit + 5       ; 008526
    INC digit + 5       ; 008527
    INC digit + 5       ; 008528
    INC digit + 5       ; 008529
    STX digit + 5       ; 008520  @ 771F
    INC digit + 4       ; 008530

    STY digit + 5       ; 008531  @ 7725
    INC digit + 5       ; 008532
    INC digit + 5       ; 008533
    INC digit + 5       ; 008534
    INC digit + 5       ; 008535
    INC digit + 5       ; 008536
    INC digit + 5       ; 008537
    INC digit + 5       ; 008538
    INC digit + 5       ; 008539
    STX digit + 5       ; 008530  @ 7740
    INC digit + 4       ; 008540

    STY digit + 5       ; 008541  @ 7746
    INC digit + 5       ; 008542
    INC digit + 5       ; 008543
    INC digit + 5       ; 008544
    INC digit + 5       ; 008545
    INC digit + 5       ; 008546
    INC digit + 5       ; 008547
    INC digit + 5       ; 008548
    INC digit + 5       ; 008549
    STX digit + 5       ; 008540  @ 7761
    INC digit + 4       ; 008550

    STY digit + 5       ; 008551  @ 7767
    INC digit + 5       ; 008552
    INC digit + 5       ; 008553
    INC digit + 5       ; 008554
    INC digit + 5       ; 008555
    INC digit + 5       ; 008556
    INC digit + 5       ; 008557
    INC digit + 5       ; 008558
    INC digit + 5       ; 008559
    STX digit + 5       ; 008550  @ 7782
    INC digit + 4       ; 008560

    STY digit + 5       ; 008561  @ 7788
    INC digit + 5       ; 008562
    INC digit + 5       ; 008563
    INC digit + 5       ; 008564
    INC digit + 5       ; 008565
    INC digit + 5       ; 008566
    INC digit + 5       ; 008567
    INC digit + 5       ; 008568
    INC digit + 5       ; 008569
    STX digit + 5       ; 008560  @ 77A3
    INC digit + 4       ; 008570

    STY digit + 5       ; 008571  @ 77A9
    INC digit + 5       ; 008572
    INC digit + 5       ; 008573
    INC digit + 5       ; 008574
    INC digit + 5       ; 008575
    INC digit + 5       ; 008576
    INC digit + 5       ; 008577
    INC digit + 5       ; 008578
    INC digit + 5       ; 008579
    STX digit + 5       ; 008570  @ 77C4
    INC digit + 4       ; 008580

    STY digit + 5       ; 008581  @ 77CA
    INC digit + 5       ; 008582
    INC digit + 5       ; 008583
    INC digit + 5       ; 008584
    INC digit + 5       ; 008585
    INC digit + 5       ; 008586
    INC digit + 5       ; 008587
    INC digit + 5       ; 008588
    INC digit + 5       ; 008589
    STX digit + 5       ; 008580  @ 77E5
    INC digit + 4       ; 008590

    STY digit + 5       ; 008591  @ 77EB
    INC digit + 5       ; 008592
    INC digit + 5       ; 008593
    INC digit + 5       ; 008594
    INC digit + 5       ; 008595
    INC digit + 5       ; 008596
    INC digit + 5       ; 008597
    INC digit + 5       ; 008598
    INC digit + 5       ; 008599
    STX digit + 5       ; 008590  @ 7806
    STX digit + 4       ; 008500  @ 7809
    INC digit + 3       ; 008600

    STY digit + 5       ; 008601  @ 780F
    INC digit + 5       ; 008602
    INC digit + 5       ; 008603
    INC digit + 5       ; 008604
    INC digit + 5       ; 008605
    INC digit + 5       ; 008606
    INC digit + 5       ; 008607
    INC digit + 5       ; 008608
    INC digit + 5       ; 008609
    STX digit + 5       ; 008600  @ 782A
    STY digit + 4       ; 008610  @ 782D

    STY digit + 5       ; 008611  @ 7830
    INC digit + 5       ; 008612
    INC digit + 5       ; 008613
    INC digit + 5       ; 008614
    INC digit + 5       ; 008615
    INC digit + 5       ; 008616
    INC digit + 5       ; 008617
    INC digit + 5       ; 008618
    INC digit + 5       ; 008619
    STX digit + 5       ; 008610  @ 784B
    INC digit + 4       ; 008620

    STY digit + 5       ; 008621  @ 7851
    INC digit + 5       ; 008622
    INC digit + 5       ; 008623
    INC digit + 5       ; 008624
    INC digit + 5       ; 008625
    INC digit + 5       ; 008626
    INC digit + 5       ; 008627
    INC digit + 5       ; 008628
    INC digit + 5       ; 008629
    STX digit + 5       ; 008620  @ 786C
    INC digit + 4       ; 008630

    STY digit + 5       ; 008631  @ 7872
    INC digit + 5       ; 008632
    INC digit + 5       ; 008633
    INC digit + 5       ; 008634
    INC digit + 5       ; 008635
    INC digit + 5       ; 008636
    INC digit + 5       ; 008637
    INC digit + 5       ; 008638
    INC digit + 5       ; 008639
    STX digit + 5       ; 008630  @ 788D
    INC digit + 4       ; 008640

    STY digit + 5       ; 008641  @ 7893
    INC digit + 5       ; 008642
    INC digit + 5       ; 008643
    INC digit + 5       ; 008644
    INC digit + 5       ; 008645
    INC digit + 5       ; 008646
    INC digit + 5       ; 008647
    INC digit + 5       ; 008648
    INC digit + 5       ; 008649
    STX digit + 5       ; 008640  @ 78AE
    INC digit + 4       ; 008650

    STY digit + 5       ; 008651  @ 78B4
    INC digit + 5       ; 008652
    INC digit + 5       ; 008653
    INC digit + 5       ; 008654
    INC digit + 5       ; 008655
    INC digit + 5       ; 008656
    INC digit + 5       ; 008657
    INC digit + 5       ; 008658
    INC digit + 5       ; 008659
    STX digit + 5       ; 008650  @ 78CF
    INC digit + 4       ; 008660

    STY digit + 5       ; 008661  @ 78D5
    INC digit + 5       ; 008662
    INC digit + 5       ; 008663
    INC digit + 5       ; 008664
    INC digit + 5       ; 008665
    INC digit + 5       ; 008666
    INC digit + 5       ; 008667
    INC digit + 5       ; 008668
    INC digit + 5       ; 008669
    STX digit + 5       ; 008660  @ 78F0
    INC digit + 4       ; 008670

    STY digit + 5       ; 008671  @ 78F6
    INC digit + 5       ; 008672
    INC digit + 5       ; 008673
    INC digit + 5       ; 008674
    INC digit + 5       ; 008675
    INC digit + 5       ; 008676
    INC digit + 5       ; 008677
    INC digit + 5       ; 008678
    INC digit + 5       ; 008679
    STX digit + 5       ; 008670  @ 7911
    INC digit + 4       ; 008680

    STY digit + 5       ; 008681  @ 7917
    INC digit + 5       ; 008682
    INC digit + 5       ; 008683
    INC digit + 5       ; 008684
    INC digit + 5       ; 008685
    INC digit + 5       ; 008686
    INC digit + 5       ; 008687
    INC digit + 5       ; 008688
    INC digit + 5       ; 008689
    STX digit + 5       ; 008680  @ 7932
    INC digit + 4       ; 008690

    STY digit + 5       ; 008691  @ 7938
    INC digit + 5       ; 008692
    INC digit + 5       ; 008693
    INC digit + 5       ; 008694
    INC digit + 5       ; 008695
    INC digit + 5       ; 008696
    INC digit + 5       ; 008697
    INC digit + 5       ; 008698
    INC digit + 5       ; 008699
    STX digit + 5       ; 008690  @ 7953
    STX digit + 4       ; 008600  @ 7956
    INC digit + 3       ; 008700

    STY digit + 5       ; 008701  @ 795C
    INC digit + 5       ; 008702
    INC digit + 5       ; 008703
    INC digit + 5       ; 008704
    INC digit + 5       ; 008705
    INC digit + 5       ; 008706
    INC digit + 5       ; 008707
    INC digit + 5       ; 008708
    INC digit + 5       ; 008709
    STX digit + 5       ; 008700  @ 7977
    STY digit + 4       ; 008710  @ 797A

    STY digit + 5       ; 008711  @ 797D
    INC digit + 5       ; 008712
    INC digit + 5       ; 008713
    INC digit + 5       ; 008714
    INC digit + 5       ; 008715
    INC digit + 5       ; 008716
    INC digit + 5       ; 008717
    INC digit + 5       ; 008718
    INC digit + 5       ; 008719
    STX digit + 5       ; 008710  @ 7998
    INC digit + 4       ; 008720

    STY digit + 5       ; 008721  @ 799E
    INC digit + 5       ; 008722
    INC digit + 5       ; 008723
    INC digit + 5       ; 008724
    INC digit + 5       ; 008725
    INC digit + 5       ; 008726
    INC digit + 5       ; 008727
    INC digit + 5       ; 008728
    INC digit + 5       ; 008729
    STX digit + 5       ; 008720  @ 79B9
    INC digit + 4       ; 008730

    STY digit + 5       ; 008731  @ 79BF
    INC digit + 5       ; 008732
    INC digit + 5       ; 008733
    INC digit + 5       ; 008734
    INC digit + 5       ; 008735
    INC digit + 5       ; 008736
    INC digit + 5       ; 008737
    INC digit + 5       ; 008738
    INC digit + 5       ; 008739
    STX digit + 5       ; 008730  @ 79DA
    INC digit + 4       ; 008740

    STY digit + 5       ; 008741  @ 79E0
    INC digit + 5       ; 008742
    INC digit + 5       ; 008743
    INC digit + 5       ; 008744
    INC digit + 5       ; 008745
    INC digit + 5       ; 008746
    INC digit + 5       ; 008747
    INC digit + 5       ; 008748
    INC digit + 5       ; 008749
    STX digit + 5       ; 008740  @ 79FB
    INC digit + 4       ; 008750

    STY digit + 5       ; 008751  @ 7A01
    INC digit + 5       ; 008752
    INC digit + 5       ; 008753
    INC digit + 5       ; 008754
    INC digit + 5       ; 008755
    INC digit + 5       ; 008756
    INC digit + 5       ; 008757
    INC digit + 5       ; 008758
    INC digit + 5       ; 008759
    STX digit + 5       ; 008750  @ 7A1C
    INC digit + 4       ; 008760

    STY digit + 5       ; 008761  @ 7A22
    INC digit + 5       ; 008762
    INC digit + 5       ; 008763
    INC digit + 5       ; 008764
    INC digit + 5       ; 008765
    INC digit + 5       ; 008766
    INC digit + 5       ; 008767
    INC digit + 5       ; 008768
    INC digit + 5       ; 008769
    STX digit + 5       ; 008760  @ 7A3D
    INC digit + 4       ; 008770

    STY digit + 5       ; 008771  @ 7A43
    INC digit + 5       ; 008772
    INC digit + 5       ; 008773
    INC digit + 5       ; 008774
    INC digit + 5       ; 008775
    INC digit + 5       ; 008776
    INC digit + 5       ; 008777
    INC digit + 5       ; 008778
    INC digit + 5       ; 008779
    STX digit + 5       ; 008770  @ 7A5E
    INC digit + 4       ; 008780

    STY digit + 5       ; 008781  @ 7A64
    INC digit + 5       ; 008782
    INC digit + 5       ; 008783
    INC digit + 5       ; 008784
    INC digit + 5       ; 008785
    INC digit + 5       ; 008786
    INC digit + 5       ; 008787
    INC digit + 5       ; 008788
    INC digit + 5       ; 008789
    STX digit + 5       ; 008780  @ 7A7F
    INC digit + 4       ; 008790

    STY digit + 5       ; 008791  @ 7A85
    INC digit + 5       ; 008792
    INC digit + 5       ; 008793
    INC digit + 5       ; 008794
    INC digit + 5       ; 008795
    INC digit + 5       ; 008796
    INC digit + 5       ; 008797
    INC digit + 5       ; 008798
    INC digit + 5       ; 008799
    STX digit + 5       ; 008790  @ 7AA0
    STX digit + 4       ; 008700  @ 7AA3
    INC digit + 3       ; 008800

    STY digit + 5       ; 008801  @ 7AA9
    INC digit + 5       ; 008802
    INC digit + 5       ; 008803
    INC digit + 5       ; 008804
    INC digit + 5       ; 008805
    INC digit + 5       ; 008806
    INC digit + 5       ; 008807
    INC digit + 5       ; 008808
    INC digit + 5       ; 008809
    STX digit + 5       ; 008800  @ 7AC4
    STY digit + 4       ; 008810  @ 7AC7

    STY digit + 5       ; 008811  @ 7ACA
    INC digit + 5       ; 008812
    INC digit + 5       ; 008813
    INC digit + 5       ; 008814
    INC digit + 5       ; 008815
    INC digit + 5       ; 008816
    INC digit + 5       ; 008817
    INC digit + 5       ; 008818
    INC digit + 5       ; 008819
    STX digit + 5       ; 008810  @ 7AE5
    INC digit + 4       ; 008820

    STY digit + 5       ; 008821  @ 7AEB
    INC digit + 5       ; 008822
    INC digit + 5       ; 008823
    INC digit + 5       ; 008824
    INC digit + 5       ; 008825
    INC digit + 5       ; 008826
    INC digit + 5       ; 008827
    INC digit + 5       ; 008828
    INC digit + 5       ; 008829
    STX digit + 5       ; 008820  @ 7B06
    INC digit + 4       ; 008830

    STY digit + 5       ; 008831  @ 7B0C
    INC digit + 5       ; 008832
    INC digit + 5       ; 008833
    INC digit + 5       ; 008834
    INC digit + 5       ; 008835
    INC digit + 5       ; 008836
    INC digit + 5       ; 008837
    INC digit + 5       ; 008838
    INC digit + 5       ; 008839
    STX digit + 5       ; 008830  @ 7B27
    INC digit + 4       ; 008840

    STY digit + 5       ; 008841  @ 7B2D
    INC digit + 5       ; 008842
    INC digit + 5       ; 008843
    INC digit + 5       ; 008844
    INC digit + 5       ; 008845
    INC digit + 5       ; 008846
    INC digit + 5       ; 008847
    INC digit + 5       ; 008848
    INC digit + 5       ; 008849
    STX digit + 5       ; 008840  @ 7B48
    INC digit + 4       ; 008850

    STY digit + 5       ; 008851  @ 7B4E
    INC digit + 5       ; 008852
    INC digit + 5       ; 008853
    INC digit + 5       ; 008854
    INC digit + 5       ; 008855
    INC digit + 5       ; 008856
    INC digit + 5       ; 008857
    INC digit + 5       ; 008858
    INC digit + 5       ; 008859
    STX digit + 5       ; 008850  @ 7B69
    INC digit + 4       ; 008860

    STY digit + 5       ; 008861  @ 7B6F
    INC digit + 5       ; 008862
    INC digit + 5       ; 008863
    INC digit + 5       ; 008864
    INC digit + 5       ; 008865
    INC digit + 5       ; 008866
    INC digit + 5       ; 008867
    INC digit + 5       ; 008868
    INC digit + 5       ; 008869
    STX digit + 5       ; 008860  @ 7B8A
    INC digit + 4       ; 008870

    STY digit + 5       ; 008871  @ 7B90
    INC digit + 5       ; 008872
    INC digit + 5       ; 008873
    INC digit + 5       ; 008874
    INC digit + 5       ; 008875
    INC digit + 5       ; 008876
    INC digit + 5       ; 008877
    INC digit + 5       ; 008878
    INC digit + 5       ; 008879
    STX digit + 5       ; 008870  @ 7BAB
    INC digit + 4       ; 008880

    STY digit + 5       ; 008881  @ 7BB1
    INC digit + 5       ; 008882
    INC digit + 5       ; 008883
    INC digit + 5       ; 008884
    INC digit + 5       ; 008885
    INC digit + 5       ; 008886
    INC digit + 5       ; 008887
    INC digit + 5       ; 008888
    INC digit + 5       ; 008889
    STX digit + 5       ; 008880  @ 7BCC
    INC digit + 4       ; 008890

    STY digit + 5       ; 008891  @ 7BD2
    INC digit + 5       ; 008892
    INC digit + 5       ; 008893
    INC digit + 5       ; 008894
    INC digit + 5       ; 008895
    INC digit + 5       ; 008896
    INC digit + 5       ; 008897
    INC digit + 5       ; 008898
    INC digit + 5       ; 008899
    STX digit + 5       ; 008890  @ 7BED
    STX digit + 4       ; 008800  @ 7BF0
    INC digit + 3       ; 008900

    STY digit + 5       ; 008901  @ 7BF6
    INC digit + 5       ; 008902
    INC digit + 5       ; 008903
    INC digit + 5       ; 008904
    INC digit + 5       ; 008905
    INC digit + 5       ; 008906
    INC digit + 5       ; 008907
    INC digit + 5       ; 008908
    INC digit + 5       ; 008909
    STX digit + 5       ; 008900  @ 7C11
    STY digit + 4       ; 008910  @ 7C14

    STY digit + 5       ; 008911  @ 7C17
    INC digit + 5       ; 008912
    INC digit + 5       ; 008913
    INC digit + 5       ; 008914
    INC digit + 5       ; 008915
    INC digit + 5       ; 008916
    INC digit + 5       ; 008917
    INC digit + 5       ; 008918
    INC digit + 5       ; 008919
    STX digit + 5       ; 008910  @ 7C32
    INC digit + 4       ; 008920

    STY digit + 5       ; 008921  @ 7C38
    INC digit + 5       ; 008922
    INC digit + 5       ; 008923
    INC digit + 5       ; 008924
    INC digit + 5       ; 008925
    INC digit + 5       ; 008926
    INC digit + 5       ; 008927
    INC digit + 5       ; 008928
    INC digit + 5       ; 008929
    STX digit + 5       ; 008920  @ 7C53
    INC digit + 4       ; 008930

    STY digit + 5       ; 008931  @ 7C59
    INC digit + 5       ; 008932
    INC digit + 5       ; 008933
    INC digit + 5       ; 008934
    INC digit + 5       ; 008935
    INC digit + 5       ; 008936
    INC digit + 5       ; 008937
    INC digit + 5       ; 008938
    INC digit + 5       ; 008939
    STX digit + 5       ; 008930  @ 7C74
    INC digit + 4       ; 008940

    STY digit + 5       ; 008941  @ 7C7A
    INC digit + 5       ; 008942
    INC digit + 5       ; 008943
    INC digit + 5       ; 008944
    INC digit + 5       ; 008945
    INC digit + 5       ; 008946
    INC digit + 5       ; 008947
    INC digit + 5       ; 008948
    INC digit + 5       ; 008949
    STX digit + 5       ; 008940  @ 7C95
    INC digit + 4       ; 008950

    STY digit + 5       ; 008951  @ 7C9B
    INC digit + 5       ; 008952
    INC digit + 5       ; 008953
    INC digit + 5       ; 008954
    INC digit + 5       ; 008955
    INC digit + 5       ; 008956
    INC digit + 5       ; 008957
    INC digit + 5       ; 008958
    INC digit + 5       ; 008959
    STX digit + 5       ; 008950  @ 7CB6
    INC digit + 4       ; 008960

    STY digit + 5       ; 008961  @ 7CBC
    INC digit + 5       ; 008962
    INC digit + 5       ; 008963
    INC digit + 5       ; 008964
    INC digit + 5       ; 008965
    INC digit + 5       ; 008966
    INC digit + 5       ; 008967
    INC digit + 5       ; 008968
    INC digit + 5       ; 008969
    STX digit + 5       ; 008960  @ 7CD7
    INC digit + 4       ; 008970

    STY digit + 5       ; 008971  @ 7CDD
    INC digit + 5       ; 008972
    INC digit + 5       ; 008973
    INC digit + 5       ; 008974
    INC digit + 5       ; 008975
    INC digit + 5       ; 008976
    INC digit + 5       ; 008977
    INC digit + 5       ; 008978
    INC digit + 5       ; 008979
    STX digit + 5       ; 008970  @ 7CF8
    INC digit + 4       ; 008980

    STY digit + 5       ; 008981  @ 7CFE
    INC digit + 5       ; 008982
    INC digit + 5       ; 008983
    INC digit + 5       ; 008984
    INC digit + 5       ; 008985
    INC digit + 5       ; 008986
    INC digit + 5       ; 008987
    INC digit + 5       ; 008988
    INC digit + 5       ; 008989
    STX digit + 5       ; 008980  @ 7D19
    INC digit + 4       ; 008990

    STY digit + 5       ; 008991  @ 7D1F
    INC digit + 5       ; 008992
    INC digit + 5       ; 008993
    INC digit + 5       ; 008994
    INC digit + 5       ; 008995
    INC digit + 5       ; 008996
    INC digit + 5       ; 008997
    INC digit + 5       ; 008998
    INC digit + 5       ; 008999
    STX digit + 5       ; 008990  @ 7D3A
    STX digit + 4       ; 008900  @ 7D3D
    STX digit + 3       ; 008000  @ 7D40
    INC digit + 2       ; 009000

    STY digit + 5       ; 009001  @ 7D46
    INC digit + 5       ; 009002
    INC digit + 5       ; 009003
    INC digit + 5       ; 009004
    INC digit + 5       ; 009005
    INC digit + 5       ; 009006
    INC digit + 5       ; 009007
    INC digit + 5       ; 009008
    INC digit + 5       ; 009009
    STX digit + 5       ; 009000  @ 7D61
    STY digit + 4       ; 009010  @ 7D64

    STY digit + 5       ; 009011  @ 7D67
    INC digit + 5       ; 009012
    INC digit + 5       ; 009013
    INC digit + 5       ; 009014
    INC digit + 5       ; 009015
    INC digit + 5       ; 009016
    INC digit + 5       ; 009017
    INC digit + 5       ; 009018
    INC digit + 5       ; 009019
    STX digit + 5       ; 009010  @ 7D82
    INC digit + 4       ; 009020

    STY digit + 5       ; 009021  @ 7D88
    INC digit + 5       ; 009022
    INC digit + 5       ; 009023
    INC digit + 5       ; 009024
    INC digit + 5       ; 009025
    INC digit + 5       ; 009026
    INC digit + 5       ; 009027
    INC digit + 5       ; 009028
    INC digit + 5       ; 009029
    STX digit + 5       ; 009020  @ 7DA3
    INC digit + 4       ; 009030

    STY digit + 5       ; 009031  @ 7DA9
    INC digit + 5       ; 009032
    INC digit + 5       ; 009033
    INC digit + 5       ; 009034
    INC digit + 5       ; 009035
    INC digit + 5       ; 009036
    INC digit + 5       ; 009037
    INC digit + 5       ; 009038
    INC digit + 5       ; 009039
    STX digit + 5       ; 009030  @ 7DC4
    INC digit + 4       ; 009040

    STY digit + 5       ; 009041  @ 7DCA
    INC digit + 5       ; 009042
    INC digit + 5       ; 009043
    INC digit + 5       ; 009044
    INC digit + 5       ; 009045
    INC digit + 5       ; 009046
    INC digit + 5       ; 009047
    INC digit + 5       ; 009048
    INC digit + 5       ; 009049
    STX digit + 5       ; 009040  @ 7DE5
    INC digit + 4       ; 009050

    STY digit + 5       ; 009051  @ 7DEB
    INC digit + 5       ; 009052
    INC digit + 5       ; 009053
    INC digit + 5       ; 009054
    INC digit + 5       ; 009055
    INC digit + 5       ; 009056
    INC digit + 5       ; 009057
    INC digit + 5       ; 009058
    INC digit + 5       ; 009059
    STX digit + 5       ; 009050  @ 7E06
    INC digit + 4       ; 009060

    STY digit + 5       ; 009061  @ 7E0C
    INC digit + 5       ; 009062
    INC digit + 5       ; 009063
    INC digit + 5       ; 009064
    INC digit + 5       ; 009065
    INC digit + 5       ; 009066
    INC digit + 5       ; 009067
    INC digit + 5       ; 009068
    INC digit + 5       ; 009069
    STX digit + 5       ; 009060  @ 7E27
    INC digit + 4       ; 009070

    STY digit + 5       ; 009071  @ 7E2D
    INC digit + 5       ; 009072
    INC digit + 5       ; 009073
    INC digit + 5       ; 009074
    INC digit + 5       ; 009075
    INC digit + 5       ; 009076
    INC digit + 5       ; 009077
    INC digit + 5       ; 009078
    INC digit + 5       ; 009079
    STX digit + 5       ; 009070  @ 7E48
    INC digit + 4       ; 009080

    STY digit + 5       ; 009081  @ 7E4E
    INC digit + 5       ; 009082
    INC digit + 5       ; 009083
    INC digit + 5       ; 009084
    INC digit + 5       ; 009085
    INC digit + 5       ; 009086
    INC digit + 5       ; 009087
    INC digit + 5       ; 009088
    INC digit + 5       ; 009089
    STX digit + 5       ; 009080  @ 7E69
    INC digit + 4       ; 009090

    STY digit + 5       ; 009091  @ 7E6F
    INC digit + 5       ; 009092
    INC digit + 5       ; 009093
    INC digit + 5       ; 009094
    INC digit + 5       ; 009095
    INC digit + 5       ; 009096
    INC digit + 5       ; 009097
    INC digit + 5       ; 009098
    INC digit + 5       ; 009099
    STX digit + 5       ; 009090  @ 7E8A
    STX digit + 4       ; 009000  @ 7E8D
    STY digit + 3       ; 009100  @ 7E90

    STY digit + 5       ; 009101  @ 7E93
    INC digit + 5       ; 009102
    INC digit + 5       ; 009103
    INC digit + 5       ; 009104
    INC digit + 5       ; 009105
    INC digit + 5       ; 009106
    INC digit + 5       ; 009107
    INC digit + 5       ; 009108
    INC digit + 5       ; 009109
    STX digit + 5       ; 009100  @ 7EAE
    STY digit + 4       ; 009110  @ 7EB1

    STY digit + 5       ; 009111  @ 7EB4
    INC digit + 5       ; 009112
    INC digit + 5       ; 009113
    INC digit + 5       ; 009114
    INC digit + 5       ; 009115
    INC digit + 5       ; 009116
    INC digit + 5       ; 009117
    INC digit + 5       ; 009118
    INC digit + 5       ; 009119
    STX digit + 5       ; 009110  @ 7ECF
    INC digit + 4       ; 009120

    STY digit + 5       ; 009121  @ 7ED5
    INC digit + 5       ; 009122
    INC digit + 5       ; 009123
    INC digit + 5       ; 009124
    INC digit + 5       ; 009125
    INC digit + 5       ; 009126
    INC digit + 5       ; 009127
    INC digit + 5       ; 009128
    INC digit + 5       ; 009129
    STX digit + 5       ; 009120  @ 7EF0
    INC digit + 4       ; 009130

    STY digit + 5       ; 009131  @ 7EF6
    INC digit + 5       ; 009132
    INC digit + 5       ; 009133
    INC digit + 5       ; 009134
    INC digit + 5       ; 009135
    INC digit + 5       ; 009136
    INC digit + 5       ; 009137
    INC digit + 5       ; 009138
    INC digit + 5       ; 009139
    STX digit + 5       ; 009130  @ 7F11
    INC digit + 4       ; 009140

    STY digit + 5       ; 009141  @ 7F17
    INC digit + 5       ; 009142
    INC digit + 5       ; 009143
    INC digit + 5       ; 009144
    INC digit + 5       ; 009145
    INC digit + 5       ; 009146
    INC digit + 5       ; 009147
    INC digit + 5       ; 009148
    INC digit + 5       ; 009149
    STX digit + 5       ; 009140  @ 7F32
    INC digit + 4       ; 009150

    STY digit + 5       ; 009151  @ 7F38
    INC digit + 5       ; 009152
    INC digit + 5       ; 009153
    INC digit + 5       ; 009154
    INC digit + 5       ; 009155
    INC digit + 5       ; 009156
    INC digit + 5       ; 009157
    INC digit + 5       ; 009158
    INC digit + 5       ; 009159
    STX digit + 5       ; 009150  @ 7F53
    INC digit + 4       ; 009160

    STY digit + 5       ; 009161  @ 7F59
    INC digit + 5       ; 009162
    INC digit + 5       ; 009163
    INC digit + 5       ; 009164
    INC digit + 5       ; 009165
    INC digit + 5       ; 009166
    INC digit + 5       ; 009167
    INC digit + 5       ; 009168
    INC digit + 5       ; 009169
    STX digit + 5       ; 009160  @ 7F74
    INC digit + 4       ; 009170

    STY digit + 5       ; 009171  @ 7F7A
    INC digit + 5       ; 009172
    INC digit + 5       ; 009173
    INC digit + 5       ; 009174
    INC digit + 5       ; 009175
    INC digit + 5       ; 009176
    INC digit + 5       ; 009177
    INC digit + 5       ; 009178
    INC digit + 5       ; 009179
    STX digit + 5       ; 009170  @ 7F95
    INC digit + 4       ; 009180

    STY digit + 5       ; 009181  @ 7F9B
    INC digit + 5       ; 009182
    INC digit + 5       ; 009183
    INC digit + 5       ; 009184
    INC digit + 5       ; 009185
    INC digit + 5       ; 009186
    INC digit + 5       ; 009187
    INC digit + 5       ; 009188
    INC digit + 5       ; 009189
    STX digit + 5       ; 009180  @ 7FB6
    INC digit + 4       ; 009190

    STY digit + 5       ; 009191  @ 7FBC
    INC digit + 5       ; 009192
    INC digit + 5       ; 009193
    INC digit + 5       ; 009194
    INC digit + 5       ; 009195
    INC digit + 5       ; 009196
    INC digit + 5       ; 009197
    INC digit + 5       ; 009198
    INC digit + 5       ; 009199
    STX digit + 5       ; 009190  @ 7FD7
    STX digit + 4       ; 009100  @ 7FDA
    INC digit + 3       ; 009200

    STY digit + 5       ; 009201  @ 7FE0
    INC digit + 5       ; 009202
    INC digit + 5       ; 009203
    INC digit + 5       ; 009204
    INC digit + 5       ; 009205
    INC digit + 5       ; 009206
    INC digit + 5       ; 009207
    INC digit + 5       ; 009208
    INC digit + 5       ; 009209
    STX digit + 5       ; 009200  @ 7FFB
    STY digit + 4       ; 009210  @ 7FFE

    STY digit + 5       ; 009211  @ 8001
    INC digit + 5       ; 009212
    INC digit + 5       ; 009213
    INC digit + 5       ; 009214
    INC digit + 5       ; 009215
    INC digit + 5       ; 009216
    INC digit + 5       ; 009217
    INC digit + 5       ; 009218
    INC digit + 5       ; 009219
    STX digit + 5       ; 009210  @ 801C
    INC digit + 4       ; 009220

    STY digit + 5       ; 009221  @ 8022
    INC digit + 5       ; 009222
    INC digit + 5       ; 009223
    INC digit + 5       ; 009224
    INC digit + 5       ; 009225
    INC digit + 5       ; 009226
    INC digit + 5       ; 009227
    INC digit + 5       ; 009228
    INC digit + 5       ; 009229
    STX digit + 5       ; 009220  @ 803D
    INC digit + 4       ; 009230

    STY digit + 5       ; 009231  @ 8043
    INC digit + 5       ; 009232
    INC digit + 5       ; 009233
    INC digit + 5       ; 009234
    INC digit + 5       ; 009235
    INC digit + 5       ; 009236
    INC digit + 5       ; 009237
    INC digit + 5       ; 009238
    INC digit + 5       ; 009239
    STX digit + 5       ; 009230  @ 805E
    INC digit + 4       ; 009240

    STY digit + 5       ; 009241  @ 8064
    INC digit + 5       ; 009242
    INC digit + 5       ; 009243
    INC digit + 5       ; 009244
    INC digit + 5       ; 009245
    INC digit + 5       ; 009246
    INC digit + 5       ; 009247
    INC digit + 5       ; 009248
    INC digit + 5       ; 009249
    STX digit + 5       ; 009240  @ 807F
    INC digit + 4       ; 009250

    STY digit + 5       ; 009251  @ 8085
    INC digit + 5       ; 009252
    INC digit + 5       ; 009253
    INC digit + 5       ; 009254
    INC digit + 5       ; 009255
    INC digit + 5       ; 009256
    INC digit + 5       ; 009257
    INC digit + 5       ; 009258
    INC digit + 5       ; 009259
    STX digit + 5       ; 009250  @ 80A0
    INC digit + 4       ; 009260

    STY digit + 5       ; 009261  @ 80A6
    INC digit + 5       ; 009262
    INC digit + 5       ; 009263
    INC digit + 5       ; 009264
    INC digit + 5       ; 009265
    INC digit + 5       ; 009266
    INC digit + 5       ; 009267
    INC digit + 5       ; 009268
    INC digit + 5       ; 009269
    STX digit + 5       ; 009260  @ 80C1
    INC digit + 4       ; 009270

    STY digit + 5       ; 009271  @ 80C7
    INC digit + 5       ; 009272
    INC digit + 5       ; 009273
    INC digit + 5       ; 009274
    INC digit + 5       ; 009275
    INC digit + 5       ; 009276
    INC digit + 5       ; 009277
    INC digit + 5       ; 009278
    INC digit + 5       ; 009279
    STX digit + 5       ; 009270  @ 80E2
    INC digit + 4       ; 009280

    STY digit + 5       ; 009281  @ 80E8
    INC digit + 5       ; 009282
    INC digit + 5       ; 009283
    INC digit + 5       ; 009284
    INC digit + 5       ; 009285
    INC digit + 5       ; 009286
    INC digit + 5       ; 009287
    INC digit + 5       ; 009288
    INC digit + 5       ; 009289
    STX digit + 5       ; 009280  @ 8103
    INC digit + 4       ; 009290

    STY digit + 5       ; 009291  @ 8109
    INC digit + 5       ; 009292
    INC digit + 5       ; 009293
    INC digit + 5       ; 009294
    INC digit + 5       ; 009295
    INC digit + 5       ; 009296
    INC digit + 5       ; 009297
    INC digit + 5       ; 009298
    INC digit + 5       ; 009299
    STX digit + 5       ; 009290  @ 8124
    STX digit + 4       ; 009200  @ 8127
    INC digit + 3       ; 009300

    STY digit + 5       ; 009301  @ 812D
    INC digit + 5       ; 009302
    INC digit + 5       ; 009303
    INC digit + 5       ; 009304
    INC digit + 5       ; 009305
    INC digit + 5       ; 009306
    INC digit + 5       ; 009307
    INC digit + 5       ; 009308
    INC digit + 5       ; 009309
    STX digit + 5       ; 009300  @ 8148
    STY digit + 4       ; 009310  @ 814B

    STY digit + 5       ; 009311  @ 814E
    INC digit + 5       ; 009312
    INC digit + 5       ; 009313
    INC digit + 5       ; 009314
    INC digit + 5       ; 009315
    INC digit + 5       ; 009316
    INC digit + 5       ; 009317
    INC digit + 5       ; 009318
    INC digit + 5       ; 009319
    STX digit + 5       ; 009310  @ 8169
    INC digit + 4       ; 009320

    STY digit + 5       ; 009321  @ 816F
    INC digit + 5       ; 009322
    INC digit + 5       ; 009323
    INC digit + 5       ; 009324
    INC digit + 5       ; 009325
    INC digit + 5       ; 009326
    INC digit + 5       ; 009327
    INC digit + 5       ; 009328
    INC digit + 5       ; 009329
    STX digit + 5       ; 009320  @ 818A
    INC digit + 4       ; 009330

    STY digit + 5       ; 009331  @ 8190
    INC digit + 5       ; 009332
    INC digit + 5       ; 009333
    INC digit + 5       ; 009334
    INC digit + 5       ; 009335
    INC digit + 5       ; 009336
    INC digit + 5       ; 009337
    INC digit + 5       ; 009338
    INC digit + 5       ; 009339
    STX digit + 5       ; 009330  @ 81AB
    INC digit + 4       ; 009340

    STY digit + 5       ; 009341  @ 81B1
    INC digit + 5       ; 009342
    INC digit + 5       ; 009343
    INC digit + 5       ; 009344
    INC digit + 5       ; 009345
    INC digit + 5       ; 009346
    INC digit + 5       ; 009347
    INC digit + 5       ; 009348
    INC digit + 5       ; 009349
    STX digit + 5       ; 009340  @ 81CC
    INC digit + 4       ; 009350

    STY digit + 5       ; 009351  @ 81D2
    INC digit + 5       ; 009352
    INC digit + 5       ; 009353
    INC digit + 5       ; 009354
    INC digit + 5       ; 009355
    INC digit + 5       ; 009356
    INC digit + 5       ; 009357
    INC digit + 5       ; 009358
    INC digit + 5       ; 009359
    STX digit + 5       ; 009350  @ 81ED
    INC digit + 4       ; 009360

    STY digit + 5       ; 009361  @ 81F3
    INC digit + 5       ; 009362
    INC digit + 5       ; 009363
    INC digit + 5       ; 009364
    INC digit + 5       ; 009365
    INC digit + 5       ; 009366
    INC digit + 5       ; 009367
    INC digit + 5       ; 009368
    INC digit + 5       ; 009369
    STX digit + 5       ; 009360  @ 820E
    INC digit + 4       ; 009370

    STY digit + 5       ; 009371  @ 8214
    INC digit + 5       ; 009372
    INC digit + 5       ; 009373
    INC digit + 5       ; 009374
    INC digit + 5       ; 009375
    INC digit + 5       ; 009376
    INC digit + 5       ; 009377
    INC digit + 5       ; 009378
    INC digit + 5       ; 009379
    STX digit + 5       ; 009370  @ 822F
    INC digit + 4       ; 009380

    STY digit + 5       ; 009381  @ 8235
    INC digit + 5       ; 009382
    INC digit + 5       ; 009383
    INC digit + 5       ; 009384
    INC digit + 5       ; 009385
    INC digit + 5       ; 009386
    INC digit + 5       ; 009387
    INC digit + 5       ; 009388
    INC digit + 5       ; 009389
    STX digit + 5       ; 009380  @ 8250
    INC digit + 4       ; 009390

    STY digit + 5       ; 009391  @ 8256
    INC digit + 5       ; 009392
    INC digit + 5       ; 009393
    INC digit + 5       ; 009394
    INC digit + 5       ; 009395
    INC digit + 5       ; 009396
    INC digit + 5       ; 009397
    INC digit + 5       ; 009398
    INC digit + 5       ; 009399
    STX digit + 5       ; 009390  @ 8271
    STX digit + 4       ; 009300  @ 8274
    INC digit + 3       ; 009400

    STY digit + 5       ; 009401  @ 827A
    INC digit + 5       ; 009402
    INC digit + 5       ; 009403
    INC digit + 5       ; 009404
    INC digit + 5       ; 009405
    INC digit + 5       ; 009406
    INC digit + 5       ; 009407
    INC digit + 5       ; 009408
    INC digit + 5       ; 009409
    STX digit + 5       ; 009400  @ 8295
    STY digit + 4       ; 009410  @ 8298

    STY digit + 5       ; 009411  @ 829B
    INC digit + 5       ; 009412
    INC digit + 5       ; 009413
    INC digit + 5       ; 009414
    INC digit + 5       ; 009415
    INC digit + 5       ; 009416
    INC digit + 5       ; 009417
    INC digit + 5       ; 009418
    INC digit + 5       ; 009419
    STX digit + 5       ; 009410  @ 82B6
    INC digit + 4       ; 009420

    STY digit + 5       ; 009421  @ 82BC
    INC digit + 5       ; 009422
    INC digit + 5       ; 009423
    INC digit + 5       ; 009424
    INC digit + 5       ; 009425
    INC digit + 5       ; 009426
    INC digit + 5       ; 009427
    INC digit + 5       ; 009428
    INC digit + 5       ; 009429
    STX digit + 5       ; 009420  @ 82D7
    INC digit + 4       ; 009430

    STY digit + 5       ; 009431  @ 82DD
    INC digit + 5       ; 009432
    INC digit + 5       ; 009433
    INC digit + 5       ; 009434
    INC digit + 5       ; 009435
    INC digit + 5       ; 009436
    INC digit + 5       ; 009437
    INC digit + 5       ; 009438
    INC digit + 5       ; 009439
    STX digit + 5       ; 009430  @ 82F8
    INC digit + 4       ; 009440

    STY digit + 5       ; 009441  @ 82FE
    INC digit + 5       ; 009442
    INC digit + 5       ; 009443
    INC digit + 5       ; 009444
    INC digit + 5       ; 009445
    INC digit + 5       ; 009446
    INC digit + 5       ; 009447
    INC digit + 5       ; 009448
    INC digit + 5       ; 009449
    STX digit + 5       ; 009440  @ 8319
    INC digit + 4       ; 009450

    STY digit + 5       ; 009451  @ 831F
    INC digit + 5       ; 009452
    INC digit + 5       ; 009453
    INC digit + 5       ; 009454
    INC digit + 5       ; 009455
    INC digit + 5       ; 009456
    INC digit + 5       ; 009457
    INC digit + 5       ; 009458
    INC digit + 5       ; 009459
    STX digit + 5       ; 009450  @ 833A
    INC digit + 4       ; 009460

    STY digit + 5       ; 009461  @ 8340
    INC digit + 5       ; 009462
    INC digit + 5       ; 009463
    INC digit + 5       ; 009464
    INC digit + 5       ; 009465
    INC digit + 5       ; 009466
    INC digit + 5       ; 009467
    INC digit + 5       ; 009468
    INC digit + 5       ; 009469
    STX digit + 5       ; 009460  @ 835B
    INC digit + 4       ; 009470

    STY digit + 5       ; 009471  @ 8361
    INC digit + 5       ; 009472
    INC digit + 5       ; 009473
    INC digit + 5       ; 009474
    INC digit + 5       ; 009475
    INC digit + 5       ; 009476
    INC digit + 5       ; 009477
    INC digit + 5       ; 009478
    INC digit + 5       ; 009479
    STX digit + 5       ; 009470  @ 837C
    INC digit + 4       ; 009480

    STY digit + 5       ; 009481  @ 8382
    INC digit + 5       ; 009482
    INC digit + 5       ; 009483
    INC digit + 5       ; 009484
    INC digit + 5       ; 009485
    INC digit + 5       ; 009486
    INC digit + 5       ; 009487
    INC digit + 5       ; 009488
    INC digit + 5       ; 009489
    STX digit + 5       ; 009480  @ 839D
    INC digit + 4       ; 009490

    STY digit + 5       ; 009491  @ 83A3
    INC digit + 5       ; 009492
    INC digit + 5       ; 009493
    INC digit + 5       ; 009494
    INC digit + 5       ; 009495
    INC digit + 5       ; 009496
    INC digit + 5       ; 009497
    INC digit + 5       ; 009498
    INC digit + 5       ; 009499
    STX digit + 5       ; 009490  @ 83BE
    STX digit + 4       ; 009400  @ 83C1
    INC digit + 3       ; 009500

    STY digit + 5       ; 009501  @ 83C7
    INC digit + 5       ; 009502
    INC digit + 5       ; 009503
    INC digit + 5       ; 009504
    INC digit + 5       ; 009505
    INC digit + 5       ; 009506
    INC digit + 5       ; 009507
    INC digit + 5       ; 009508
    INC digit + 5       ; 009509
    STX digit + 5       ; 009500  @ 83E2
    STY digit + 4       ; 009510  @ 83E5

    STY digit + 5       ; 009511  @ 83E8
    INC digit + 5       ; 009512
    INC digit + 5       ; 009513
    INC digit + 5       ; 009514
    INC digit + 5       ; 009515
    INC digit + 5       ; 009516
    INC digit + 5       ; 009517
    INC digit + 5       ; 009518
    INC digit + 5       ; 009519
    STX digit + 5       ; 009510  @ 8403
    INC digit + 4       ; 009520

    STY digit + 5       ; 009521  @ 8409
    INC digit + 5       ; 009522
    INC digit + 5       ; 009523
    INC digit + 5       ; 009524
    INC digit + 5       ; 009525
    INC digit + 5       ; 009526
    INC digit + 5       ; 009527
    INC digit + 5       ; 009528
    INC digit + 5       ; 009529
    STX digit + 5       ; 009520  @ 8424
    INC digit + 4       ; 009530

    STY digit + 5       ; 009531  @ 842A
    INC digit + 5       ; 009532
    INC digit + 5       ; 009533
    INC digit + 5       ; 009534
    INC digit + 5       ; 009535
    INC digit + 5       ; 009536
    INC digit + 5       ; 009537
    INC digit + 5       ; 009538
    INC digit + 5       ; 009539
    STX digit + 5       ; 009530  @ 8445
    INC digit + 4       ; 009540

    STY digit + 5       ; 009541  @ 844B
    INC digit + 5       ; 009542
    INC digit + 5       ; 009543
    INC digit + 5       ; 009544
    INC digit + 5       ; 009545
    INC digit + 5       ; 009546
    INC digit + 5       ; 009547
    INC digit + 5       ; 009548
    INC digit + 5       ; 009549
    STX digit + 5       ; 009540  @ 8466
    INC digit + 4       ; 009550

    STY digit + 5       ; 009551  @ 846C
    INC digit + 5       ; 009552
    INC digit + 5       ; 009553
    INC digit + 5       ; 009554
    INC digit + 5       ; 009555
    INC digit + 5       ; 009556
    INC digit + 5       ; 009557
    INC digit + 5       ; 009558
    INC digit + 5       ; 009559
    STX digit + 5       ; 009550  @ 8487
    INC digit + 4       ; 009560

    STY digit + 5       ; 009561  @ 848D
    INC digit + 5       ; 009562
    INC digit + 5       ; 009563
    INC digit + 5       ; 009564
    INC digit + 5       ; 009565
    INC digit + 5       ; 009566
    INC digit + 5       ; 009567
    INC digit + 5       ; 009568
    INC digit + 5       ; 009569
    STX digit + 5       ; 009560  @ 84A8
    INC digit + 4       ; 009570

    STY digit + 5       ; 009571  @ 84AE
    INC digit + 5       ; 009572
    INC digit + 5       ; 009573
    INC digit + 5       ; 009574
    INC digit + 5       ; 009575
    INC digit + 5       ; 009576
    INC digit + 5       ; 009577
    INC digit + 5       ; 009578
    INC digit + 5       ; 009579
    STX digit + 5       ; 009570  @ 84C9
    INC digit + 4       ; 009580

    STY digit + 5       ; 009581  @ 84CF
    INC digit + 5       ; 009582
    INC digit + 5       ; 009583
    INC digit + 5       ; 009584
    INC digit + 5       ; 009585
    INC digit + 5       ; 009586
    INC digit + 5       ; 009587
    INC digit + 5       ; 009588
    INC digit + 5       ; 009589
    STX digit + 5       ; 009580  @ 84EA
    INC digit + 4       ; 009590

    STY digit + 5       ; 009591  @ 84F0
    INC digit + 5       ; 009592
    INC digit + 5       ; 009593
    INC digit + 5       ; 009594
    INC digit + 5       ; 009595
    INC digit + 5       ; 009596
    INC digit + 5       ; 009597
    INC digit + 5       ; 009598
    INC digit + 5       ; 009599
    STX digit + 5       ; 009590  @ 850B
    STX digit + 4       ; 009500  @ 850E
    INC digit + 3       ; 009600

    STY digit + 5       ; 009601  @ 8514
    INC digit + 5       ; 009602
    INC digit + 5       ; 009603
    INC digit + 5       ; 009604
    INC digit + 5       ; 009605
    INC digit + 5       ; 009606
    INC digit + 5       ; 009607
    INC digit + 5       ; 009608
    INC digit + 5       ; 009609
    STX digit + 5       ; 009600  @ 852F
    STY digit + 4       ; 009610  @ 8532

    STY digit + 5       ; 009611  @ 8535
    INC digit + 5       ; 009612
    INC digit + 5       ; 009613
    INC digit + 5       ; 009614
    INC digit + 5       ; 009615
    INC digit + 5       ; 009616
    INC digit + 5       ; 009617
    INC digit + 5       ; 009618
    INC digit + 5       ; 009619
    STX digit + 5       ; 009610  @ 8550
    INC digit + 4       ; 009620

    STY digit + 5       ; 009621  @ 8556
    INC digit + 5       ; 009622
    INC digit + 5       ; 009623
    INC digit + 5       ; 009624
    INC digit + 5       ; 009625
    INC digit + 5       ; 009626
    INC digit + 5       ; 009627
    INC digit + 5       ; 009628
    INC digit + 5       ; 009629
    STX digit + 5       ; 009620  @ 8571
    INC digit + 4       ; 009630

    STY digit + 5       ; 009631  @ 8577
    INC digit + 5       ; 009632
    INC digit + 5       ; 009633
    INC digit + 5       ; 009634
    INC digit + 5       ; 009635
    INC digit + 5       ; 009636
    INC digit + 5       ; 009637
    INC digit + 5       ; 009638
    INC digit + 5       ; 009639
    STX digit + 5       ; 009630  @ 8592
    INC digit + 4       ; 009640

    STY digit + 5       ; 009641  @ 8598
    INC digit + 5       ; 009642
    INC digit + 5       ; 009643
    INC digit + 5       ; 009644
    INC digit + 5       ; 009645
    INC digit + 5       ; 009646
    INC digit + 5       ; 009647
    INC digit + 5       ; 009648
    INC digit + 5       ; 009649
    STX digit + 5       ; 009640  @ 85B3
    INC digit + 4       ; 009650

    STY digit + 5       ; 009651  @ 85B9
    INC digit + 5       ; 009652
    INC digit + 5       ; 009653
    INC digit + 5       ; 009654
    INC digit + 5       ; 009655
    INC digit + 5       ; 009656
    INC digit + 5       ; 009657
    INC digit + 5       ; 009658
    INC digit + 5       ; 009659
    STX digit + 5       ; 009650  @ 85D4
    INC digit + 4       ; 009660

    STY digit + 5       ; 009661  @ 85DA
    INC digit + 5       ; 009662
    INC digit + 5       ; 009663
    INC digit + 5       ; 009664
    INC digit + 5       ; 009665
    INC digit + 5       ; 009666
    INC digit + 5       ; 009667
    INC digit + 5       ; 009668
    INC digit + 5       ; 009669
    STX digit + 5       ; 009660  @ 85F5
    INC digit + 4       ; 009670

    STY digit + 5       ; 009671  @ 85FB
    INC digit + 5       ; 009672
    INC digit + 5       ; 009673
    INC digit + 5       ; 009674
    INC digit + 5       ; 009675
    INC digit + 5       ; 009676
    INC digit + 5       ; 009677
    INC digit + 5       ; 009678
    INC digit + 5       ; 009679
    STX digit + 5       ; 009670  @ 8616
    INC digit + 4       ; 009680

    STY digit + 5       ; 009681  @ 861C
    INC digit + 5       ; 009682
    INC digit + 5       ; 009683
    INC digit + 5       ; 009684
    INC digit + 5       ; 009685
    INC digit + 5       ; 009686
    INC digit + 5       ; 009687
    INC digit + 5       ; 009688
    INC digit + 5       ; 009689
    STX digit + 5       ; 009680  @ 8637
    INC digit + 4       ; 009690

    STY digit + 5       ; 009691  @ 863D
    INC digit + 5       ; 009692
    INC digit + 5       ; 009693
    INC digit + 5       ; 009694
    INC digit + 5       ; 009695
    INC digit + 5       ; 009696
    INC digit + 5       ; 009697
    INC digit + 5       ; 009698
    INC digit + 5       ; 009699
    STX digit + 5       ; 009690  @ 8658
    STX digit + 4       ; 009600  @ 865B
    INC digit + 3       ; 009700

    STY digit + 5       ; 009701  @ 8661
    INC digit + 5       ; 009702
    INC digit + 5       ; 009703
    INC digit + 5       ; 009704
    INC digit + 5       ; 009705
    INC digit + 5       ; 009706
    INC digit + 5       ; 009707
    INC digit + 5       ; 009708
    INC digit + 5       ; 009709
    STX digit + 5       ; 009700  @ 867C
    STY digit + 4       ; 009710  @ 867F

    STY digit + 5       ; 009711  @ 8682
    INC digit + 5       ; 009712
    INC digit + 5       ; 009713
    INC digit + 5       ; 009714
    INC digit + 5       ; 009715
    INC digit + 5       ; 009716
    INC digit + 5       ; 009717
    INC digit + 5       ; 009718
    INC digit + 5       ; 009719
    STX digit + 5       ; 009710  @ 869D
    INC digit + 4       ; 009720

    STY digit + 5       ; 009721  @ 86A3
    INC digit + 5       ; 009722
    INC digit + 5       ; 009723
    INC digit + 5       ; 009724
    INC digit + 5       ; 009725
    INC digit + 5       ; 009726
    INC digit + 5       ; 009727
    INC digit + 5       ; 009728
    INC digit + 5       ; 009729
    STX digit + 5       ; 009720  @ 86BE
    INC digit + 4       ; 009730

    STY digit + 5       ; 009731  @ 86C4
    INC digit + 5       ; 009732
    INC digit + 5       ; 009733
    INC digit + 5       ; 009734
    INC digit + 5       ; 009735
    INC digit + 5       ; 009736
    INC digit + 5       ; 009737
    INC digit + 5       ; 009738
    INC digit + 5       ; 009739
    STX digit + 5       ; 009730  @ 86DF
    INC digit + 4       ; 009740

    STY digit + 5       ; 009741  @ 86E5
    INC digit + 5       ; 009742
    INC digit + 5       ; 009743
    INC digit + 5       ; 009744
    INC digit + 5       ; 009745
    INC digit + 5       ; 009746
    INC digit + 5       ; 009747
    INC digit + 5       ; 009748
    INC digit + 5       ; 009749
    STX digit + 5       ; 009740  @ 8700
    INC digit + 4       ; 009750

    STY digit + 5       ; 009751  @ 8706
    INC digit + 5       ; 009752
    INC digit + 5       ; 009753
    INC digit + 5       ; 009754
    INC digit + 5       ; 009755
    INC digit + 5       ; 009756
    INC digit + 5       ; 009757
    INC digit + 5       ; 009758
    INC digit + 5       ; 009759
    STX digit + 5       ; 009750  @ 8721
    INC digit + 4       ; 009760

    STY digit + 5       ; 009761  @ 8727
    INC digit + 5       ; 009762
    INC digit + 5       ; 009763
    INC digit + 5       ; 009764
    INC digit + 5       ; 009765
    INC digit + 5       ; 009766
    INC digit + 5       ; 009767
    INC digit + 5       ; 009768
    INC digit + 5       ; 009769
    STX digit + 5       ; 009760  @ 8742
    INC digit + 4       ; 009770

    STY digit + 5       ; 009771  @ 8748
    INC digit + 5       ; 009772
    INC digit + 5       ; 009773
    INC digit + 5       ; 009774
    INC digit + 5       ; 009775
    INC digit + 5       ; 009776
    INC digit + 5       ; 009777
    INC digit + 5       ; 009778
    INC digit + 5       ; 009779
    STX digit + 5       ; 009770  @ 8763
    INC digit + 4       ; 009780

    STY digit + 5       ; 009781  @ 8769
    INC digit + 5       ; 009782
    INC digit + 5       ; 009783
    INC digit + 5       ; 009784
    INC digit + 5       ; 009785
    INC digit + 5       ; 009786
    INC digit + 5       ; 009787
    INC digit + 5       ; 009788
    INC digit + 5       ; 009789
    STX digit + 5       ; 009780  @ 8784
    INC digit + 4       ; 009790

    STY digit + 5       ; 009791  @ 878A
    INC digit + 5       ; 009792
    INC digit + 5       ; 009793
    INC digit + 5       ; 009794
    INC digit + 5       ; 009795
    INC digit + 5       ; 009796
    INC digit + 5       ; 009797
    INC digit + 5       ; 009798
    INC digit + 5       ; 009799
    STX digit + 5       ; 009790  @ 87A5
    STX digit + 4       ; 009700  @ 87A8
    INC digit + 3       ; 009800

    STY digit + 5       ; 009801  @ 87AE
    INC digit + 5       ; 009802
    INC digit + 5       ; 009803
    INC digit + 5       ; 009804
    INC digit + 5       ; 009805
    INC digit + 5       ; 009806
    INC digit + 5       ; 009807
    INC digit + 5       ; 009808
    INC digit + 5       ; 009809
    STX digit + 5       ; 009800  @ 87C9
    STY digit + 4       ; 009810  @ 87CC

    STY digit + 5       ; 009811  @ 87CF
    INC digit + 5       ; 009812
    INC digit + 5       ; 009813
    INC digit + 5       ; 009814
    INC digit + 5       ; 009815
    INC digit + 5       ; 009816
    INC digit + 5       ; 009817
    INC digit + 5       ; 009818
    INC digit + 5       ; 009819
    STX digit + 5       ; 009810  @ 87EA
    INC digit + 4       ; 009820

    STY digit + 5       ; 009821  @ 87F0
    INC digit + 5       ; 009822
    INC digit + 5       ; 009823
    INC digit + 5       ; 009824
    INC digit + 5       ; 009825
    INC digit + 5       ; 009826
    INC digit + 5       ; 009827
    INC digit + 5       ; 009828
    INC digit + 5       ; 009829
    STX digit + 5       ; 009820  @ 880B
    INC digit + 4       ; 009830

    STY digit + 5       ; 009831  @ 8811
    INC digit + 5       ; 009832
    INC digit + 5       ; 009833
    INC digit + 5       ; 009834
    INC digit + 5       ; 009835
    INC digit + 5       ; 009836
    INC digit + 5       ; 009837
    INC digit + 5       ; 009838
    INC digit + 5       ; 009839
    STX digit + 5       ; 009830  @ 882C
    INC digit + 4       ; 009840

    STY digit + 5       ; 009841  @ 8832
    INC digit + 5       ; 009842
    INC digit + 5       ; 009843
    INC digit + 5       ; 009844
    INC digit + 5       ; 009845
    INC digit + 5       ; 009846
    INC digit + 5       ; 009847
    INC digit + 5       ; 009848
    INC digit + 5       ; 009849
    STX digit + 5       ; 009840  @ 884D
    INC digit + 4       ; 009850

    STY digit + 5       ; 009851  @ 8853
    INC digit + 5       ; 009852
    INC digit + 5       ; 009853
    INC digit + 5       ; 009854
    INC digit + 5       ; 009855
    INC digit + 5       ; 009856
    INC digit + 5       ; 009857
    INC digit + 5       ; 009858
    INC digit + 5       ; 009859
    STX digit + 5       ; 009850  @ 886E
    INC digit + 4       ; 009860

    STY digit + 5       ; 009861  @ 8874
    INC digit + 5       ; 009862
    INC digit + 5       ; 009863
    INC digit + 5       ; 009864
    INC digit + 5       ; 009865
    INC digit + 5       ; 009866
    INC digit + 5       ; 009867
    INC digit + 5       ; 009868
    INC digit + 5       ; 009869
    STX digit + 5       ; 009860  @ 888F
    INC digit + 4       ; 009870

    STY digit + 5       ; 009871  @ 8895
    INC digit + 5       ; 009872
    INC digit + 5       ; 009873
    INC digit + 5       ; 009874
    INC digit + 5       ; 009875
    INC digit + 5       ; 009876
    INC digit + 5       ; 009877
    INC digit + 5       ; 009878
    INC digit + 5       ; 009879
    STX digit + 5       ; 009870  @ 88B0
    INC digit + 4       ; 009880

    STY digit + 5       ; 009881  @ 88B6
    INC digit + 5       ; 009882
    INC digit + 5       ; 009883
    INC digit + 5       ; 009884
    INC digit + 5       ; 009885
    INC digit + 5       ; 009886
    INC digit + 5       ; 009887
    INC digit + 5       ; 009888
    INC digit + 5       ; 009889
    STX digit + 5       ; 009880  @ 88D1
    INC digit + 4       ; 009890

    STY digit + 5       ; 009891  @ 88D7
    INC digit + 5       ; 009892
    INC digit + 5       ; 009893
    INC digit + 5       ; 009894
    INC digit + 5       ; 009895
    INC digit + 5       ; 009896
    INC digit + 5       ; 009897
    INC digit + 5       ; 009898
    INC digit + 5       ; 009899
    STX digit + 5       ; 009890  @ 88F2
    STX digit + 4       ; 009800  @ 88F5
    INC digit + 3       ; 009900

    STY digit + 5       ; 009901  @ 88FB
    INC digit + 5       ; 009902
    INC digit + 5       ; 009903
    INC digit + 5       ; 009904
    INC digit + 5       ; 009905
    INC digit + 5       ; 009906
    INC digit + 5       ; 009907
    INC digit + 5       ; 009908
    INC digit + 5       ; 009909
    STX digit + 5       ; 009900  @ 8916
    STY digit + 4       ; 009910  @ 8919

    STY digit + 5       ; 009911  @ 891C
    INC digit + 5       ; 009912
    INC digit + 5       ; 009913
    INC digit + 5       ; 009914
    INC digit + 5       ; 009915
    INC digit + 5       ; 009916
    INC digit + 5       ; 009917
    INC digit + 5       ; 009918
    INC digit + 5       ; 009919
    STX digit + 5       ; 009910  @ 8937
    INC digit + 4       ; 009920

    STY digit + 5       ; 009921  @ 893D
    INC digit + 5       ; 009922
    INC digit + 5       ; 009923
    INC digit + 5       ; 009924
    INC digit + 5       ; 009925
    INC digit + 5       ; 009926
    INC digit + 5       ; 009927
    INC digit + 5       ; 009928
    INC digit + 5       ; 009929
    STX digit + 5       ; 009920  @ 8958
    INC digit + 4       ; 009930

    STY digit + 5       ; 009931  @ 895E
    INC digit + 5       ; 009932
    INC digit + 5       ; 009933
    INC digit + 5       ; 009934
    INC digit + 5       ; 009935
    INC digit + 5       ; 009936
    INC digit + 5       ; 009937
    INC digit + 5       ; 009938
    INC digit + 5       ; 009939
    STX digit + 5       ; 009930  @ 8979
    INC digit + 4       ; 009940

    STY digit + 5       ; 009941  @ 897F
    INC digit + 5       ; 009942
    INC digit + 5       ; 009943
    INC digit + 5       ; 009944
    INC digit + 5       ; 009945
    INC digit + 5       ; 009946
    INC digit + 5       ; 009947
    INC digit + 5       ; 009948
    INC digit + 5       ; 009949
    STX digit + 5       ; 009940  @ 899A
    INC digit + 4       ; 009950

    STY digit + 5       ; 009951  @ 89A0
    INC digit + 5       ; 009952
    INC digit + 5       ; 009953
    INC digit + 5       ; 009954
    INC digit + 5       ; 009955
    INC digit + 5       ; 009956
    INC digit + 5       ; 009957
    INC digit + 5       ; 009958
    INC digit + 5       ; 009959
    STX digit + 5       ; 009950  @ 89BB
    INC digit + 4       ; 009960

    STY digit + 5       ; 009961  @ 89C1
    INC digit + 5       ; 009962
    INC digit + 5       ; 009963
    INC digit + 5       ; 009964
    INC digit + 5       ; 009965
    INC digit + 5       ; 009966
    INC digit + 5       ; 009967
    INC digit + 5       ; 009968
    INC digit + 5       ; 009969
    STX digit + 5       ; 009960  @ 89DC
    INC digit + 4       ; 009970

    STY digit + 5       ; 009971  @ 89E2
    INC digit + 5       ; 009972
    INC digit + 5       ; 009973
    INC digit + 5       ; 009974
    INC digit + 5       ; 009975
    INC digit + 5       ; 009976
    INC digit + 5       ; 009977
    INC digit + 5       ; 009978
    INC digit + 5       ; 009979
    STX digit + 5       ; 009970  @ 89FD
    INC digit + 4       ; 009980

    STY digit + 5       ; 009981  @ 8A03
    INC digit + 5       ; 009982
    INC digit + 5       ; 009983
    INC digit + 5       ; 009984
    INC digit + 5       ; 009985
    INC digit + 5       ; 009986
    INC digit + 5       ; 009987
    INC digit + 5       ; 009988
    INC digit + 5       ; 009989
    STX digit + 5       ; 009980  @ 8A1E
    INC digit + 4       ; 009990

    STY digit + 5       ; 009991  @ 8A24
    INC digit + 5       ; 009992
    INC digit + 5       ; 009993
    INC digit + 5       ; 009994
    INC digit + 5       ; 009995
    INC digit + 5       ; 009996
    INC digit + 5       ; 009997
    INC digit + 5       ; 009998
    INC digit + 5       ; 009999
    STX digit + 5       ; 009990  @ 8A3F
    STX digit + 4       ; 009900  @ 8A42
    STX digit + 3       ; 009000  @ 8A45
    STX digit + 2       ; 000000  @ 8A48
    INC digit + 1       ; 010000  @ 8A4B

    RTS
