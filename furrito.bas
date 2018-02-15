2 screen 4,2
4 color 13,14,14
5 cls
6 open "GRP:" as #1

9 print #1, "Furbricating Meowers.."
10 ' --- Slot 0 cat
20 ' mask 0
30 DATA 10,38,7C,7F,FF,FF,FF,FD,FD,7F,FA,3D,5F,8F,07,03
40 DATA 08,1C,3E,FE,FF,FF,FF,BF,BF,FE,5F,BC,FA,F1,E0,C0
50 ' attr 0
60 DATA 08,08,08,08,08,08,08,08,08,08,08,08,08,08,08,08
70 ' mask 1
80 DATA 00,00,10,38,38,00,00,02,02,60,80,30,40,80,00,00
90 DATA 00,00,08,1C,1C,00,00,40,40,06,01,0C,02,01,00,00
100 ' attr 1
110 DATA 00,00,46,46,46,00,00,41,41,47,46,46,47,47,00,00
120 ' mask 2
130 DATA 00,00,00,00,00,00,00,00,00,00,85,32,00,00,00,00
140 DATA 00,00,00,00,00,00,00,00,00,00,A1,4C,00,00,00,00
150 ' attr 2
160 DATA 00,00,00,00,00,00,00,00,00,00,41,41,00,00,00,00

170 ' --- Slot 0 cat
171 ' mask 0
172 DATA 10,38,7C,7F,FF,FF,FF,FD,FD,7F,FA,3D,5F,8F,07,03
173 DATA 08,1C,3E,FE,FF,FF,FF,BF,BF,FE,5F,BC,FA,F1,E0,C0
174 ' attr 0
175 DATA 08,08,08,08,08,08,08,08,08,08,08,08,08,08,08,08
176 ' mask 1
178 DATA 00,00,10,38,38,00,00,02,02,60,80,30,40,80,00,00
179 DATA 00,00,08,1C,1C,00,00,40,40,06,01,0C,02,01,00,00
180 ' attr 1
181 DATA 00,00,46,46,46,00,00,41,41,47,46,46,47,47,00,00
182 ' mask 2
183 DATA 00,00,00,00,00,00,00,00,00,00,85,32,00,00,00,00
184 DATA 00,00,00,00,00,00,00,00,00,00,A1,4C,00,00,00,00
185 ' attr 2
186 DATA 00,00,00,00,00,00,00,00,00,00,41,41,00,00,00,00

200 ' --- Slot 1 chu
205 ' mask 0
210 DATA 04,84,40,1E,88,10,7F,35,45,47,35,7F,80,1F,20,40
215 DATA 20,21,02,78,01,00,FE,54,54,50,74,FE,01,F8,04,02
220 ' attr 0
225 DATA 0F,0F,0F,04,0A,0B,04,0A,0A,0A,0A,04,0A,04,0A,0A
230 ' mask 1
235 DATA 00,00,00,02,BF,7F,00,FF,FF,FF,FF,00,BF,00,27,41
240 DATA 00,00,00,08,FD,FE,00,FF,FF,FF,FE,06,FD,18,E4,82
245 ' attr 1
250 DATA 00,00,00,41,44,44,00,44,44,44,44,41,44,41,44,45
255 ' mask 2
260 DATA 00,00,00,00,88,00,00,35,45,47,35,00,80,00,20,00
265 DATA 00,00,00,00,05,00,00,55,55,53,76,00,0D,00,64,00
270 ' attr 2
275 DATA 00,00,00,00,41,00,00,41,41,41,41,00,41,00,41,00

300 ' --- Slot 0 hearto
305 ' mask 0
310 DATA 00,00,00,1E,08,10,7F,FF,FF,FF,FF,7F,3F,1F,07,01
315 DATA 00,00,00,78,00,00,FE,FF,FF,FF,FE,FE,FC,F8,E0,80
320 ' attr 0
325 DATA 00,00,00,02,0C,0D,02,02,02,02,02,02,02,02,02,03
330 ' mask 1
335 DATA 00,00,00,02,3F,7F,00,00,00,00,00,00,00,00,00,00
340 DATA 00,00,00,08,FC,FE,00,01,01,03,02,06,0C,18,60,00
345 ' attr 1
350 DATA 00,00,00,41,42,42,00,41,41,41,41,41,41,41,41,00
355 ' mask 2
360 DATA 00,00,00,00,08,00,00,00,00,00,00,00,00,00,00,00
365 DATA 00,00,00,00,04,00,00,00,00,00,00,00,00,00,00,00
370 ' attr 2
375 DATA 00,00,00,00,41,00,00,00,00,00,00,00,00,00,00,00

600 ' sprite color change
610 color=(2,7,3,3)
615 color=(3,6,2,2)
620 color=(4,6,2,5)
625 color=(5,5,1,5)

798 print #1, "Meowculating Meowrbits.."
800 ri=44 'iterations'
801 ra= 1.5707963267948966 '6.283185307179586 'radians
802 rs=ra/ri 'slices
810 dim ps(ri)
820 for rn=0 to ri-1
840 ps(rn) = sin(rs*rn)
850 next rn

1000 print #1, "Scooting Poops..."
1100 'Load sprite data into vdp
1103 'RESTORE
1104 ly=12 'layers
1110 FOR sn%=0 to ly-1
1115 b$=""
1120 FOR r%=0to31 'each pixel set
1125 READ d$:b$=b$+CHR$(VAL("&h"+d$))
1130 nextr%
1135 sprite$(sn%)=b$
1145 b$=""
1150 FOR r%=0to15 'each color attribute set
1155 READ d$:b$=b$+CHR$(VAL("&h"+d$))
1160 NEXT r%
1165 color sprite$(sn%)=b$    'assign sprite 1
1185 NEXT sn%

1200 ' chu logic
1210 SPRITE ON ' collision engine
1211 cu=0
1215 ON SPRITE GOSUB 1900

1400 ' twinkle colors 9-13
1401 ci = 0 : cc = 10
1402 dim cr(cc) : dim cg(cc) : dim cb(cc) ' double length instead of mod operation
1403 for i=0 to cc
1404 cr(i) = int(rnd(1)*7) : cg(i) = int(rnd(1)*7) : cb(i) = int(rnd(1)*7)
1405 next i
1406 cc = 5

1450 ' hearto
1451 PUT sprite 9,(128,90)


1500 ' stars
1501 color 5,1,1
1502 CLS
1510 for tn=0 to 100
1520 pset(int(rnd(1)*255), int(rnd(1)*191)), int(rnd(1)*15)+1 '4+9
1530 next tn

1610 ' move sprites
1620 tx=0: lt=0
1621 ld=1 '1/4 sine lookup direction
1630 ' sprite orbits
1635 on ld goto 1640, 1641, 1642, 1643
1636 goto 3000
1640 px =  ps(lt)        : py =  ps((ri-1)-lt) : goto 1650
1641 px =  ps((ri-1)-lt) : py = -ps(lt)        : goto 1650
1642 px = -ps(lt)        : py = -ps((ri-1)-lt) : goto 1650
1643 px = -ps((ri-1)-lt) : py =  ps(lt)        : goto 1650
1650 px = px*60
1651 py = py*60
1652 PUT sprite 0,(px+128,py+90)
1653 PUT sprite 3,(py+128,px+90)

1680 lt=lt+1
1681 if lt > ri-1 then ld=ld+1 : lt = 0
1682 if ld > 4 then ld = 1

1690 if cu then 1691 else 1693
1691 PUT sprite 9,(10,226) : PUT sprite 6,(128,90) : goto 1695
1693 PUT sprite 6,(40,226) : PUT sprite 9,(128,90)
1695 cu = 0

1700 SET SCROLL tx,0,1 'starfield scroll
1710 tx=tx+1
1720 if tx > 511 then tx = 0
1730 ' twinkle
1731 tr = cr(ci) : tg = cg(ci) : tb = cb(ci)
1735 color=(9, tr,tg,tb)
1736 color=(10, tb,tr,tg)
1737 color=(11, tg,tb,tr)
1738 'color=(12, tr,tr,tb)
1739 'color=(13, tb,tb,tg)
1741 ci = ci+1
1742 if ci > cc-1 then ci = 0

1800 goto 1630
1801 END

1900 'sprite collide
1901 cu=1
1902 return
