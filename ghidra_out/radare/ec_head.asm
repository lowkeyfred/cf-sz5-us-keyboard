WARN: Cannot find asm.parser for arc
INFO: Fallback to null
WARN: Cannot find asm.parser for arc
            0x00001000      f1c0           push_s blink
            0x00001002      d1c0           pop_s blink
            0x00001004      e07e           j_s [blink]
            0x00001006      0000f1c0       b.d -518144 ;0xfffffffffff82804
            0x0000100a      cf70           mov_s 0x0,0
            0x0000100c      80009c0d       b 110720 ;0x0001c08c
            0x00001010      3a0bc000       bl 6968 ;0x00002b48
            0x00001014      cf70           mov_s 0x0,0
            0x00001016      8000a80d       bnv.d 110720 ;0x0001c094
            0x0000101a      320bc000       bl 6960 ;0x00002b48
            0x0000101e      2220800f00..   jl 0x0x2bbc
            0x00001026      d1c0           pop_s blink
            0x00001028      e07e           j_s [blink]
            0x0000102a      00000000       b 0 ;0x00001028
            0x0000102e      000000d9       b -319488 ;0xfffffffffffb302c
            0x00001032      00da           mov_s r2,0x0
            0x00001034      00db           mov_s r3,0x0
            0x00001036      4a240000       mov r4,0x0
            0x0000103a      4a250000       mov r5,0x0
            0x0000103e      4a260000       mov r6,0x0
            0x00001042      4a270000       mov r7,0x0
            0x00001046      4a200010       mov r8,0x0
            0x0000104a      4a210010       mov r9,0x0
            0x0000104e      4a220010       mov r10,0x0
            0x00001052      4a230010       mov r11,0x0
            0x00001056      00dc           mov_s r12,0x0
            0x00001058      00dd           mov_s r13,0x0
            0x0000105a      00de           mov_s r14,0x0
            0x0000105c      00df           mov_s r15,0x0
            0x0000105e      4a200020       mov r16,0x0
            0x00001062      4a210020       mov r17,0x0
            0x00001066      4a220020       mov r18,0x0
            0x0000106a      4a230020       mov r19,0x0
            0x0000106e      4a240020       mov r20,0x0
            0x00001072      4a250020       mov r21,0x0
            0x00001076      4a260020       mov r22,0x0
            0x0000107a      4a270020       mov r23,0x0
            0x0000107e      4a200030       mov r24,0x0
            0x00001082      4a210030       mov r25,0x0
            0x00001086      cf70           mov_s 0x0,0
            0x00001088      010020f0       b.d 1966080 ;0x001e1088
            0x0000108c      02e8           breq_s r0,0x0,4 ;0x00001090
            0x0000108e      4078           jl_s [r0]
            0x00001090      0a24803f80..   mov sp,0x0x800400
            0x00001098      0a22803f80..   mov gp,0x0x800600
            0x000010a0      cf72           mov_s 0x0,2
            0x000010a2      00000000       b 0 ;0x000010a0
            0x000010a6      03ea           breq_s r2,0x0,6 ;0x000010aa
            0x000010a8      407a           jl_s [r2]
            0x000010aa      4a230030       mov fp,0x0
            0x000010ae      2220800f00..   jl 0x0x13a4
            0x000010b6      07000000       b 6 ;0x000010ba
            0x000010ba      69204000       flag 0x0x1
            0x000010be      e078           nop_s
            0x000010c0      e078           nop_s
            0x000010c2      e078           nop_s
            0x000010c4      fbf1           b_s -10 ;0x000010ba
            0x000010c6      e078           nop_s
            0x000010c8      cf75           mov_s 0x0,5
            0x000010ca      8000e405       bn.d 47232 ;0x0000c948
            0x000010ce      2085           ld_s r1,[r13,0x0]
            0x000010d0      0081           ld_s r0,[r1,0x0]
            0x000010d2      9b70           .short 0x709b
            0x000010d4      04141e34       ld.ab r30,[sp,4]
            0x000010d8      04141d34       ld.ab ilink,[sp,4]
            0x000010dc      04141934       ld.ab r25,[sp,4]
            0x000010e0      04141834       ld.ab r24,[sp,4]
            0x000010e4      04141734       ld.ab r23,[sp,4]
            0x000010e8      04141634       ld.ab r22,[sp,4]
            0x000010ec      04141534       ld.ab r21,[sp,4]
            0x000010f0      04141434       ld.ab r20,[sp,4]
            0x000010f4      04141334       ld.ab r19,[sp,4]
            0x000010f8      04141234       ld.ab r18,[sp,4]
            0x000010fc      04141134       ld.ab r17,[sp,4]
            0x00001100      04141034       ld.ab r16,[sp,4]
            0x00001104      04140f34       ld.ab r15,[sp,4]
            0x00001108      04140e34       ld.ab r14,[sp,4]
            0x0000110c      04140d34       ld.ab r13,[sp,4]
            0x00001110      6b25c012       sr r13,[status32_p0]
            0x00001114      04140d34       ld.ab r13,[sp,4]
            0x00001118      d1c0           pop_s blink
            0x0000111a      c1c4           pop_s r12
            0x0000111c      6b24c010       sr r12,[lp_end]
            0x00001120      c1c4           pop_s r12
            0x00001122      6b248010       sr r12,[lp_start]
            0x00001126      c1c4           pop_s r12
            0x00001128      9f74           mov_s.ne r12,sp
            0x0000112a      04140b34       ld.ab r11,[sp,4]
            0x0000112e      04140a34       ld.ab r10,[sp,4]
            0x00001132      04140934       ld.ab r9,[sp,4]
            0x00001136      04140834       ld.ab r8,[sp,4]
            0x0000113a      04140734       ld.ab r7,[sp,4]
            0x0000113e      04140634       ld.ab r6,[sp,4]
            0x00001142      04140534       ld.ab r5,[sp,4]
            0x00001146      04140434       ld.ab r4,[sp,4]
            0x0000114a      c1c3           pop_s r3
            0x0000114c      c1c2           pop_s r2
            0x0000114e      c1c1           pop_s r1
            0x00001150      c1c0           pop_s r0
            0x00001152      c1c4           pop_s r12
            0x00001154      452c7e10       divu 0x0,r12,0x0x1
            0x00001158      0a26407e       mov 0x0,r57
            0x0000115c      c1c4           pop_s r12
            0x0000115e      6b248014       sr r12,[0x0x12]
            0x00001162      c1c4           pop_s r12
            0x00001164      20208087       j [r30]
            0x00001168      e1c4           push_s r12
            0x0000116a      fc1cc8be       st.aw r59,[sp,-4]
            0x0000116e      fc1c48be       st.aw r57,[sp,-4]
            0x00001172      e1c0           push_s r0
            0x00001174      e1c1           push_s r1
            0x00001176      e1c2           push_s r2
            0x00001178      e1c3           push_s r3
            0x0000117a      fc1c08b1       st.aw r4,[sp,-4]
            0x0000117e      fc1c48b1       st.aw r5,[sp,-4]
            0x00001182      fc1c88b1       st.aw r6,[sp,-4]
            0x00001186      fc1cc8b1       st.aw r7,[sp,-4]
            0x0000118a      fc1c08b2       st.aw r8,[sp,-4]
            0x0000118e      fc1c48b2       st.aw r9,[sp,-4]
            0x00001192      fc1c88b2       st.aw r10,[sp,-4]
            0x00001196      fc1cc8b2       st.aw r11,[sp,-4]
            0x0000119a      fc1c08bf       st.aw lp_count,[sp,-4]
            0x0000119e      6a248010       lr r12,[lp_start]
            0x000011a2      e1c4           push_s r12
            0x000011a4      6a24c010       lr r12,[lp_end]
            0x000011a8      e1c4           push_s r12
            0x000011aa      f1c0           push_s blink
            0x000011ac      fc1c48b3       st.aw r13,[sp,-4]
            0x000011b0      6a25c012       lr r13,[status32_p0]
            0x000011b4      fc1c48b3       st.aw r13,[sp,-4]
            0x000011b8      fc1c88b3       st.aw r14,[sp,-4]
            0x000011bc      fc1cc8b3       st.aw r15,[sp,-4]
            0x000011c0      fc1c08b4       st.aw r16,[sp,-4]
            0x000011c4      fc1c48b4       st.aw r17,[sp,-4]
            0x000011c8      fc1c88b4       st.aw r18,[sp,-4]
            0x000011cc      fc1cc8b4       st.aw r19,[sp,-4]
            0x000011d0      fc1c08b5       st.aw r20,[sp,-4]
            0x000011d4      fc1c48b5       st.aw r21,[sp,-4]
            0x000011d8      fc1c88b5       st.aw r22,[sp,-4]
            0x000011dc      fc1cc8b5       st.aw r23,[sp,-4]
            0x000011e0      fc1c08b6       st.aw r24,[sp,-4]
            0x000011e4      fc1c48b6       st.aw r25,[sp,-4]
            0x000011e8      fc1c48b7       st.aw ilink,[sp,-4]
            0x000011ec      fc1c08b0       st.aw r0,[sp,-4]
            0x000011f0      cf70           mov_s 0x0,0
            0x000011f2      8000e405       bn.d 47232 ;0x0000ca70
            0x000011f6      0080           ld_s r0,[r0,0x0]
            0x000011f8      00180007       st sp,[r0]
            0x000011fc      04140034       ld.ab r0,[sp,4]
            0x00001200      ab26487000..   sr 0x0,[aux_irq_hint]
            0x00001208      8a0ec012       bl 155272 ;0x00027090
            0x0000120c      fc1c08b0       st.aw r0,[sp,-4]
            0x00001210      cf70           mov_s 0x0,0
            0x00001212      8000e405       bn.d 47232 ;0x0000ca90
            0x00001216      0080           ld_s r0,[r0,0x0]
            0x00001218      0080           ld_s r0,[r0,0x0]
            0x0000121a      9b70           .short 0x709b
            0x0000121c      04140034       ld.ab r0,[sp,4]
            0x00001220      04141d34       ld.ab ilink,[sp,4]
            0x00001224      04141934       ld.ab r25,[sp,4]
            0x00001228      04141834       ld.ab r24,[sp,4]
            0x0000122c      04141734       ld.ab r23,[sp,4]
            0x00001230      04141634       ld.ab r22,[sp,4]
            0x00001234      04141534       ld.ab r21,[sp,4]
            0x00001238      04141434       ld.ab r20,[sp,4]
            0x0000123c      04141334       ld.ab r19,[sp,4]
            0x00001240      04141234       ld.ab r18,[sp,4]
            0x00001244      04141134       ld.ab r17,[sp,4]
            0x00001248      04141034       ld.ab r16,[sp,4]
            0x0000124c      04140f34       ld.ab r15,[sp,4]
            0x00001250      04140e34       ld.ab r14,[sp,4]
            0x00001254      04140d34       ld.ab r13,[sp,4]
            0x00001258      6b25c012       sr r13,[status32_p0]
            0x0000125c      04140d34       ld.ab r13,[sp,4]
            0x00001260      d1c0           pop_s blink
            0x00001262      c1c4           pop_s r12
            0x00001264      6b24c010       sr r12,[lp_end]
            0x00001268      c1c4           pop_s r12
            0x0000126a      6b248010       sr r12,[lp_start]
            0x0000126e      c1c4           pop_s r12
            0x00001270      9f74           mov_s.ne r12,sp
            0x00001272      04140b34       ld.ab r11,[sp,4]
            0x00001276      04140a34       ld.ab r10,[sp,4]
            0x0000127a      04140934       ld.ab r9,[sp,4]
            0x0000127e      04140834       ld.ab r8,[sp,4]
            0x00001282      04140734       ld.ab r7,[sp,4]
            0x00001286      04140634       ld.ab r6,[sp,4]
            0x0000128a      04140534       ld.ab r5,[sp,4]
            0x0000128e      04140434       ld.ab r4,[sp,4]
            0x00001292      c1c3           pop_s r3
            0x00001294      c1c2           pop_s r2
            0x00001296      c1c1           pop_s r1
            0x00001298      c1c0           pop_s r0
            0x0000129a      c1c4           pop_s r12
            0x0000129c      452c7e10       divu 0x0,r12,0x0x1
            0x000012a0      0a26407e       mov 0x0,r57
            0x000012a4      c1c4           pop_s r12
            0x000012a6      6b248014       sr r12,[0x0x12]
            0x000012aa      c1c4           pop_s r12
            0x000012ac      20204087       j [ilink]
            0x000012b0      6a208002       lr r0,[status32]
            0x000012b4      46208001       bic r0,r0,0x0x6
            0x000012b8      2120c007       j.d [blink]
            0x000012bc      29200000       flag r0
            0x000012c0      6a208002       lr r0,[status32]
            0x000012c4      46208000       bic r0,r0,0x0x2
            0x000012c8      2120c007       j.d [blink]
            0x000012cc      29200000       flag r0
            0x000012d0      6a208002       lr r0,[status32]
            0x000012d4      46200001       bic r0,r0,0x0x4
            0x000012d8      2120c007       j.d [blink]
            0x000012dc      29200000       flag r0
            0x000012e0      6a208002       lr r0,[status32]
            0x000012e4      45208001       or r0,r0,0x0x6
            0x000012e8      2120c007       j.d [blink]
            0x000012ec      29200000       flag r0
            0x000012f0      6a208002       lr r0,[status32]
            0x000012f4      45208000       or r0,r0,0x0x2
            0x000012f8      2120c007       j.d [blink]
            0x000012fc      29200000       flag r0
            0x00001300      6a208002       lr r0,[status32]
            0x00001304      45200001       or r0,r0,0x0x4
            0x00001308      2120c007       j.d [blink]
            0x0000130c      29200000       flag r0
            0x00001310      e07e           j_s [blink]
            0x00001312      e078           nop_s
            0x00001314      f1c0           push_s blink
            0x00001316      ea082000       bl.d 232 ;0x000013fc
            0x0000131a      32d0           ld_s r0,[pcl,0x0xc8] ;0x000013e0
            0x0000131c      2220800f00..   jl 0x0x1008
            0x00001324      d1c0           pop_s blink
            0x00001326      e07e           j_s [blink]
            0x00001328      f1c0           push_s blink
            0x0000132a      3a0d8000       bl 5432 ;0x00002860
            0x0000132e      fc1cc8b6       st.aw fp,[sp,-4]
            0x00001332      fa09e000       bl.d 6648 ;0x00002d28
            0x00001336      0a230037       mov fp,sp
            0x0000133a      1a70           .short 0x701a
            0x0000133c      02b8           asl_s r0,r0,0x0x2
            0x0000133e      07e0           add_s r0,r0,0x0x7
            0x00001340      4620c000       bic r0,r0,0x0x3
            0x00001344      de0ca000       bl.d 5340 ;0x00002820
            0x00001348      02241c30       sub sp,sp,r0
            0x0000134c      8b70           .short 0x708b
            0x0000134e      3a70           .short 0x703a
            0x00001350      3b087220       brlt.d.nt r16,0x0x1,58 ;0x0000138a
            0x00001354      00de           mov_s r14,0x0
            0x00001356      0a75           .short 0x750a
            0x00001358      d609e000       bl.d 6612 ;0x00002d2c
            0x0000135c      c970           .short 0x70c9
            0x0000135e      ba0f6000       bl.d 4024 ;0x00002314
            0x00001362      5a70           .short 0x705a
            0x00001364      04e0           add_s r0,r0,0x0x4
            0x00001366      4620c000       bic r0,r0,0x0x3
            0x0000136a      ba0ca000       bl.d 5304 ;0x00002820
            0x0000136e      02241c30       sub sp,sp,r0
            0x00001372      8b77           .short 0x778b
            0x00001374      e970           .short 0x70e9
            0x00001376      3a09a000       bl.d 4408 ;0x000024ac
            0x0000137a      4a71           .short 0x714a
            0x0000137c      15218c23       add2 r12,r17,r14
            0x00001380      61bd           sub_s r13,r13,0x0x1
            0x00001382      e0a4           st_s r15,[r12,0x0]
            0x00001384      d50d7590       brhs.d.nt r13,0x0x1,-44 ;0x00001358
            0x00001388      01e6           add_s r14,r14,0x0x1
            0x0000138a      00d8           mov_s r0,0x0
            0x0000138c      15210c24       add2 r12,r17,r16
            0x00001390      00a4           st_s r0,[r12,0x0]
            0x00001392      15d0           ld_s r0,[pcl,0x0x54] ;0x000013e4
            0x00001394      57d9           mov_s r1,0x0x57
            0x00001396      21a0           st_s r1,[r0,0x0x4]
            0x00001398      0a70           .short 0x700a
            0x0000139a      d60ee010       bl.d 138964 ;0x0002326c
            0x0000139e      2a71           .short 0x712a
            0x000013a0      dd000000       b 220 ;0x0000147c
            0x000013a4      11d0           ld_s r0,[pcl,0x0x44] ;0x000013e8
            0x000013a6      80e0           cmp_s r0,0x0
            0x000013a8      f1c0           push_s blink
            0x000013aa      18090100       bleq 280 ;0x000014c0
            0x000013ae      0ed0           ld_s r0,[pcl,0x0x38] ;0x000013e4
            0x000013b0      0080           ld_s r0,[r0,0x0]
            0x000013b2      0de8           breq_s r0,0x0,26 ;0x000013ca
            0x000013b4      0ed0           ld_s r0,[pcl,0x0x38] ;0x000013ec
            0x000013b6      0fd1           ld_s r1,[pcl,0x0x3c] ;0x000013f0
            0x000013b8      6e08e000       bl.d 6252 ;0x00002c24
            0x000013bc      0279           sub_s r1,r1,r0
            0x000013be      0ed0           ld_s r0,[pcl,0x0x38] ;0x000013f4
            0x000013c0      05e8           breq_s r0,0x0,10 ;0x000013ca
            0x000013c2      0ed1           ld_s r1,[pcl,0x0x38] ;0x000013f8
            0x000013c4      6208e000       bl.d 6240 ;0x00002c24
            0x000013c8      0279           sub_s r1,r1,r0
            0x000013ca      1a0a8000       bl 4632 ;0x000025e0
            0x000013ce      460fcfff       bl -188 ;0x00001310
            0x000013d2      160ac000       bl 6676 ;0x00002de4
            0x000013d6      d0ff           bl_s -192 ;0x00001314
            0x000013d8      d4ff           bl_s -176 ;0x00001328
            0x000013da      d1c0           pop_s blink
            0x000013dc      e07e           j_s [blink]
            0x000013de      e078           nop_s
            0x000013e0      00100000       ld r0,[r0]
            0x000013e4      d4098000       bl 4564 ;0x000025b8
            0x000013e8      00000000       b 0 ;0x000013e8
            0x000013ec      7c0e8000       bl 5756 ;0x00002a68
            0x000013f0      40398000       .word 0x39400080
            0x000013f4      00000000       b 0 ;0x000013f4
            0x000013f8      00000000       b 0 ;0x000013f8
            0x000013fc      f1c0           push_s blink
            0x000013fe      760c8000       bl 5236 ;0x00002870
            0x00001402      0876           .short 0x7608
            0x00001404      19d5           ld_s r13,[pcl,0x0x64] ;0x00001468
            0x00001406      060fa000       bl.d 5892 ;0x00002b08
            0x0000140a      0185           ld_s r0,[r13,0x0x4]
            0x0000140c      0085           ld_s r0,[r13,0x0]
            0x0000140e      a4e0           cmp_s r0,0x0x24
            0x00001410      ca268a1fff..   mov.ge r14,0x0xffffffff
            0x00001418      4bf6           bge_s 22 ;0x0000142e
            0x0000141a      85e8           brne_s r0,0x0,10 ;0x00001422
            0x0000141c      14d2           ld_s r2,[pcl,0x0x50] ;0x0000146c
            0x0000141e      15d1           ld_s r1,[pcl,0x0x54] ;0x00001470
            0x00001420      40a1           st_s r2,[r1,0x0]
            0x00001422      15d1           ld_s r1,[pcl,0x0x54] ;0x00001474
            0x00001424      1579           add2_s r1,r1,r0
            0x00001426      c0a1           st_s r14,[r1,0x0]
            0x00001428      01e0           add_s r0,r0,0x0x1
            0x0000142a      00de           mov_s r14,0x0
            0x0000142c      00a5           st_s r0,[r13,0x0]
            0x0000142e      e20ea000       bl.d 5856 ;0x00002b0c
            0x00001432      0185           ld_s r0,[r13,0x0x4]
            0x00001434      ad04a000       b.d 5292 ;0x000028e0
            0x00001438      c970           .short 0x70c9
            0x0000143a      e078           nop_s
            0x0000143c      f1c0           push_s blink
            0x0000143e      360c8000       bl 5172 ;0x00002870
            0x00001442      0ad0           ld_s r0,[pcl,0x0x28] ;0x00001468
            0x00001444      a080           ld_s r13,[r0,0x0]
            0x00001446      0bed           breq_s r13,0x0,22 ;0x0000145a
            0x00001448      a976           .short 0x76a9
            0x0000144a      0bd0           ld_s r0,[pcl,0x0x2c] ;0x00001474
            0x0000144c      61be           sub_s r14,r14,0x0x1
            0x0000144e      f0208003       ld.as r0,[r0,r14]
            0x00001452      6078           jl_s.d [r0]
            0x00001454      61bd           sub_s r13,r13,0x0x1
            0x00001456      f70d5590       brhs.nt r13,0x0x1,-10 ;0x0000144a
            0x0000145a      89048000       b 5256 ;0x000028e0
            0x0000145e      e078           nop_s
            0x00001460      a106a000       b.d 5792 ;0x00002b00
            0x00001464      05d0           ld_s r0,[pcl,0x0x14] ;0x00001478
            0x00001466      e078           nop_s
            0x00001468      dc098000       bl 4572 ;0x00002644
            0x0000146c      3c140000       ld r0,[r4,60]
            0x00001470      180a8000       bl 4632 ;0x00002688
            0x00001474      e0358000       .word 0x35e00080
            0x00001478      e0098000       bl 4576 ;0x00002658
            0x0000147c      f1c0           push_s blink
            0x0000147e      e1c5           push_s r13
            0x00001480      07d1           ld_s r1,[pcl,0x0x1c] ;0x0000149c
            0x00001482      0875           .short 0x7508
            0x00001484      0081           ld_s r0,[r1,0x0]
            0x00001486      86e8           brne_s r0,0x0,12 ;0x00001490
            0x00001488      01d8           mov_s r0,0x0x1
            0x0000148a      8609a000       bl.d 4484 ;0x0000260c
            0x0000148e      00a1           st_s r0,[r1,0x0]
            0x00001490      9608e000       bl.d 6292 ;0x00002d24
            0x00001494      a970           .short 0x70a9
            0x00001496      55048000       b 5204 ;0x000028e8
            0x0000149a      e078           nop_s
            0x0000149c      e4098000       bl 4580 ;0x00002680
            0x000014a0      e07e           j_s [blink]
            0x000014a2      e078           nop_s
            0x000014a4      f1c0           push_s blink
            0x000014a6      ca0b8000       bl 5064 ;0x0000286c
            0x000014aa      0877           .short 0x7708
            0x000014ac      2875           .short 0x7528
            0x000014ae      6876           .short 0x7668
            0x000014b0      4870           .short 0x7048
            0x000014b2      e971           .short 0x71e9
            0x000014b4      fe0e6000       bl.d 3836 ;0x000023b0
            0x000014b8      a972           .short 0x72a9
            0x000014ba      2104a000       b.d 5152 ;0x000028d8
            0x000014be      a0a6           st_s r13,[r14,0x0]
            0x000014c0      f1c0           push_s blink
            0x000014c2      ae0b8000       bl 5036 ;0x0000286c
            0x000014c6      20d0           ld_s r0,[pcl,0x0x80] ;0x00001544
            0x000014c8      a1c1           sub_s sp,sp,0x0x4
            0x000014ca      84e8           brne_s r0,0x0,8 ;0x000014d0
            0x000014cc      00d8           mov_s r0,0x0
            0x000014ce      14f0           b_s 40 ;0x000014f4
            0x000014d0      1ed1           ld_s r1,[pcl,0x0x78] ;0x00001548
            0x000014d2      0089           ldb_s r0,[r1,0x0]
            0x000014d4      c9e0           cmp_s r0,0x0x49
            0x000014d6      08f4           bne_s 16 ;0x000014e4
            0x000014d8      0189           ldb_s r0,[r1,0x0x1]
            0x000014da      cee0           cmp_s r0,0x0x4e
            0x000014dc      04f4           bne_s 8 ;0x000014e4
            0x000014de      0289           ldb_s r0,[r1,0x0x2]
            0x000014e0      c9e0           cmp_s r0,0x0x49
            0x000014e2      04f2           beq_s 8 ;0x000014e8
            0x000014e4      01d8           mov_s r0,0x0x1
            0x000014e6      07f0           b_s 14 ;0x000014f2
            0x000014e8      0389           ldb_s r0,[r1,0x0x3]
            0x000014ea      83e0           cmp_s r0,0x0x3
            0x000014ec      02d8           mov_s r0,0x0x2
            0x000014ee      ca202c00       mov.le r0,0x0
            0x000014f2      06e8           breq_s r0,0x0,12 ;0x000014fc
            0x000014f4      ebff           bl_s -84 ;0x000014a0
            0x000014f6      e503a000       b.d 5092 ;0x000028d8
            0x000014fa      a1c0           add_s sp,sp,0x0x4
            0x000014fc      0389           ldb_s r0,[r1,0x0x3]
            0x000014fe      1308d200       brlt.nt r0,0x0x3,18 ;0x0000150e
            0x00001502      40210e02       add r14,r1,0x0x8
            0x00001506      e181           ld_s r15,[r1,0x0x4]
            0x00001508      0ef0           b_s 28 ;0x00001524
            0x0000150a      08e6           add_s r14,r14,0x0x8
            0x0000150c      0cf0           b_s 24 ;0x00001524
            0x0000150e      10d7           ld_s r15,[pcl,0x0x40] ;0x0000154c
            0x00001510      c469           add_s r14,r1,0x0x4
            0x00001512      0af0           b_s 20 ;0x00001524
            0x00001514      08e6           add_s r14,r14,0x0x8
            0x00001516      8b73           .short 0x738b
            0x00001518      c970           .short 0x70c9
            0x0000151a      607f           jl_s.d [r15]
            0x0000151c      a971           .short 0x71a9
            0x0000151e      03e5           add_s r13,r13,0x0x3
            0x00001520      22bd           lsr_s r13,r13,0x0x2
            0x00001522      b57e           add2_s r14,r14,r13
            0x00001524      a186           ld_s r13,[r14,0x0x4]
            0x00001526      84ed           brne_s r13,0x0,8 ;0x0000152c
            0x00001528      0086           ld_s r0,[r14,0x0]
            0x0000152a      52e8           breq_s r0,0x0,-92 ;0x000014cc
            0x0000152c      6fed           breq_s r13,0x0,-34 ;0x0000150a
            0x0000152e      e90d7390       brge.d.nt r13,0x0x1,-24 ;0x00001514
            0x00001532      4086           ld_s r2,[r14,0x0]
            0x00001534      4870           .short 0x7048
            0x00001536      00d9           mov_s r1,0x0
            0x00001538      2a0f6000       bl.d 3880 ;0x00002460
            0x0000153c      b37a           neg_s r2,r13
            0x0000153e      08e6           add_s r14,r14,0x0x8
            0x00001540      f2f1           b_s -28 ;0x00001524
            0x00001542      e078           nop_s
            0x00001544      bc8f           ldb_s r13,[r15,0x0x1c]
            0x00001546      02000886       bnv -999422 ;0xfffffffffff0d546
            0x0000154a      0200a414       bn.d 167938 ;0x0002a54a
            0x0000154e      00000872       bnv 933888 ;0x000e554c
            0x00001552      4608a000       bl.d 4164 ;0x00002594
            0x00001556      f4d0           ld_s r0,[pcl,0x0x3d0] ;0x00001924
            0x00001558      f4d0           ld_s r0,[pcl,0x0x3d0] ;0x00001928
            0x0000155a      b60da000       bl.d 5556 ;0x00002b0c
            0x0000155e      0780           ld_s r0,[r0,0x0x1c]
            0x00001560      55018000       b 4436 ;0x000026b4
            0x00001564      8c200880       cmp r0,512
            0x00001568      4c002d00       bhi.d 76 ;0x000015b4
            0x0000156c      f0d1           ld_s r1,[pcl,0x0x3c0] ;0x0000192c
            0x0000156e      c0e0           cmp_s r0,0x0x40
            0x00001570      13f7           bhi_s 38 ;0x00001596
            0x00001572      17085504       brhs.nt r0,0x0x11,22 ;0x00001586
            0x00001576      88e0           cmp_s r0,0x0x8
            0x00001578      e120ce07       jls.d [blink]
            0x0000157c      ca204e00       mov.ls r0,r1
            0x00001580      e07f           j_s.d [blink]
            0x00001582      40210004       add r0,r1,0x0x10
            0x00001586      0d085508       brhs.nt r0,0x0x21,12 ;0x00001590
            0x0000158a      e07f           j_s.d [blink]
            0x0000158c      40210008       add r0,r1,0x0x20
            0x00001590      e07f           j_s.d [blink]
            0x00001592      4021000c       add r0,r1,0x0x30
            0x00001596      8c200280       cmp r0,128
            0x0000159a      05f7           bhi_s 10 ;0x000015a2
            0x0000159c      e07f           j_s.d [blink]
            0x0000159e      56210002       add3 r0,r1,0x0x8
            0x000015a2      8c200480       cmp r0,256
            0x000015a6      05f7           bhi_s 10 ;0x000015ae
            0x000015a8      e07f           j_s.d [blink]
            0x000015aa      56218002       add3 r0,r1,0x0xa
            0x000015ae      e07f           j_s.d [blink]
            0x000015b0      56210003       add3 r0,r1,0x0xc
            0x000015b4      290e047000..   brlo.nt 0x0x1000,r0,40 ;0x000015dc
            0x000015bc      8c201080       cmp r0,1024
            0x000015c0      04f7           bhi_s 8 ;0x000015c8
            0x000015c2      e07f           j_s.d [blink]
            0x000015c4      56218003       add3 r0,r1,0x0xe
            0x000015c8      0f0e047000..   brlo.nt 0x0x800,r0,14 ;0x000015d6
            0x000015d0      e07f           j_s.d [blink]
            0x000015d2      56210004       add3 r0,r1,0x0x10
            0x000015d6      e07f           j_s.d [blink]
            0x000015d8      56218004       add3 r0,r1,0x0x12
            0x000015dc      0f0e047000..   brlo.nt 0x0x2000,r0,14 ;0x000015ea
            0x000015e4      e07f           j_s.d [blink]
            0x000015e6      56210005       add3 r0,r1,0x0x14
            0x000015ea      110e047000..   brlo.nt 0x0x7d00,r0,16 ;0x000015f8
            0x000015f2      e07f           j_s.d [blink]
            0x000015f4      56218005       add3 r0,r1,0x0x16
            0x000015f8      56210006       add3 r0,r1,0x0x18
            0x000015fc      e07e           j_s [blink]
            0x000015fe      e078           nop_s
            0x00001600      f1c0           push_s blink
            0x00001602      6e0a8000       bl 4716 ;0x0000286c
            0x00001606      e080           ld_s r15,[r0,0x0]
            0x00001608      cad5           ld_s r13,[pcl,0x0x328] ;0x00001930
            0x0000160a      0876           .short 0x7608
            0x0000160c      0d0f1e10       bbit0.t r15,0x0,12 ;0x00001618
            0x00001610      a970           .short 0x70a9
            0x00001612      860f6000       bl.d 3972 ;0x00002594
            0x00001616      2386           ld_s r1,[r14,0x0xc]
            0x00001618      c4d0           ld_s r0,[pcl,0x0x310] ;0x00001928
            0x0000161a      0380           ld_s r0,[r0,0x0xc]
            0x0000161c      0f085200       brlt.nt r0,0x0x1,14 ;0x0000162a
            0x00001620      40250013       add r0,r13,0x0xc
            0x00001624      720f6000       bl.d 3952 ;0x00002594
            0x00001628      2186           ld_s r1,[r14,0x0x4]
            0x0000162a      4025c014       add r0,r13,0x0x13
            0x0000162e      c971           .short 0x71c9
            0x00001630      660f6000       bl.d 3940 ;0x00002594
            0x00001634      4086           ld_s r2,[r14,0x0]
            0x00001636      110f1e10       bbit0.t r15,0x0,16 ;0x00001644
            0x0000163a      4025c017       add r0,r13,0x0x1f
            0x0000163e      5a0f6000       bl.d 3928 ;0x00002594
            0x00001642      2286           ld_s r1,[r14,0x0x8]
            0x00001644      95028000       b 4756 ;0x000028d8
            0x00001648      f1c0           push_s blink
            0x0000164a      2a0a8000       bl 4648 ;0x00002870
            0x0000164e      6280           ld_s r3,[r0,0x0x8]
            0x00001650      0875           .short 0x7508
            0x00001652      04100500       ld r5,[r0,4]
            0x00001656      a972           .short 0x72a9
            0x00001658      0c100600       ld r6,[r0,12]
            0x0000165c      b6d6           ld_s r14,[pcl,0x0x2d8] ;0x00001934
            0x0000165e      2085           ld_s r1,[r13,0x0]
            0x00001660      c970           .short 0x70c9
            0x00001662      360f6000       bl.d 3892 ;0x00002594
            0x00001666      9873           .short 0x7398
            0x00001668      40250212       add r2,r13,0x0x8
            0x0000166c      646d           add_s r3,r13,0x0x4
            0x0000166e      40250413       add r4,r13,0x0xc
            0x00001672      4026801c       add r0,r14,0x0x32
            0x00001676      220f6000       bl.d 3872 ;0x00002594
            0x0000167a      a971           .short 0x71a9
            0x0000167c      65028000       b 4708 ;0x000028e0
            0x00001680      f1c0           push_s blink
            0x00001682      e1c5           push_s r13
            0x00001684      0875           .short 0x7508
            0x00001686      120f6000       bl.d 3856 ;0x00002594
            0x0000168a      acd0           ld_s r0,[pcl,0x0x2b0] ;0x00001938
            0x0000168c      a970           .short 0x70a9
            0x0000168e      ddff           bl_s -140 ;0x00001600
            0x00001690      59028000       b 4696 ;0x000028e8
            0x00001694      f1c0           push_s blink
            0x00001696      d2098000       bl 4560 ;0x00002864
            0x0000169a      0876           .short 0x7608
            0x0000169c      a8d7           ld_s r15,[pcl,0x0x2a0] ;0x0000193c
            0x0000169e      fa0e6000       bl.d 3832 ;0x00002594
            0x000016a2      e970           .short 0x70e9
            0x000016a4      c970           .short 0x70c9
            0x000016a6      e9ff           bl_s -92 ;0x00001648
            0x000016a8      ee0e6000       bl.d 3820 ;0x00002594
            0x000016ac      40274015       add r0,r15,0x0x15
            0x000016b0      40260d14       add r13,r14,0x0x10
            0x000016b4      02f0           b_s 4 ;0x000016b8
            0x000016b6      1d65           add_s r13,r13,r0
            0x000016b8      0386           ld_s r0,[r14,0x0xc]
            0x000016ba      17086503       brhs.d.nt r0,r13,22 ;0x000016ce
            0x000016be      40251111       add r17,r13,0x0x4
            0x000016c2      4027c015       add r0,r15,0x0x17
            0x000016c6      a971           .short 0x71a9
            0x000016c8      5e0b6000       bl.d 2908 ;0x00002224
            0x000016cc      c972           .short 0x72c9
            0x000016ce      a970           .short 0x70a9
            0x000016d0      ecff           bl_s -80 ;0x00001680
            0x000016d2      c60e6000       bl.d 3780 ;0x00002594
            0x000016d6      40274015       add r0,r15,0x0x15
            0x000016da      0085           ld_s r0,[r13,0x0]
            0x000016dc      2386           ld_s r1,[r14,0x0xc]
            0x000016de      50201000       bclr r16,r0,0x0
            0x000016e2      00204023       add r0,r16,r13
            0x000016e6      13090500       brhs.nt r1,r0,18 ;0x000016f6
            0x000016ea      4027001b       add r0,r15,0x0x2c
            0x000016ee      a971           .short 0x71a9
            0x000016f0      360b6000       bl.d 2868 ;0x00002224
            0x000016f4      c972           .short 0x72c9
            0x000016f6      53207ea0       bmsk.f 0x0,r16,0x0x1
            0x000016fa      08f2           beq_s 16 ;0x00001708
            0x000016fc      55274014       add2 r0,r15,0x0x11
            0x00001700      a971           .short 0x71a9
            0x00001702      260b6000       bl.d 2852 ;0x00002224
            0x00001706      c972           .short 0x72c9
            0x00001708      88d0           ld_s r0,[pcl,0x0x220] ;0x00001928
            0x0000170a      0380           ld_s r0,[r0,0x0xc]
            0x0000170c      1f085200       brlt.nt r0,0x0x1,30 ;0x0000172a
            0x00001710      1b081020       breq.nt r16,0x0,26 ;0x0000172a
            0x00001714      0085           ld_s r0,[r13,0x0]
            0x00001716      a0b8           bclr_s r0,r0,0x0
            0x00001718      30210020       ld r0,[r17,r0]
            0x0000171c      0f080004       breq.nt r0,r16,14 ;0x0000172a
            0x00001720      88d0           ld_s r0,[pcl,0x0x220] ;0x00001940
            0x00001722      a971           .short 0x71a9
            0x00001724      020b6000       bl.d 2816 ;0x00002224
            0x00001728      c972           .short 0x72c9
            0x0000172a      0085           ld_s r0,[r13,0x0]
            0x0000172c      50200080       bclr.f r0,r0,0x0
            0x00001730      c3f5           bne_s -122 ;0x000016b6
            0x00001732      99018000       b 4504 ;0x000028c8
            0x00001736      e078           nop_s
            0x00001738      f1c0           push_s blink
            0x0000173a      36098000       bl 4404 ;0x0000286c
            0x0000173e      82d6           ld_s r14,[pcl,0x0x208] ;0x00001944
            0x00001740      560e6000       bl.d 3668 ;0x00002594
            0x00001744      c970           .short 0x70c9
            0x00001746      79d0           ld_s r0,[pcl,0x0x1e4] ;0x00001928
            0x00001748      a280           ld_s r13,[r0,0x0x8]
            0x0000174a      10f0           b_s 32 ;0x00001768
            0x0000174c      0185           ld_s r0,[r13,0x0x4]
            0x0000174e      0be8           breq_s r0,0x0,22 ;0x00001762
            0x00001750      0080           ld_s r0,[r0,0x0]
            0x00001752      130d0010       breq.nt r13,r0,18 ;0x00001762
            0x00001756      40260014       add r0,r14,0x0x10
            0x0000175a      00d9           mov_s r1,0x0
            0x0000175c      ca0a6000       bl.d 2760 ;0x00002224
            0x00001760      a972           .short 0x72a9
            0x00001762      a970           .short 0x70a9
            0x00001764      ccff           bl_s -208 ;0x00001694
            0x00001766      a185           ld_s r13,[r13,0x0x4]
            0x00001768      f2ed           brne_s r13,0x0,-28 ;0x0000174c
            0x0000176a      00df           mov_s r15,0x0
            0x0000176c      00dd           mov_s r13,0x0
            0x0000176e      13f0           b_s 38 ;0x00001792
            0x00001770      76d1           ld_s r1,[pcl,0x0x1d8] ;0x00001948
            0x00001772      146d           asl_s r0,r13,0x0x4
            0x00001774      0061           ld_s r0,[r1,r0]
            0x00001776      0080           ld_s r0,[r0,0x0]
            0x00001778      8ce8           brne_s r0,0x0,24 ;0x00001790
            0x0000177a      87ef           brne_s r15,0x0,14 ;0x00001786
            0x0000177c      1a0e6000       bl.d 3608 ;0x00002594
            0x00001780      40268018       add r0,r14,0x0x22
            0x00001784      01df           mov_s r15,0x0x1
            0x00001786      c970           .short 0x70c9
            0x00001788      49e0           add_s r0,r0,0x0x49
            0x0000178a      0e0e6000       bl.d 3596 ;0x00002594
            0x0000178e      a971           .short 0x71a9
            0x00001790      01e5           add_s r13,r13,0x0x1
            0x00001792      e10d5293       brlt.nt r13,0x0xd,-32 ;0x00001770
            0x00001796      05ef           breq_s r15,0x0,10 ;0x0000179e
            0x00001798      fe0d6000       bl.d 3580 ;0x00002594
            0x0000179c      6cd0           ld_s r0,[pcl,0x0x1b0] ;0x0000194c
            0x0000179e      00df           mov_s r15,0x0
            0x000017a0      02f0           b_s 4 ;0x000017a4
            0x000017a2      01e7           add_s r15,r15,0x0x1
            0x000017a4      330f5313       brge.nt r15,0x0xd,50 ;0x000017d6
            0x000017a8      68d1           ld_s r1,[pcl,0x0x1a0] ;0x00001948
            0x000017aa      146f           asl_s r0,r15,0x0x4
            0x000017ac      0561           ld_s r13,[r1,r0]
            0x000017ae      0085           ld_s r0,[r13,0x0]
            0x000017b0      79e8           breq_s r0,0x0,-14 ;0x000017a2
            0x000017b2      c970           .short 0x70c9
            0x000017b4      4de0           add_s r0,r0,0x0x4d
            0x000017b6      e20d6000       bl.d 3552 ;0x00002594
            0x000017ba      e971           .short 0x71e9
            0x000017bc      0085           ld_s r0,[r13,0x0]
            0x000017be      73e8           breq_s r0,0x0,-26 ;0x000017a2
            0x000017c0      c970           .short 0x70c9
            0x000017c2      d60d6000       bl.d 3540 ;0x00002594
            0x000017c6      6be0           add_s r0,r0,0x0x6b
            0x000017c8      a970           .short 0x70a9
            0x000017ca      aeff           bl_s -328 ;0x00001680
            0x000017cc      ca0d6000       bl.d 3528 ;0x00002594
            0x000017d0      5fd0           ld_s r0,[pcl,0x0x17c] ;0x0000194c
            0x000017d2      a285           ld_s r13,[r13,0x0x8]
            0x000017d4      f4f1           b_s -24 ;0x000017bc
            0x000017d6      05018000       b 4356 ;0x000028d8
            0x000017da      e078           nop_s
            0x000017dc      f1c0           push_s blink
            0x000017de      8e088000       bl 4236 ;0x00002868
            0x000017e2      1a70           .short 0x701a
            0x000017e4      60ff           bl_s -640 ;0x00001564
            0x000017e6      0876           .short 0x7608
            0x000017e8      a286           ld_s r13,[r14,0x0x8]
            0x000017ea      03f0           b_s 6 ;0x000017ee
            0x000017ec      a285           ld_s r13,[r13,0x0x8]
            0x000017ee      0085           ld_s r0,[r13,0x0]
            0x000017f0      e46d           add_s r15,r13,0x0x4
            0x000017f2      23e8           breq_s r0,0x0,70 ;0x00001836
            0x000017f4      4dd0           ld_s r0,[pcl,0x0x134] ;0x00001928
            0x000017f6      0380           ld_s r0,[r0,0x0xc]
            0x000017f8      35089200       brlt.nt r0,0x0x2,52 ;0x0000182c
            0x000017fc      86ed           brne_s r13,0x0,12 ;0x00001808
            0x000017fe      55d0           ld_s r0,[pcl,0x0x154] ;0x00001950
            0x00001800      c971           .short 0x71c9
            0x00001802      260a6000       bl.d 2596 ;0x00002224
            0x00001806      00da           mov_s r2,0x0
            0x00001808      0085           ld_s r0,[r13,0x0]
            0x0000180a      11081f00       bbit1.t r0,0x0,16 ;0x00001818
            0x0000180e      52d0           ld_s r0,[pcl,0x0x148] ;0x00001954
            0x00001810      a971           .short 0x71a9
            0x00001812      160a6000       bl.d 2580 ;0x00002224
            0x00001816      00da           mov_s r2,0x0
            0x00001818      0085           ld_s r0,[r13,0x0]
            0x0000181a      a0b8           bclr_s r0,r0,0x0
            0x0000181c      0167           ld_s r1,[r15,r0]
            0x0000181e      11084000       breq.nt r0,r1,16 ;0x0000182c
            0x00001822      4ed0           ld_s r0,[pcl,0x0x138] ;0x00001958
            0x00001824      a971           .short 0x71a9
            0x00001826      020a6000       bl.d 2560 ;0x00002224
            0x0000182a      00da           mov_s r2,0x0
            0x0000182c      0085           ld_s r0,[r13,0x0]
            0x0000182e      a0b8           bclr_s r0,r0,0x0
            0x00001830      bd080484       brlo.nt r0,r16,-68 ;0x000017ec
            0x00001834      06f0           b_s 12 ;0x00001840
            0x00001836      4ad0           ld_s r0,[pcl,0x0x128] ;0x0000195c
            0x00001838      10e6           add_s r14,r14,0x0x10
            0x0000183a      b10e0490       brlo.nt r14,r0,-80 ;0x000017e8
            0x0000183e      00dd           mov_s r13,0x0
            0x00001840      9100a000       b.d 4240 ;0x000028d0
            0x00001844      a970           .short 0x70a9
            0x00001846      e078           nop_s
            0x00001848      f1c0           push_s blink
            0x0000184a      16088000       bl 4116 ;0x0000285c
            0x0000184e      1a70           .short 0x701a
            0x00001850      4a230020       mov r19,0x0
            0x00001854      d4171270       ld r18,[pcl,212] ;0x00001928
            0x00001858      08120e20       ld r14,[r18,8]
            0x0000185c      04f0           b_s 8 ;0x00001864
            0x0000185e      4a234020       mov r19,0x0x1
            0x00001862      c186           ld_s r14,[r14,0x0x4]
            0x00001864      870e1010       breq.nt r14,0x0,134 ;0x000018ea
            0x00001868      0186           ld_s r0,[r14,0x0x4]
            0x0000186a      0ae8           breq_s r0,0x0,20 ;0x0000187c
            0x0000186c      0080           ld_s r0,[r0,0x0]
            0x0000186e      110e0010       breq.nt r14,r0,16 ;0x0000187c
            0x00001872      3cd0           ld_s r0,[pcl,0x0xf0] ;0x00001960
            0x00001874      00d9           mov_s r1,0x0
            0x00001876      b2096000       bl.d 2480 ;0x00002224
            0x0000187a      c972           .short 0x72c9
            0x0000187c      40260d14       add r13,r14,0x0x10
            0x00001880      0386           ld_s r0,[r14,0x0xc]
            0x00001882      15086503       brhs.d.nt r0,r13,20 ;0x00001894
            0x00001886      40251111       add r17,r13,0x0x4
            0x0000188a      37d0           ld_s r0,[pcl,0x0xdc] ;0x00001964
            0x0000188c      a971           .short 0x71a9
            0x0000188e      9a096000       bl.d 2456 ;0x00002224
            0x00001892      c972           .short 0x72c9
            0x00001894      cb0d0094       breq.nt r13,r16,-54 ;0x0000185e
            0x00001898      e085           ld_s r15,[r13,0x0]
            0x0000189a      0386           ld_s r0,[r14,0x0xc]
            0x0000189c      a0bf           bclr_s r15,r15,0x0
            0x0000189e      b967           add_s r1,r15,r13
            0x000018a0      0f084500       brhs.nt r0,r1,14 ;0x000018ae
            0x000018a4      31d0           ld_s r0,[pcl,0x0xc4] ;0x00001968
            0x000018a6      a971           .short 0x71a9
            0x000018a8      7e096000       bl.d 2428 ;0x00002224
            0x000018ac      c972           .short 0x72c9
            0x000018ae      53277e90       bmsk.f 0x0,r15,0x0x1
            0x000018b2      07f2           beq_s 14 ;0x000018be
            0x000018b4      2ed0           ld_s r0,[pcl,0x0xb8] ;0x0000196c
            0x000018b6      a971           .short 0x71a9
            0x000018b8      6e096000       bl.d 2412 ;0x00002224
            0x000018bc      c972           .short 0x72c9
            0x000018be      0c120020       ld r0,[r18,12]
            0x000018c2      1f085200       brlt.nt r0,0x0x1,30 ;0x000018de
            0x000018c6      0def           breq_s r15,0x0,26 ;0x000018de
            0x000018c8      0085           ld_s r0,[r13,0x0]
            0x000018ca      a0b8           bclr_s r0,r0,0x0
            0x000018cc      30210020       ld r0,[r17,r0]
            0x000018d0      0f0f0010       breq.nt r15,r0,14 ;0x000018de
            0x000018d4      1bd0           ld_s r0,[pcl,0x0x6c] ;0x00001940
            0x000018d6      a971           .short 0x71a9
            0x000018d8      4e096000       bl.d 2380 ;0x00002224
            0x000018dc      c972           .short 0x72c9
            0x000018de      0085           ld_s r0,[r13,0x0]
            0x000018e0      50200080       bclr.f r0,r0,0x0
            0x000018e4      bff3           beq_s -130 ;0x00001862
            0x000018e6      1d65           add_s r13,r13,r0
            0x000018e8      ccf1           b_s -104 ;0x00001880
            0x000018ea      d1076000       b.d 4048 ;0x000028b8
            0x000018ee      6a70           .short 0x706a
            0x000018f0      f1c0           push_s blink
            0x000018f2      720f4000       bl 3952 ;0x00002860
            0x000018f6      0dd0           ld_s r0,[pcl,0x0x34] ;0x00001928
            0x000018f8      2880           ld_s r1,[r0,0x0x20]
            0x000018fa      80e1           cmp_s r1,0x0
            0x000018fc      5a70           .short 0x705a
            0x000018fe      b0f4           bne_s 352 ;0x00001a5c
            0x00001900      01e1           add_s r1,r1,0x0x1
            0x00001902      28a0           st_s r1,[r0,0x0x20]
            0x00001904      00de           mov_s r14,0x0
            0x00001906      0ddd           mov_s r13,0x0xd
            0x00001908      1ad0           ld_s r0,[pcl,0x0x68] ;0x00001970
            0x0000190a      f0208003       ld.as r0,[r0,r14]
            0x0000190e      b4ff           bl_s -304 ;0x000017dc
            0x00001910      61bd           sub_s r13,r13,0x0x1
            0x00001912      f90d7590       brhs.d.nt r13,0x0x1,-8 ;0x00001908
            0x00001916      01e6           add_s r14,r14,0x0x1
            0x00001918      4a210020       mov r17,0x0
            0x0000191c      08120e20       ld r14,[r18,8]
            0x00001920      2bf0           b_s 86 ;0x00001976
            0x00001922      e078           nop_s
            0x00001924      24b1           sth_s r1,[r1,0x0x8]
            0x00001926      0200e809       bnv.d 79874 ;0x00015126
            0x0000192a      80007036       b.d 444544 ;0x0006e1a8
            0x0000192e      800044b1       bn -644992 ;0xfffffffffff641ac
            0x00001932      02006eb1       bls.d -645118 ;0xfffffffffff64132
            0x00001936      0200cdb1       bhi -641022 ;0xfffffffffff65136
            0x0000193a      0200d3b1       b -641022 ;0xfffffffffff6513a
            0x0000193e      020025b2       bc.d -638974 ;0xfffffffffff6593e
            0x00001942      020039b2       b.d -638974 ;0xfffffffffff65942
            0x00001946      02007836       bnt.d 444418 ;0x0006e146
            0x0000194a      8000e8b1       bnv.d -640896 ;0xfffffffffff651c8
            0x0000194e      0200a6b2       bnc.d -634878 ;0xfffffffffff6694e
            0x00001952      0200b8b2       bnt.d -634878 ;0xfffffffffff66952
            0x00001956      0200d4b2       b -632830 ;0xfffffffffff67156
            0x0000195a      02004037       b 452610 ;0x0007015a
            0x0000195e      800049b2       bgt -636800 ;0xfffffffffff661dc
            0x00001962      0200eab1       bge.d -641022 ;0xfffffffffff65162
            0x00001966      0200ffb1       b.d -641022 ;0xfffffffffff65166
            0x0000196a      020017b2       bnm -638974 ;0xfffffffffff6596a
            0x0000196e      0200b40d       b.d 110594 ;0x0001c96e
            0x00001972      8000c186       beq -993152 ;0xfffffffffff0f1f0
            0x00001976      950e1010       breq.nt r14,0x0,148 ;0x00001a08
            0x0000197a      0186           ld_s r0,[r14,0x0x4]
            0x0000197c      0ae8           breq_s r0,0x0,20 ;0x00001990
            0x0000197e      0080           ld_s r0,[r0,0x0]
            0x00001980      110e0010       breq.nt r14,r0,16 ;0x00001990
            0x00001984      dc1700f0       ld r0,[pcl,-36] ;0x00001960
            0x00001988      00d9           mov_s r1,0x0
            0x0000198a      9e086000       bl.d 2204 ;0x00002224
            0x0000198e      c972           .short 0x72c9
            0x00001990      40260d14       add r13,r14,0x0x10
            0x00001994      0386           ld_s r0,[r14,0x0xc]
            0x00001996      17086503       brhs.d.nt r0,r13,22 ;0x000019aa
            0x0000199a      40251011       add r16,r13,0x0x4
            0x0000199e      c81700f0       ld r0,[pcl,-56] ;0x00001964
            0x000019a2      a971           .short 0x71a9
            0x000019a4      82086000       bl.d 2176 ;0x00002224
            0x000019a8      c972           .short 0x72c9
            0x000019aa      e085           ld_s r15,[r13,0x0]
            0x000019ac      e0bf           btst_s r15,0x0
            0x000019ae      c0216220       add.ne r17,r17,0x0x1
            0x000019b2      a0bf           bclr_s r15,r15,0x0
            0x000019b4      0386           ld_s r0,[r14,0x0xc]
            0x000019b6      b967           add_s r1,r15,r13
            0x000019b8      11084500       brhs.nt r0,r1,16 ;0x000019c8
            0x000019bc      ac1700f0       ld r0,[pcl,-84] ;0x00001968
            0x000019c0      a971           .short 0x71a9
            0x000019c2      66086000       bl.d 2148 ;0x00002224
            0x000019c6      c972           .short 0x72c9
            0x000019c8      53277e90       bmsk.f 0x0,r15,0x0x1
            0x000019cc      07f2           beq_s 14 ;0x000019da
            0x000019ce      a01700f0       ld r0,[pcl,-96] ;0x0000196c
            0x000019d2      a971           .short 0x71a9
            0x000019d4      52086000       bl.d 2128 ;0x00002224
            0x000019d8      c972           .short 0x72c9
            0x000019da      0c120020       ld r0,[r18,12]
            0x000019de      21085200       brlt.nt r0,0x0x1,32 ;0x000019fc
            0x000019e2      0eef           breq_s r15,0x0,28 ;0x000019fc
            0x000019e4      0085           ld_s r0,[r13,0x0]
            0x000019e6      a0b8           bclr_s r0,r0,0x0
            0x000019e8      30200020       ld r0,[r16,r0]
            0x000019ec      110f0010       breq.nt r15,r0,16 ;0x000019fc
            0x000019f0      501700f0       ld r0,[pcl,-176] ;0x00001940
            0x000019f4      a971           .short 0x71a9
            0x000019f6      32086000       bl.d 2096 ;0x00002224
            0x000019fa      c972           .short 0x72c9
            0x000019fc      0085           ld_s r0,[r13,0x0]
            0x000019fe      50200080       bclr.f r0,r0,0x0
            0x00001a02      baf3           beq_s -140 ;0x00001974
            0x00001a04      1d65           add_s r13,r13,r0
            0x00001a06      c8f1           b_s -112 ;0x00001994
            0x00001a08      00da           mov_s r2,0x0
            0x00001a0a      00db           mov_s r3,0x0
            0x00001a0c      02f0           b_s 4 ;0x00001a10
            0x00001a0e      01e3           add_s r3,r3,0x0x1
            0x00001a10      170b5303       brge.nt r3,0x0xd,22 ;0x00001a26
            0x00001a14      341701f0       ld r1,[pcl,-204] ;0x00001948
            0x00001a18      146b           asl_s r0,r3,0x0x4
            0x00001a1a      0161           ld_s r1,[r1,r0]
            0x00001a1c      0081           ld_s r0,[r1,0x0]
            0x00001a1e      79e8           breq_s r0,0x0,-14 ;0x00001a0e
            0x00001a20      01e2           add_s r2,r2,0x0x1
            0x00001a22      2281           ld_s r1,[r1,0x0x8]
            0x00001a24      fcf1           b_s -8 ;0x00001a1c
            0x00001a26      2f0a4004       breq.nt r2,r17,46 ;0x00001a52
            0x00001a2a      00dd           mov_s r13,0x0
            0x00001a2c      02f0           b_s 4 ;0x00001a30
            0x00001a2e      01e5           add_s r13,r13,0x0x1
            0x00001a30      230d5313       brge.nt r13,0x0xd,34 ;0x00001a52
            0x00001a34      141701f0       ld r1,[pcl,-236] ;0x00001948
            0x00001a38      146d           asl_s r0,r13,0x0x4
            0x00001a3a      0661           ld_s r14,[r1,r0]
            0x00001a3c      0086           ld_s r0,[r14,0x0]
            0x00001a3e      79e8           breq_s r0,0x0,-14 ;0x00001a2e
            0x00001a40      c970           .short 0x70c9
            0x00001a42      82ff           bl_s -504 ;0x00001848
            0x00001a44      85e8           brne_s r0,0x0,10 ;0x00001a4e
            0x00001a46      e9d0           ld_s r0,[pcl,0x0x3a4] ;0x00001de8
            0x00001a48      4e0b6000       bl.d 2892 ;0x00002594
            0x00001a4c      c971           .short 0x71c9
            0x00001a4e      c286           ld_s r14,[r14,0x0x8]
            0x00001a50      f6f1           b_s -20 ;0x00001a3c
            0x00001a52      20120020       ld r0,[r18,32]
            0x00001a56      61b8           sub_s r0,r0,0x0x1
            0x00001a58      201a0020       st r0,[r18,32]
            0x00001a5c      65064000       b 3684 ;0x000028c0
            0x00001a60      2380           ld_s r1,[r0,0x0xc]
            0x00001a62      4280           ld_s r2,[r0,0x0x8]
            0x00001a64      42a1           st_s r2,[r1,0x0x8]
            0x00001a66      2380           ld_s r1,[r0,0x0xc]
            0x00001a68      23a2           st_s r1,[r2,0x0xc]
            0x00001a6a      2080           ld_s r1,[r0,0x0]
            0x00001a6c      a0b9           bclr_s r1,r1,0x0
            0x00001a6e      e07f           j_s.d [blink]
            0x00001a70      20a0           st_s r1,[r0,0x0]
            0x00001a72      e078           nop_s
            0x00001a74      f1c0           push_s blink
            0x00001a76      fa0d4000       bl 3576 ;0x0000286c
            0x00001a7a      0875           .short 0x7508
            0x00001a7c      6080           ld_s r3,[r0,0x0]
            0x00001a7e      e468           add_s r15,r0,0x0x4
            0x00001a80      a0bb           bclr_s r3,r3,0x0
            0x00001a82      1b63           add_s r3,r3,r0
            0x00001a84      0083           ld_s r0,[r3,0x0]
            0x00001a86      a9170ef6       ld.as r14,[pcl,-87] ;0x00001a2d
            0x00001a8a      21081e00       bbit0.t r0,0x0,32 ;0x00001aa8
            0x00001a8e      6870           .short 0x7068
            0x00001a90      f4ff           bl_s -48 ;0x00001a60
            0x00001a92      2085           ld_s r1,[r13,0x0]
            0x00001a94      0083           ld_s r0,[r3,0x0]
            0x00001a96      3860           add_s r0,r0,r1
            0x00001a98      2386           ld_s r1,[r14,0x0xc]
            0x00001a9a      11097200       brlt.d.nt r1,0x0x1,16 ;0x00001aa8
            0x00001a9e      00a5           st_s r0,[r13,0x0]
            0x00001aa0      50200100       bclr r1,r0,0x0
            0x00001aa4      3f67           add_s r15,r15,r1
            0x00001aa6      00a7           st_s r0,[r15,0x0]
            0x00001aa8      0386           ld_s r0,[r14,0x0xc]
            0x00001aaa      15085200       brlt.nt r0,0x0x1,20 ;0x00001abc
            0x00001aae      0185           ld_s r0,[r13,0x0x4]
            0x00001ab0      02250310       sub r3,r13,r0
            0x00001ab4      0083           ld_s r0,[r3,0x0]
            0x00001ab6      e46b           add_s r15,r3,0x0x4
            0x00001ab8      09081f00       bbit1.t r0,0x0,8 ;0x00001ac0
            0x00001abc      a973           .short 0x73a9
            0x00001abe      0cf0           b_s 24 ;0x00001ad4
            0x00001ac0      6870           .short 0x7068
            0x00001ac2      e8ff           bl_s -96 ;0x00001a60
            0x00001ac4      2085           ld_s r1,[r13,0x0]
            0x00001ac6      0083           ld_s r0,[r3,0x0]
            0x00001ac8      3860           add_s r0,r0,r1
            0x00001aca      50200100       bclr r1,r0,0x0
            0x00001ace      00a3           st_s r0,[r3,0x0]
            0x00001ad0      3f67           add_s r15,r15,r1
            0x00001ad2      00a7           st_s r0,[r15,0x0]
            0x00001ad4      0083           ld_s r0,[r3,0x0]
            0x00001ad6      80b8           bset_s r0,r0,0x0
            0x00001ad8      00a3           st_s r0,[r3,0x0]
            0x00001ada      a3fe           bl_s -1396 ;0x00001564
            0x00001adc      248e           ldb_s r1,[r14,0x0x4]
            0x00001ade      0ae9           breq_s r1,0x0,20 ;0x00001af0
            0x00001ae0      02f0           b_s 4 ;0x00001ae4
            0x00001ae2      4870           .short 0x7048
            0x00001ae4      4280           ld_s r2,[r0,0x0x8]
            0x00001ae6      a082           ld_s r13,[r2,0x0]
            0x00001ae8      04ed           breq_s r13,0x0,8 ;0x00001af0
            0x00001aea      2083           ld_s r1,[r3,0x0]
            0x00001aec      f70d4490       brlo.nt r13,r1,-10 ;0x00001ae2
            0x00001af0      2280           ld_s r1,[r0,0x0x8]
            0x00001af2      03a3           st_s r0,[r3,0x0xc]
            0x00001af4      22a3           st_s r1,[r3,0x0x8]
            0x00001af6      2283           ld_s r1,[r3,0x0x8]
            0x00001af8      63a1           st_s r3,[r1,0x0xc]
            0x00001afa      e1056000       b.d 3552 ;0x000028d8
            0x00001afe      62a0           st_s r3,[r0,0x0x8]
            0x00001b00      f1c0           push_s blink
            0x00001b02      5a0d4000       bl 3416 ;0x00002858
            0x00001b06      0a2100a0       mov.f r17,r0
            0x00001b0a      a9f2           beq_s 338 ;0x00001c5a
            0x00001b0c      871713f6       ld.as r19,[pcl,-121] ;0x00001a93
            0x00001b10      fa0f6000       bl.d 4088 ;0x00002b08
            0x00001b14      1c130020       ld r0,[r19,28]
            0x00001b18      fc1100a0       ld r0,[r17,-4]
            0x00001b1c      d770fefefefe   cmp_s 0x0xfefefefe,0
            0x00001b22      ca204204       mov.ne r0,r17
            0x00001b26      04f4           bne_s 8 ;0x00001b2c
            0x00001b28      42210021       sub r0,r17,0x0x4
            0x00001b2c      10130120       ld r1,[r19,16]
            0x00001b30      02205000       sub r16,r0,r1
            0x00001b34      0c130020       ld r0,[r19,12]
            0x00001b38      81e0           cmp_s r0,0x0x1
            0x00001b3a      08012c00       ble.d 264 ;0x00001c40
            0x00001b3e      40200121       add r1,r16,0x0x4
            0x00001b42      00100020       ld r0,[r16]
            0x00001b46      a0b8           bclr_s r0,r0,0x0
            0x00001b48      0161           ld_s r1,[r1,r0]
            0x00001b4a      0d090000       breq.nt r1,r0,12 ;0x00001b54
            0x00001b4e      a8d0           ld_s r0,[pcl,0x0x2a0] ;0x00001dec
            0x00001b50      0a71           .short 0x710a
            0x00001b52      80fe           bl_s -1536 ;0x00001550
            0x00001b54      04100120       ld r1,[r16,4]
            0x00001b58      0ae9           breq_s r1,0x0,20 ;0x00001b6c
            0x00001b5a      02204020       sub r0,r16,r1
            0x00001b5e      0080           ld_s r0,[r0,0x0]
            0x00001b60      a0b8           bclr_s r0,r0,0x0
            0x00001b62      0d090000       breq.nt r1,r0,12 ;0x00001b6c
            0x00001b66      a3d0           ld_s r0,[pcl,0x0x28c] ;0x00001df0
            0x00001b68      0a71           .short 0x710a
            0x00001b6a      7afe           bl_s -1560 ;0x00001550
            0x00001b6c      0c130020       ld r0,[r19,12]
            0x00001b70      d108d200       brlt.nt r0,0x0x3,208 ;0x00001c40
            0x00001b74      5fff           bl_s -644 ;0x000018f0
            0x00001b76      00100220       ld r2,[r16]
            0x00001b7a      10130020       ld r0,[r19,16]
            0x00001b7e      5070           cmp_s r0,r2
            0x00001b80      c2220500       sub.c r2,r2,r0
            0x00001b84      ca21850f00..   mov.c r1,0x0xbb
            0x00001b8c      d4086500       blc.d 2260 ;0x00002460
            0x00001b90      ca204504       mov.c r0,r17
            0x00001b94      4a220020       mov r18,0x0
            0x00001b98      08130e20       ld r14,[r19,8]
            0x00001b9c      02f0           b_s 4 ;0x00001ba0
            0x00001b9e      c186           ld_s r14,[r14,0x0x4]
            0x00001ba0      930e1010       breq.nt r14,0x0,146 ;0x00001c32
            0x00001ba4      0186           ld_s r0,[r14,0x0x4]
            0x00001ba6      0be8           breq_s r0,0x0,22 ;0x00001bba
            0x00001ba8      0080           ld_s r0,[r0,0x0]
            0x00001baa      130e0010       breq.nt r14,r0,18 ;0x00001bba
            0x00001bae      6d1700f6       ld.as r0,[pcl,-147] ;0x00001b19
            0x00001bb2      00d9           mov_s r1,0x0
            0x00001bb4      720e2000       bl.d 1648 ;0x00002224
            0x00001bb8      c972           .short 0x72c9
            0x00001bba      40260d14       add r13,r14,0x0x10
            0x00001bbe      0386           ld_s r0,[r14,0x0xc]
            0x00001bc0      15086503       brhs.d.nt r0,r13,20 ;0x00001bd4
            0x00001bc4      40251411       add r20,r13,0x0x4
            0x00001bc8      671700f6       ld.as r0,[pcl,-153] ;0x00001b2f
            0x00001bcc      a971           .short 0x71a9
            0x00001bce      5a0e2000       bl.d 1624 ;0x00002224
            0x00001bd2      c972           .short 0x72c9
            0x00001bd4      1275           cmp_s r13,r16
            0x00001bd6      ca226120       mov.eq r18,0x0x1
            0x00001bda      e085           ld_s r15,[r13,0x0]
            0x00001bdc      0386           ld_s r0,[r14,0x0xc]
            0x00001bde      a0bf           bclr_s r15,r15,0x0
            0x00001be0      b967           add_s r1,r15,r13
            0x00001be2      13084500       brhs.nt r0,r1,18 ;0x00001bf2
            0x00001be6      611700f6       ld.as r0,[pcl,-159] ;0x00001b45
            0x00001bea      a971           .short 0x71a9
            0x00001bec      3a0e2000       bl.d 1592 ;0x00002224
            0x00001bf0      c972           .short 0x72c9
            0x00001bf2      53277e90       bmsk.f 0x0,r15,0x0x1
            0x00001bf6      08f2           beq_s 16 ;0x00001c04
            0x00001bf8      5d1700f6       ld.as r0,[pcl,-163] ;0x00001b55
            0x00001bfc      a971           .short 0x71a9
            0x00001bfe      2a0e2000       bl.d 1576 ;0x00002224
            0x00001c02      c972           .short 0x72c9
            0x00001c04      0c130020       ld r0,[r19,12]
            0x00001c08      1f085200       brlt.nt r0,0x0x1,30 ;0x00001c26
            0x00001c0c      0def           breq_s r15,0x0,26 ;0x00001c26
            0x00001c0e      0085           ld_s r0,[r13,0x0]
            0x00001c10      a0b8           bclr_s r0,r0,0x0
            0x00001c12      30240020       ld r0,[r20,r0]
            0x00001c16      130f0010       breq.nt r15,r0,18 ;0x00001c26
            0x00001c1a      4a1700f6       ld.as r0,[pcl,-182] ;0x00001b62
            0x00001c1e      a971           .short 0x71a9
            0x00001c20      060e2000       bl.d 1540 ;0x00002224
            0x00001c24      c972           .short 0x72c9
            0x00001c26      0085           ld_s r0,[r13,0x0]
            0x00001c28      50200080       bclr.f r0,r0,0x0
            0x00001c2c      b9f3           beq_s -142 ;0x00001b9e
            0x00001c2e      1d65           add_s r13,r13,r0
            0x00001c30      c7f1           b_s -114 ;0x00001bbe
            0x00001c32      110a1120       brne.nt r18,0x0,16 ;0x00001c40
            0x00001c36      70d0           ld_s r0,[pcl,0x0x1c0] ;0x00001df4
            0x00001c38      5e096000       bl.d 2396 ;0x00002594
            0x00001c3c      2a71           .short 0x712a
            0x00001c3e      0ff0           b_s 30 ;0x00001c5a
            0x00001c40      00100020       ld r0,[r16]
            0x00001c44      0b081e00       bbit0.t r0,0x0,10 ;0x00001c4e
            0x00001c48      6cd0           ld_s r0,[pcl,0x0x1b0] ;0x00001df8
            0x00001c4a      2a71           .short 0x712a
            0x00001c4c      41fe           bl_s -1788 ;0x00001550
            0x00001c4e      0a70           .short 0x700a
            0x00001c50      89ff           bl_s -476 ;0x00001a74
            0x00001c52      be0e6000       bl.d 3772 ;0x00002b0c
            0x00001c56      1c130020       ld r0,[r19,28]
            0x00001c5a      59044000       b 3160 ;0x000028b0
            0x00001c5e      e078           nop_s
            0x00001c60      f1c0           push_s blink
            0x00001c62      e1c5           push_s r13
            0x00001c64      5608a000       bl.d 4180 ;0x00002cb8
            0x00001c68      00d8           mov_s r0,0x0
            0x00001c6a      30170df6       ld.as r13,[pcl,-208] ;0x00001b98
            0x00001c6e      2085           ld_s r1,[r13,0x0]
            0x00001c70      1961           add_s r1,r1,r0
            0x00001c72      3c78           asr_s r0,r1
            0x00001c74      3eb8           lsr_s r0,r0,0x0x1e
            0x00001c76      1961           add_s r1,r1,r0
            0x00001c78      c1b9           bmsk_s r1,r1,0x0x1
            0x00001c7a      02210180       sub.f r1,r1,r0
            0x00001c7e      06f2           beq_s 12 ;0x00001c88
            0x00001c80      3a08a000       bl.d 4152 ;0x00002cb8
            0x00001c84      4e210001       rsub r0,r1,0x0x4
            0x00001c88      fa08a000       bl.d 4344 ;0x00002d80
            0x00001c8c      5cd0           ld_s r0,[pcl,0x0x170] ;0x00001dfc
            0x00001c8e      13e8           breq_s r0,0x0,38 ;0x00001cb2
            0x00001c90      2088           ldb_s r1,[r0,0x0]
            0x00001c92      4221010c       sub r1,r1,0x0x30
            0x00001c96      89e1           cmp_s r1,0x0x9
            0x00001c98      ca216d00       mov.hi r1,0x0x1
            0x00001c9c      23a5           st_s r1,[r13,0x0xc]
            0x00001c9e      2188           ldb_s r1,[r0,0x0x1]
            0x00001ca0      09e9           breq_s r1,0x0,18 ;0x00001cb2
            0x00001ca2      00d8           mov_s r0,0x0
            0x00001ca4      e2e1           cmp_s r1,0x0x62
            0x00001ca6      42dc           mov_s r12,0x0x42
            0x00001ca8      cc210283       cmp.ne r1,r12
            0x00001cac      ca206100       mov.eq r0,0x0x1
            0x00001cb0      04ad           stb_s r0,[r13,0x0x4]
            0x00001cb2      0385           ld_s r0,[r13,0x0xc]
            0x00001cb4      80e0           cmp_s r0,0x0
            0x00001cb6      08d8           mov_s r0,0x0x8
            0x00001cb8      ca202c01       mov.le r0,0x0x4
            0x00001cbc      04a5           st_s r0,[r13,0x0x10]
            0x00001cbe      1b78           asl_s r0,r0
            0x00001cc0      20e0           add_s r0,r0,0x0x20
            0x00001cc2      05a5           st_s r0,[r13,0x0x14]
            0x00001cc4      4a244073       mov lp_count,0x0xd
            0x00001cc8      00da           mov_s r2,0x0
            0x00001cca      a8200003       lp 24 ;0x00001ce0
            0x00001cce      cf71           mov_s 0x0,1
            0x00001cd0      80007036       b.d 444544 ;0x0006e550
            0x00001cd4      146a           asl_s r0,r2,0x0x4
            0x00001cd6      1b61           add_s r3,r1,r0
            0x00001cd8      3860           add_s r0,r0,r1
            0x00001cda      62a0           st_s r3,[r0,0x0x8]
            0x00001cdc      63a0           st_s r3,[r0,0x0xc]
            0x00001cde      01e2           add_s r2,r2,0x0x1
            0x00001ce0      09044000       b 3080 ;0x000028e8
            0x00001ce4      f1c0           push_s blink
            0x00001ce6      820b4000       bl 2944 ;0x00002864
            0x00001cea      0875           .short 0x7508
            0x00001cec      ce0f6000       bl.d 4044 ;0x00002cb8
            0x00001cf0      1a71           .short 0x711a
            0x00001cf2      0a260090       mov.f r14,r0
            0x00001cf6      ca21822fff..   mov.ne r17,0x0xffffffff
            0x00001cfe      cc264294       cmp.ne r14,r17
            0x00001d02      13f2           beq_s 38 ;0x00001d26
            0x00001d04      53267e90       bmsk.f 0x0,r14,0x0x1
            0x00001d08      12f2           beq_s 36 ;0x00001d2c
            0x00001d0a      dc79           asr_s r1,r14
            0x00001d0c      3eb9           lsr_s r1,r1,0x0x1e
            0x00001d0e      d861           add_s r0,r1,r14
            0x00001d10      c1b8           bmsk_s r0,r0,0x0x1
            0x00001d12      2278           sub_s r0,r0,r1
            0x00001d14      4e200f01       rsub r15,r0,0x0x4
            0x00001d18      a20f6000       bl.d 4000 ;0x00002cb8
            0x00001d1c      e970           .short 0x70e9
            0x00001d1e      80e0           cmp_s r0,0x0
            0x00001d20      cc204284       cmp.ne r0,r17
            0x00001d24      03f4           bne_s 6 ;0x00001d2a
            0x00001d26      00d8           mov_s r0,0x0
            0x00001d28      47f0           b_s 142 ;0x00001db6
            0x00001d2a      fe66           add_s r14,r14,r15
            0x00001d2c      35d7           ld_s r15,[pcl,0x0xd4] ;0x00001e00
            0x00001d2e      0387           ld_s r0,[r15,0x0xc]
            0x00001d30      81e0           cmp_s r0,0x0x1
            0x00001d32      ca208903       mov.gt r0,r14
            0x00001d36      ca21890f00..   mov.gt r1,0x0xcc
            0x00001d3e      240f2900       blgt.d 1828 ;0x00002460
            0x00001d42      ca224903       mov.gt r2,r13
            0x00001d46      2287           ld_s r1,[r15,0x0x8]
            0x00001d48      17e9           breq_s r1,0x0,46 ;0x00001d76
            0x00001d4a      0281           ld_s r0,[r1,0x0x8]
            0x00001d4c      3860           add_s r0,r0,r1
            0x00001d4e      2b0e0110       brne.nt r14,r0,42 ;0x00001d76
            0x00001d52      0381           ld_s r0,[r1,0x0xc]
            0x00001d54      4080           ld_s r2,[r0,0x0]
            0x00001d56      ba62           add_s r2,r2,r13
            0x00001d58      40a0           st_s r2,[r0,0x0]
            0x00001d5a      a0ba           bclr_s r2,r2,0x0
            0x00001d5c      1a62           add_s r2,r2,r0
            0x00001d5e      6281           ld_s r3,[r1,0x0x8]
            0x00001d60      43a1           st_s r2,[r1,0x0xc]
            0x00001d62      bb63           add_s r3,r3,r13
            0x00001d64      62a1           st_s r3,[r1,0x0x8]
            0x00001d66      00d9           mov_s r1,0x0
            0x00001d68      20a2           st_s r1,[r2,0x0]
            0x00001d6a      2387           ld_s r1,[r15,0x0xc]
            0x00001d6c      47095200       brlt.nt r1,0x0x1,70 ;0x00001db2
            0x00001d70      2080           ld_s r1,[r0,0x0]
            0x00001d72      21a2           st_s r1,[r2,0x0x4]
            0x00001d74      1ff0           b_s 62 ;0x00001db2
            0x00001d76      0f081020       breq.nt r16,0x0,14 ;0x00001d82
            0x00001d7a      960f6000       bl.d 3988 ;0x00002d0c
            0x00001d7e      c970           .short 0x70c9
            0x00001d80      d3f1           b_s -90 ;0x00001d26
            0x00001d82      21a6           st_s r1,[r14,0x0x4]
            0x00001d84      02e9           breq_s r1,0x0,4 ;0x00001d88
            0x00001d86      c0a1           st_s r14,[r1,0x0]
            0x00001d88      a2a6           st_s r13,[r14,0x0x8]
            0x00001d8a      42250d18       sub r13,r13,0x0x20
            0x00001d8e      50250210       bclr r2,r13,0x0
            0x00001d92      40260014       add r0,r14,0x0x10
            0x00001d96      00d9           mov_s r1,0x0
            0x00001d98      1a62           add_s r2,r2,r0
            0x00001d9a      20a6           st_s r1,[r14,0x0]
            0x00001d9c      a4a6           st_s r13,[r14,0x0x10]
            0x00001d9e      25a6           st_s r1,[r14,0x0x14]
            0x00001da0      43a6           st_s r2,[r14,0x0xc]
            0x00001da2      20a2           st_s r1,[r2,0x0]
            0x00001da4      2387           ld_s r1,[r15,0x0xc]
            0x00001da6      0f097200       brlt.d.nt r1,0x0x1,14 ;0x00001db2
            0x00001daa      c2a7           st_s r14,[r15,0x0x8]
            0x00001dac      4486           ld_s r2,[r14,0x0x10]
            0x00001dae      2386           ld_s r1,[r14,0x0xc]
            0x00001db0      41a1           st_s r2,[r1,0x0x4]
            0x00001db2      31ff           bl_s -828 ;0x00001a74
            0x00001db4      01d8           mov_s r0,0x0x1
            0x00001db6      15034000       b 2836 ;0x000028c8
            0x00001dba      e078           nop_s
            0x00001dbc      f1c0           push_s blink
            0x00001dbe      e1c5           push_s r13
            0x00001dc0      fc100180       ld r1,[r0,-4]
            0x00001dc4      d771fefefefe   cmp_s 0x0xfefefefe,1
            0x00001dca      c2202101       sub.eq r0,r0,0x0x4
            0x00001dce      0dd1           ld_s r1,[pcl,0x0x34] ;0x00001e00
            0x00001dd0      2481           ld_s r1,[r1,0x0x10]
            0x00001dd2      02204d00       sub r13,r0,r1
            0x00001dd6      a970           .short 0x70a9
            0x00001dd8      9cfe           bl_s -1424 ;0x00001848
            0x00001dda      86e8           brne_s r0,0x0,12 ;0x00001de4
            0x00001ddc      0ad0           ld_s r0,[pcl,0x0x28] ;0x00001e04
            0x00001dde      ba0f2000       bl.d 1976 ;0x00002594
            0x00001de2      a971           .short 0x71a9
            0x00001de4      05034000       b 2820 ;0x000028e8
            0x00001de8      f0b2           sth_s r15,[r2,0x0x20]
            0x00001dea      02001ab3       b -630782 ;0xfffffffffff67dea
            0x00001dee      02002bb3       blt.d -630782 ;0xfffffffffff67dee
            0x00001df2      02003db3       b.d -630782 ;0xfffffffffff67df2
            0x00001df6      020064b3       bn.d -628734 ;0xfffffffffff685f6
            0x00001dfa      020079b3       b.d -628734 ;0xfffffffffff685fa
            0x00001dfe      0200e809       bnv.d 79874 ;0x000155fe
            0x00001e02      800086b3       bnc -626560 ;0xfffffffffff68e80
            0x00001e06      0200f1c0       b.d -518142 ;0xfffffffffff83606
            0x00001e0a      5e0a4000       bl 2652 ;0x00002864
            0x00001e0e      1a70           .short 0x701a
            0x00001e10      f0170ef0       ld r14,[pcl,-16] ;0x00001e00
            0x00001e14      f60c6000       bl.d 3316 ;0x00002b08
            0x00001e18      0786           ld_s r0,[r14,0x0x1c]
            0x00001e1a      24168010       ldb r0,[r14,36]
            0x00001e1e      06e8           breq_s r0,0x0,12 ;0x00001e28
            0x00001e20      90ff           bl_s -448 ;0x00001c60
            0x00001e22      00d8           mov_s r0,0x0
            0x00001e24      241e0210       stb r0,[r14,36]
            0x00001e28      0386           ld_s r0,[r14,0x0xc]
            0x00001e2a      83e0           cmp_s r0,0x0x3
            0x00001e2c      c40acaff       blge -1340 ;0x000018f0
            0x00001e30      4020c020       add r0,r16,0x0x3
            0x00001e34      2486           ld_s r1,[r14,0x0x10]
            0x00001e36      4620c000       bic r0,r0,0x0x3
            0x00001e3a      1961           add_s r1,r1,r0
            0x00001e3c      0086           ld_s r0,[r14,0x0]
            0x00001e3e      10df           mov_s r15,0x0x10
            0x00001e40      3860           add_s r0,r0,r1
            0x00001e42      90e0           cmp_s r0,0x0x10
            0x00001e44      ca270d10       mov.hi r15,r0
            0x00001e48      590f0414       brlo.nt r15,r16,88 ;0x00001ea0
            0x00001e4c      e970           .short 0x70e9
            0x00001e4e      64fe           bl_s -1648 ;0x000017dc
            0x00001e50      0a250090       mov.f r13,r0
            0x00001e54      38f4           bne_s 112 ;0x00001ec4
            0x00001e56      2286           ld_s r1,[r14,0x0x8]
            0x00001e58      4586           ld_s r2,[r14,0x0x14]
            0x00001e5a      1ce9           breq_s r1,0x0,56 ;0x00001e90
            0x00001e5c      0386           ld_s r0,[r14,0x0xc]
            0x00001e5e      35085200       brlt.nt r0,0x0x1,52 ;0x00001e90
            0x00001e62      2381           ld_s r1,[r1,0x0xc]
            0x00001e64      0181           ld_s r0,[r1,0x0x4]
            0x00001e66      0279           sub_s r1,r1,r0
            0x00001e68      14278010       add1 r0,r15,r2
            0x00001e6c      2d08c403       brlo.nt r0,r15,44 ;0x00001e98
            0x00001e70      2081           ld_s r1,[r1,0x0]
            0x00001e72      21091e00       bbit0.t r1,0x0,32 ;0x00001e90
            0x00001e76      a0b9           bclr_s r1,r1,0x0
            0x00001e78      2278           sub_s r0,r0,r1
            0x00001e7a      c7700000ff0f   add_s 0x0,0x0xfff,0
            0x00001e80      2cb8           lsr_s r0,r0,0x0xc
            0x00001e82      0cb8           asl_s r0,r0,0x0xc
            0x00001e84      01d9           mov_s r1,0x0x1
            0x00001e86      98ff           bl_s -416 ;0x00001ce4
            0x00001e88      04e8           breq_s r0,0x0,8 ;0x00001e90
            0x00001e8a      e970           .short 0x70e9
            0x00001e8c      54fe           bl_s -1712 ;0x000017dc
            0x00001e8e      0875           .short 0x7508
            0x00001e90      0586           ld_s r0,[r14,0x0x14]
            0x00001e92      f860           add_s r0,r0,r15
            0x00001e94      1708c503       brhs.nt r0,r15,22 ;0x00001eaa
            0x00001e98      560c6000       bl.d 3156 ;0x00002aec
            0x00001e9c      0cdd           mov_s r13,0x0xc
            0x00001e9e      a0a0           st_s r13,[r0,0x0]
            0x00001ea0      6e0c6000       bl.d 3180 ;0x00002b0c
            0x00001ea4      0786           ld_s r0,[r14,0x0x1c]
            0x00001ea6      00dd           mov_s r13,0x0
            0x00001ea8      6ef0           b_s 220 ;0x00001f84
            0x00001eaa      8ded           brne_s r13,0x0,26 ;0x00001ec2
            0x00001eac      c7700000ff0f   add_s 0x0,0x0xfff,0
            0x00001eb2      2cb8           lsr_s r0,r0,0x0xc
            0x00001eb4      0cb8           asl_s r0,r0,0x0xc
            0x00001eb6      00d9           mov_s r1,0x0
            0x00001eb8      8bff           bl_s -468 ;0x00001ce4
            0x00001eba      05e8           breq_s r0,0x0,10 ;0x00001ec2
            0x00001ebc      e970           .short 0x70e9
            0x00001ebe      48fe           bl_s -1760 ;0x000017dc
            0x00001ec0      0875           .short 0x7508
            0x00001ec2      6ced           breq_s r13,0x0,-40 ;0x00001e98
            0x00001ec4      6085           ld_s r3,[r13,0x0]
            0x00001ec6      a0bb           bclr_s r3,r3,0x0
            0x00001ec8      a970           .short 0x70a9
            0x00001eca      e6fe           bl_s -1128 ;0x00001a60
            0x00001ecc      2486           ld_s r1,[r14,0x0x10]
            0x00001ece      0086           ld_s r0,[r14,0x0]
            0x00001ed0      b961           add_s r1,r1,r13
            0x00001ed2      3860           add_s r0,r0,r1
            0x00001ed4      53204080       bmsk.f r0,r0,0x0x1
            0x00001ed8      4a210020       mov r17,0x0
            0x00001edc      03f2           beq_s 6 ;0x00001ee2
            0x00001ede      4e201101       rsub r17,r0,0x0x4
            0x00001ee2      4386           ld_s r2,[r14,0x0xc]
            0x00001ee4      27e8           breq_s r0,0x0,78 ;0x00001f32
            0x00001ee6      02234304       sub r3,r3,r17
            0x00001eea      2d0a7200       brlt.d.nt r2,0x0x1,44 ;0x00001f14
            0x00001eee      02274f14       sub r15,r15,r17
            0x00001ef2      0185           ld_s r0,[r13,0x0x4]
            0x00001ef4      027d           sub_s r13,r13,r0
            0x00001ef6      2085           ld_s r1,[r13,0x0]
            0x00001ef8      00214004       add r0,r1,r17
            0x00001efc      00a5           st_s r0,[r13,0x0]
            0x00001efe      a0b8           bclr_s r0,r0,0x0
            0x00001f00      1d65           add_s r13,r13,r0
            0x00001f02      046d           add_s r0,r13,0x0x4
            0x00001f04      50230100       bclr r1,r3,0x0
            0x00001f08      60a5           st_s r3,[r13,0x0]
            0x00001f0a      3860           add_s r0,r0,r1
            0x00001f0c      60a0           st_s r3,[r0,0x0]
            0x00001f0e      4a210020       mov r17,0x0
            0x00001f12      11f0           b_s 34 ;0x00001f32
            0x00001f14      41298220       lsr r2,r17,0x0x2
            0x00001f18      00d8           mov_s r0,0x0
            0x00001f1a      80e2           cmp_s r2,0x0
            0x00001f1c      ca248970       mov.gt lp_count,r2
            0x00001f20      e8206902       lpgt 0x0x12 ;0x00001f32
            0x00001f24      cf72           mov_s 0x0,2
            0x00001f26      fefe           bl_s -1032 ;0x00001b1c
            0x00001f28      fefe           bl_s -1032 ;0x00001b20
            0x00001f2a      15210c00       add2 r12,r1,r0
            0x00001f2e      40a4           st_s r2,[r12,0x0]
            0x00001f30      01e0           add_s r0,r0,0x0x1
            0x00001f32      40270014       add r0,r15,0x0x10
            0x00001f36      2708e500       brhs.d.nt r0,r3,38 ;0x00001f5a
            0x00001f3a      2386           ld_s r1,[r14,0x0xc]
            0x00001f3c      e0a5           st_s r15,[r13,0x0]
            0x00001f3e      50270010       bclr r0,r15,0x0
            0x00001f42      b860           add_s r0,r0,r13
            0x00001f44      4468           add_s r2,r0,0x0x4
            0x00001f46      e27b           sub_s r3,r3,r15
            0x00001f48      11097200       brlt.d.nt r1,0x0x1,16 ;0x00001f58
            0x00001f4c      60a0           st_s r3,[r0,0x0]
            0x00001f4e      e1a0           st_s r15,[r0,0x0x4]
            0x00001f50      50230100       bclr r1,r3,0x0
            0x00001f54      3a62           add_s r2,r2,r1
            0x00001f56      60a2           st_s r3,[r2,0x0]
            0x00001f58      c7fe           bl_s -1252 ;0x00001a74
            0x00001f5a      0386           ld_s r0,[r14,0x0xc]
            0x00001f5c      11089200       brlt.nt r0,0x0x2,16 ;0x00001f6c
            0x00001f60      0486           ld_s r0,[r14,0x0x10]
            0x00001f62      aad9           mov_s r1,0x0xaa
            0x00001f64      b860           add_s r0,r0,r13
            0x00001f66      fe0c2000       bl.d 1276 ;0x00002460
            0x00001f6a      0a72           .short 0x720a
            0x00001f6c      a20b6000       bl.d 2976 ;0x00002b0c
            0x00001f70      0786           ld_s r0,[r14,0x0x1c]
            0x00001f72      0486           ld_s r0,[r14,0x0x10]
            0x00001f74      1d65           add_s r13,r13,r0
            0x00001f76      0386           ld_s r0,[r14,0x0xc]
            0x00001f78      2275           add_s r13,r13,r17
            0x00001f7a      82e0           cmp_s r0,0x0x2
            0x00001f7c      400ee9ff       blgt.d -448 ;0x00001dbc
            0x00001f80      ca204903       mov.gt r0,r13
            0x00001f84      45016000       b.d 2372 ;0x000028c8
            0x00001f88      a970           .short 0x70a9
            0x00001f8a      e078           nop_s
            0x00001f8c      f1c0           push_s blink
            0x00001f8e      ca084000       bl 2248 ;0x00002854
            0x00001f92      0a270090       mov.f r15,r0
            0x00001f96      7a71           .short 0x717a
            0x00001f98      06f4           bne_s 12 ;0x00001fa4
            0x00001f9a      6a70           .short 0x706a
            0x00001f9c      9bff           bl_s -404 ;0x00001e08
            0x00001f9e      37022000       b.d 566 ;0x000021d2
            0x00001fa2      0877           .short 0x7708
            0x00001fa4      090b1120       brne.nt r19,0x0,8 ;0x00001fac
            0x00001fa8      d6fe           bl_s -1192 ;0x00001b00
            0x00001faa      08f0           b_s 16 ;0x00001fb8
            0x00001fac      95170ef6       ld.as r14,[pcl,-107] ;0x00001f41
            0x00001fb0      a486           ld_s r13,[r14,0x0x10]
            0x00001fb2      6275           add_s r13,r13,r19
            0x00001fb4      0b0dc514       brhs.nt r13,r19,10 ;0x00001fbe
            0x00001fb8      1b022000       b.d 538 ;0x000021d2
            0x00001fbc      00df           mov_s r15,0x0
            0x00001fbe      4e0b6000       bl.d 2892 ;0x00002b08
            0x00001fc2      0786           ld_s r0,[r14,0x0x1c]
            0x00001fc4      0386           ld_s r0,[r14,0x0xc]
            0x00001fc6      82e0           cmp_s r0,0x0x2
            0x00001fc8      2809c9ff       blgt -1752 ;0x000018f0
            0x00001fcc      03e5           add_s r13,r13,0x0x3
            0x00001fce      4625c010       bic r0,r13,0x0x3
            0x00001fd2      90e0           cmp_s r0,0x0x10
            0x00001fd4      4a240024       mov r20,0x0x10
            0x00001fd8      ca240d20       mov.hi r20,r0
            0x00001fdc      fc170090       ld r0,[r15,-4]
            0x00001fe0      d770fefefefe   cmp_s 0x0xfefefefe,0
            0x00001fe6      ca25c213       mov.ne r13,r15
            0x00001fea      03f4           bne_s 6 ;0x00001fee
            0x00001fec      ac6f           sub_s r13,r15,0x0x4
            0x00001fee      0486           ld_s r0,[r14,0x0x10]
            0x00001ff0      027d           sub_s r13,r13,r0
            0x00001ff2      0386           ld_s r0,[r14,0x0xc]
            0x00001ff4      3108b200       brlt.d.nt r0,0x0x2,48 ;0x00002024
            0x00001ff8      246d           add_s r1,r13,0x0x4
            0x00001ffa      0085           ld_s r0,[r13,0x0]
            0x00001ffc      a0b8           bclr_s r0,r0,0x0
            0x00001ffe      0161           ld_s r1,[r1,r0]
            0x00002000      0d090000       breq.nt r1,r0,12 ;0x0000200c
            0x00002004      7a1700f6       ld.as r0,[pcl,-134] ;0x00001f7e
            0x00002008      a971           .short 0x71a9
            0x0000200a      52fd           bl_s -2744 ;0x00001550
            0x0000200c      2185           ld_s r1,[r13,0x0x4]
            0x0000200e      0ce9           breq_s r1,0x0,24 ;0x00002024
            0x00002010      02254010       sub r0,r13,r1
            0x00002014      0080           ld_s r0,[r0,0x0]
            0x00002016      a0b8           bclr_s r0,r0,0x0
            0x00002018      0d090000       breq.nt r1,r0,12 ;0x00002024
            0x0000201c      751700f6       ld.as r0,[pcl,-139] ;0x00001f91
            0x00002020      a971           .short 0x71a9
            0x00002022      4cfd           bl_s -2768 ;0x00001550
            0x00002024      0085           ld_s r0,[r13,0x0]
            0x00002026      11081e00       bbit0.t r0,0x0,16 ;0x00002034
            0x0000202a      741700f6       ld.as r0,[pcl,-140] ;0x00001f9c
            0x0000202e      e971           .short 0x71e9
            0x00002030      48fd           bl_s -2784 ;0x00001550
            0x00002032      0085           ld_s r0,[r13,0x0]
            0x00002034      4386           ld_s r2,[r14,0x0xc]
            0x00002036      50201000       bclr r16,r0,0x0
            0x0000203a      80e2           cmp_s r2,0x0
            0x0000203c      00d8           mov_s r0,0x0
            0x0000203e      ca220c20       mov.le r18,r0
            0x00002042      cbf6           ble_s 22 ;0x00002056
            0x00002044      0185           ld_s r0,[r13,0x0x4]
            0x00002046      02251210       sub r18,r13,r0
            0x0000204a      00120020       ld r0,[r18]
            0x0000204e      e0b8           btst_s r0,0x0
            0x00002050      a0b8           bclr_s r0,r0,0x0
            0x00002052      ca202100       mov.eq r0,0x0
            0x00002056      ba70           .short 0x70ba
            0x00002058      00205123       add r17,r16,r13
            0x0000205c      00110020       ld r0,[r17]
            0x00002060      40210421       add r4,r17,0x0x4
            0x00002064      e0b8           btst_s r0,0x0
            0x00002066      a0b8           bclr_s r0,r0,0x0
            0x00002068      ca202100       mov.eq r0,0x0
            0x0000206c      0a71           .short 0x710a
            0x0000206e      39092405       brlo.d.nt r1,r20,56 ;0x000020a4
            0x00002072      0270           add_s r0,r0,r16
            0x00002074      02210105       sub r1,r1,r20
            0x00002078      a9091404       brlo.nt r1,0x0x10,168 ;0x00002120
            0x0000207c      0d0a5300       brge.nt r2,0x0x1,12 ;0x00002088
            0x00002080      00110020       ld r0,[r17]
            0x00002084      09081e00       bbit0.t r0,0x0,8 ;0x0000208c
            0x00002088      04194020       st r1,[r17,4]
            0x0000208c      001d0015       st r20,[r13]
            0x00002090      50240020       bclr r0,r20,0x0
            0x00002094      0b0a7200       brlt.d.nt r2,0x0x1,10 ;0x0000209e
            0x00002098      b860           add_s r0,r0,r13
            0x0000209a      04180005       st r20,[r0,4]
            0x0000209e      20a0           st_s r1,[r0,0x0]
            0x000020a0      75fe           bl_s -1580 ;0x00001a74
            0x000020a2      40f0           b_s 128 ;0x00002120
            0x000020a4      85080405       brlo.nt r0,r20,132 ;0x00002128
            0x000020a8      02200305       sub r3,r0,r20
            0x000020ac      3f0b1404       brlo.nt r3,0x0x10,62 ;0x000020ea
            0x000020b0      170a7300       brge.d.nt r2,0x0x1,22 ;0x000020c6
            0x000020b4      001d0015       st r20,[r13]
            0x000020b8      00110020       ld r0,[r17]
            0x000020bc      a0b8           bclr_s r0,r0,0x0
            0x000020be      30210020       ld r0,[r17,r0]
            0x000020c2      11081e00       bbit0.t r0,0x0,16 ;0x000020d0
            0x000020c6      00110020       ld r0,[r17]
            0x000020ca      a0b8           bclr_s r0,r0,0x0
            0x000020cc      8070           add_s r0,r0,r4
            0x000020ce      60a0           st_s r3,[r0,0x0]
            0x000020d0      2a70           .short 0x702a
            0x000020d2      64fe           bl_s -1648 ;0x00001a60
            0x000020d4      0085           ld_s r0,[r13,0x0]
            0x000020d6      2386           ld_s r1,[r14,0x0xc]
            0x000020d8      a0b8           bclr_s r0,r0,0x0
            0x000020da      0d097200       brlt.d.nt r1,0x0x1,12 ;0x000020e4
            0x000020de      b860           add_s r0,r0,r13
            0x000020e0      04180005       st r20,[r0,4]
            0x000020e4      60a0           st_s r3,[r0,0x0]
            0x000020e6      64fe           bl_s -1648 ;0x00001a74
            0x000020e8      12f0           b_s 36 ;0x0000210c
            0x000020ea      170a7300       brge.d.nt r2,0x0x1,22 ;0x000020fe
            0x000020ee      00a5           st_s r0,[r13,0x0]
            0x000020f0      00110120       ld r1,[r17]
            0x000020f4      a0b9           bclr_s r1,r1,0x0
            0x000020f6      30214120       ld r1,[r17,r1]
            0x000020fa      11091e00       bbit0.t r1,0x0,16 ;0x00002108
            0x000020fe      00110120       ld r1,[r17]
            0x00002102      a0b9           bclr_s r1,r1,0x0
            0x00002104      8071           add_s r1,r1,r4
            0x00002106      00a1           st_s r0,[r1,0x0]
            0x00002108      2a70           .short 0x702a
            0x0000210a      56fe           bl_s -1704 ;0x00001a60
            0x0000210c      0386           ld_s r0,[r14,0x0xc]
            0x0000210e      15089200       brlt.nt r0,0x0x2,20 ;0x00002120
            0x00002112      00250014       add r0,r13,r16
            0x00002116      02240224       sub r2,r20,r16
            0x0000211a      4a0b2000       bl.d 840 ;0x00002460
            0x0000211e      aad9           mov_s r1,0x0xaa
            0x00002120      ee096000       bl.d 2540 ;0x00002b0c
            0x00002124      0786           ld_s r0,[r14,0x0x1c]
            0x00002126      57f0           b_s 174 ;0x000021d2
            0x00002128      510a5200       brlt.nt r2,0x0x1,80 ;0x00002178
            0x0000212c      2086           ld_s r1,[r14,0x0]
            0x0000212e      a6e9           brne_s r1,0x0,76 ;0x00002178
            0x00002130      a270           add_s r0,r0,r21
            0x00002132      49080405       brlo.nt r0,r20,72 ;0x00002178
            0x00002136      4a70           .short 0x704a
            0x00002138      4afe           bl_s -1752 ;0x00001a60
            0x0000213a      04120f20       ld r15,[r18,4]
            0x0000213e      4a70           .short 0x704a
            0x00002140      a971           .short 0x71a9
            0x00002142      720a2000       bl.d 624 ;0x000023b0
            0x00002146      0a72           .short 0x720a
            0x00002148      0a70           .short 0x700a
            0x0000214a      001a0020       st r0,[r18]
            0x0000214e      041ac023       st r15,[r18,4]
            0x00002152      50200020       bclr r0,r16,0x0
            0x00002156      4270           add_s r0,r0,r18
            0x00002158      00184005       st r21,[r0]
            0x0000215c      04180004       st r16,[r0,4]
            0x00002160      04194025       st r21,[r17,4]
            0x00002164      44fe           bl_s -1776 ;0x00001a74
            0x00002166      aa096000       bl.d 2472 ;0x00002b0c
            0x0000216a      0786           ld_s r0,[r14,0x0x1c]
            0x0000216c      0486           ld_s r0,[r14,0x0x10]
            0x0000216e      4270           add_s r0,r0,r18
            0x00002170      6a71           .short 0x716a
            0x00002172      87ff           bl_s -484 ;0x00001f8c
            0x00002174      0877           .short 0x7708
            0x00002176      2ff0           b_s 94 ;0x000021d2
            0x00002178      0286           ld_s r0,[r14,0x0x8]
            0x0000217a      1be8           breq_s r0,0x0,54 ;0x000021ae
            0x0000217c      330a5200       brlt.nt r2,0x0x1,50 ;0x000021ae
            0x00002180      0380           ld_s r0,[r0,0x0xc]
            0x00002182      2180           ld_s r1,[r0,0x0x4]
            0x00002184      2278           sub_s r0,r0,r1
            0x00002186      2b0d0110       brne.nt r13,r0,42 ;0x000021ae
            0x0000218a      0586           ld_s r0,[r14,0x0x14]
            0x0000218c      02240124       sub r1,r20,r16
            0x00002190      3860           add_s r0,r0,r1
            0x00002192      c7700000ff0f   add_s 0x0,0x0xfff,0
            0x00002198      2cb8           lsr_s r0,r0,0x0xc
            0x0000219a      0cb8           asl_s r0,r0,0x0xc
            0x0000219c      01d9           mov_s r1,0x0x1
            0x0000219e      d2fe           bl_s -1208 ;0x00001ce4
            0x000021a0      2786           ld_s r1,[r14,0x0x1c]
            0x000021a2      07e8           breq_s r0,0x0,14 ;0x000021ae
            0x000021a4      6a096000       bl.d 2408 ;0x00002b0c
            0x000021a8      2870           .short 0x7028
            0x000021aa      e970           .short 0x70e9
            0x000021ac      e2f1           b_s -60 ;0x00002170
            0x000021ae      62096000       bl.d 2400 ;0x00002b0c
            0x000021b2      0786           ld_s r0,[r14,0x0x1c]
            0x000021b4      6a70           .short 0x706a
            0x000021b6      15ff           bl_s -940 ;0x00001e08
            0x000021b8      0a250090       mov.f r13,r0
            0x000021bc      0af2           beq_s 20 ;0x000021d0
            0x000021be      0486           ld_s r0,[r14,0x0x10]
            0x000021c0      02200220       sub r2,r16,r0
            0x000021c4      a970           .short 0x70a9
            0x000021c6      ee092000       bl.d 492 ;0x000023b0
            0x000021ca      e971           .short 0x71e9
            0x000021cc      e970           .short 0x70e9
            0x000021ce      4dfe           bl_s -1740 ;0x00001b00
            0x000021d0      a977           .short 0x77a9
            0x000021d2      d9062000       b.d 1752 ;0x000028a8
            0x000021d6      e970           .short 0x70e9
            0x000021d8      f1c0           push_s blink
            0x000021da      960e0000       bl 1684 ;0x0000286c
            0x000021de      0a250090       mov.f r13,r0
            0x000021e2      00df           mov_s r15,0x0
            0x000021e4      18f2           beq_s 48 ;0x00002214
            0x000021e6      07170ef6       ld.as r14,[pcl,-249] ;0x000020eb
            0x000021ea      22096000       bl.d 2336 ;0x00002b08
            0x000021ee      0786           ld_s r0,[r14,0x0x1c]
            0x000021f0      fc150090       ld r0,[r13,-4]
            0x000021f4      d770fefefefe   cmp_s 0x0xfefefefe,0
            0x000021fa      ca204203       mov.ne r0,r13
            0x000021fe      03f4           bne_s 6 ;0x00002202
            0x00002200      0c6d           sub_s r0,r13,0x0x4
            0x00002202      2486           ld_s r1,[r14,0x0x10]
            0x00002204      2278           sub_s r0,r0,r1
            0x00002206      e080           ld_s r15,[r0,0x0]
            0x00002208      027d           sub_s r13,r13,r0
            0x0000220a      a0bf           bclr_s r15,r15,0x0
            0x0000220c      a27f           sub_s r15,r15,r13
            0x0000220e      02096000       bl.d 2304 ;0x00002b0c
            0x00002212      0786           ld_s r0,[r14,0x0x1c]
            0x00002214      c5062000       b.d 1732 ;0x000028d8
            0x00002218      e970           .short 0x70e9
            0x0000221a      e078           nop_s
            0x0000221c      e5006000       b.d 2276 ;0x00002b00
            0x00002220      18d0           ld_s r0,[pcl,0x0x60] ;0x00002280
            0x00002222      e078           nop_s
            0x00002224      18d5           ld_s r13,[pcl,0x0x60] ;0x00002284
            0x00002226      9870           .short 0x7098
            0x00002228      188d           ldb_s r0,[r13,0x0x18]
            0x0000222a      1a71           .short 0x711a
            0x0000222c      17d6           ld_s r14,[pcl,0x0x5c] ;0x00002288
            0x0000222e      4877           .short 0x7748
            0x00002230      06e8           breq_s r0,0x0,12 ;0x0000223c
            0x00002232      660b2000       bl.d 868 ;0x00002594
            0x00002236      c970           .short 0x70c9
            0x00002238      7d040000       b 1148 ;0x000026b4
            0x0000223c      01d8           mov_s r0,0x0x1
            0x0000223e      18ad           stb_s r0,[r13,0x0x18]
            0x00002240      4026401c       add r0,r14,0x0x31
            0x00002244      520b2000       bl.d 848 ;0x00002594
            0x00002248      8871           .short 0x7188
            0x0000224a      0a70           .short 0x700a
            0x0000224c      edfc           bl_s -3148 ;0x00001600
            0x0000224e      4a0b2000       bl.d 840 ;0x00002594
            0x00002252      5526c014       add2 r0,r14,0x0x13
            0x00002256      e970           .short 0x70e9
            0x00002258      fcfc           bl_s -3088 ;0x00001648
            0x0000225a      3e0b2000       bl.d 828 ;0x00002594
            0x0000225e      0cd0           ld_s r0,[pcl,0x0x30] ;0x0000228c
            0x00002260      0385           ld_s r0,[r13,0x0xc]
            0x00002262      15081201       brlt.nt r0,0x0x4,20 ;0x00002274
            0x00002266      02d8           mov_s r0,0x0x2
            0x00002268      03a5           st_s r0,[r13,0x0xc]
            0x0000226a      c970           .short 0x70c9
            0x0000226c      2a0b2000       bl.d 808 ;0x00002594
            0x00002270      59e0           add_s r0,r0,0x0x59
            0x00002272      32fd           bl_s -2872 ;0x00001738
            0x00002274      9a086000       bl.d 2200 ;0x00002b0c
            0x00002278      0785           ld_s r0,[r13,0x0x1c]
            0x0000227a      3d040000       b 1084 ;0x000026b4
            0x0000227e      e078           nop_s
            0x00002280      040a8000       bl 4612 ;0x00003484
            0x00002284      e8098000       bl 4584 ;0x0000346c
            0x00002288      b6b3           sth_s r13,[r3,0x0x2c]
            0x0000228a      0200e8b1       bnv.d -641022 ;0xfffffffffff65a8a
            0x0000228e      0200e1c5       beq.d -477182 ;0xfffffffffff8da8e
            0x00002292      1ed5           ld_s r13,[pcl,0x0x78] ;0x00002308
            0x00002294      0085           ld_s r0,[r13,0x0]
            0x00002296      1ed4           ld_s r12,[pcl,0x0x78] ;0x0000230c
            0x00002298      1079           exth_s r1,r0
            0x0000229a      4a240078       mov lp_count,0x0x20
            0x0000229e      00da           mov_s r2,0x0
            0x000022a0      a820c001       lp 14 ;0x000022ae
            0x000022a4      2f240293       lsr.f r12,r12
            0x000022a8      c0224500       add.c r2,r2,r1
            0x000022ac      3b79           asl_s r1,r1
            0x000022ae      30b8           lsr_s r0,r0,0x0x10
            0x000022b0      17d4           ld_s r12,[pcl,0x0x5c] ;0x0000230c
            0x000022b2      4a240078       mov lp_count,0x0x20
            0x000022b6      00d9           mov_s r1,0x0
            0x000022b8      a820c001       lp 14 ;0x000022c6
            0x000022bc      2f240293       lsr.f r12,r12
            0x000022c0      c0210500       add.c r1,r1,r0
            0x000022c4      1b78           asl_s r0,r0
            0x000022c6      53218003       bmsk r0,r1,0x0xe
            0x000022ca      10b8           asl_s r0,r0,0x0x10
            0x000022cc      1a62           add_s r2,r2,r0
            0x000022ce      11d0           ld_s r0,[pcl,0x0x44] ;0x00002310
            0x000022d0      53228307       bmsk r3,r2,0x0x1e
            0x000022d4      01e3           add_s r3,r3,0x0x1
            0x000022d6      1072           cmp_s r2,r0
            0x000022d8      ca22cd00       mov.hi r2,r3
            0x000022dc      2fb9           lsr_s r1,r1,0x0xf
            0x000022de      3a62           add_s r2,r2,r1
            0x000022e0      53228107       bmsk r1,r2,0x0x1e
            0x000022e4      01e1           add_s r1,r1,0x0x1
            0x000022e6      1072           cmp_s r2,r0
            0x000022e8      ca204d00       mov.hi r0,r1
            0x000022ec      ca208e00       mov.ls r0,r2
            0x000022f0      00a5           st_s r0,[r13,0x0]
            0x000022f2      e07f           j_s.d [blink]
            0x000022f4      c1c5           pop_s r13
            0x000022f6      e078           nop_s
            0x000022f8      80e0           cmp_s r0,0x0
            0x000022fa      deb8           bmsk_s r0,r0,0x0x1e
            0x000022fc      ca206100       mov.eq r0,0x0x1
            0x00002300      02d1           ld_s r1,[pcl,0x0x8] ;0x00002308
            0x00002302      e07f           j_s.d [blink]
            0x00002304      00a1           st_s r0,[r1,0x0]
            0x00002306      e078           nop_s
            0x00002308      100a8000       bl 4624 ;0x00003518
            0x0000230c      a741           ld_s r1,[ilink,0x0]
            0x0000230e      0000ffff       b.d -2048 ;0x00001b0c
            0x00002312      ff7f           brk_s
            0x00002314      0a210000       mov r1,r0
            0x00002318      4b21c080       tst r1,0x0x3
            0x0000231c      40002100       beq.d 64 ;0x0000235c
            0x00002320      4a200000       mov r0,0x0
            0x00002324      15091e00       bbit0.t r1,0x0,20 ;0x00002338
            0x00002328      0111c204       ldb.ab.x r2,[r1,1]
            0x0000232c      4c220080       cmp r2,0x0
            0x00002330      e020c107       jeq [blink]
            0x00002334      40204000       add r0,r0,0x0x1
            0x00002338      25095e00       bbit0.t r1,0x0x1,36 ;0x0000235c
            0x0000233c      0111c204       ldb.ab.x r2,[r1,1]
            0x00002340      0111c304       ldb.ab.x r3,[r1,1]
            0x00002344      4c220080       cmp r2,0x0
            0x00002348      e020c107       jeq [blink]
            0x0000234c      40204000       add r0,r0,0x0x1
            0x00002350      4c230080       cmp r3,0x0
            0x00002354      e020c107       jeq [blink]
            0x00002358      40204000       add r0,r0,0x0x1
            0x0000235c      04110204       ld.ab r2,[r1,4]
            0x00002360      0a23801f01..   mov r11,0x0x1010101
            0x00002368      2f24c312       ror r12,r11
            0x0000236c      0222c302       sub r3,r2,r11
            0x00002370      06248a10       bic r10,r12,r2
            0x00002374      0422ca90       and.f r10,r10,r3
            0x00002378      10000200       bne 16 ;0x00002388
            0x0000237c      04110204       ld.ab r2,[r1,4]
            0x00002380      ed07efff       b.d -20 ;0x0000236c
            0x00002384      40200001       add r0,r0,0x0x4
            0x00002388      190adf11       bbit1.t r10,0x0x7,24 ;0x000023a0
            0x0000238c      40204000       add r0,r0,0x0x1
            0x00002390      110adf13       bbit1.t r10,0x0xf,16 ;0x000023a0
            0x00002394      40204000       add r0,r0,0x0x1
            0x00002398      090adf15       bbit1.t r10,0x0x17,8 ;0x000023a0
            0x0000239c      40204000       add r0,r0,0x0x1
            0x000023a0      2020c007       j [blink]
            0x000023a4      e078           nop_s
            0x000023a6      e078           nop_s
            0x000023a8      e078           nop_s
            0x000023aa      e078           nop_s
            0x000023ac      e078           nop_s
            0x000023ae      e078           nop_s
            0x000023b0      0a2480f0       mov.f lp_count,r2
            0x000023b4      05204400       or r4,r0,r1
            0x000023b8      e020c107       jeq [blink]
            0x000023bc      4424fe80       and.f 0x0,r4,0x0x3
            0x000023c0      412ac400       lsr r4,r2,0x0x3
            0x000023c4      84000200       bne 132 ;0x00002448
            0x000023c8      2f2402f1       lsr.f lp_count,r4
            0x000023cc      42210101       sub r1,r1,0x0x4
            0x000023d0      42200301       sub r3,r0,0x0x4
            0x000023d4      e820a204       lpne 0x0x24 ;0x000023f8
            0x000023d8      04110402       ld.aw r4,[r1,4]
            0x000023dc      04110502       ld.aw r5,[r1,4]
            0x000023e0      04110602       ld.aw r6,[r1,4]
            0x000023e4      04110702       ld.aw r7,[r1,4]
            0x000023e8      041b0801       st.aw r4,[r3,4]
            0x000023ec      041b4801       st.aw r5,[r3,4]
            0x000023f0      041b8801       st.aw r6,[r3,4]
            0x000023f4      041bc801       st.aw r7,[r3,4]
            0x000023f8      2c002500       bc.d 44 ;0x00002424
            0x000023fc      44223e81       and.f 0x0,r2,0x0x4
            0x00002400      3c002200       bne.d 60 ;0x0000243c
            0x00002404      4422fc80       and.f lp_count,r2,0x0x3
            0x00002408      4021c100       add r1,r1,0x0x3
            0x0000240c      e020c107       jeq [blink]
            0x00002410      4023c300       add r3,r3,0x0x3
            0x00002414      a8208001       lp 12 ;0x00002420
            0x00002418      01118402       ldb.aw r4,[r1,1]
            0x0000241c      011b0a01       stb.aw r4,[r3,1]
            0x00002420      2020c007       j [blink]
            0x00002424      04110402       ld.aw r4,[r1,4]
            0x00002428      04110502       ld.aw r5,[r1,4]
            0x0000242c      041b0801       st.aw r4,[r3,4]
            0x00002430      d407e1ff       beq.d -44 ;0x00002404
            0x00002434      041b4801       st.aw r5,[r3,4]
            0x00002438      4422fc80       and.f lp_count,r2,0x0x3
            0x0000243c      04110402       ld.aw r4,[r1,4]
            0x00002440      c907efff       b.d -56 ;0x00002408
            0x00002444      041b0801       st.aw r4,[r3,4]
            0x00002448      42214100       sub r1,r1,0x0x1
            0x0000244c      42204300       sub r3,r0,0x0x1
            0x00002450      a8208001       lp 12 ;0x0000245c
            0x00002454      01118402       ldb.aw r4,[r1,1]
            0x00002458      011b0a01       stb.aw r4,[r3,1]
            0x0000245c      2020c007       j [blink]
            0x00002460      e1c5           push_s r13
            0x00002462      2f79           extb_s r1,r1
            0x00002464      40290302       asl r3,r1,0x0x8
            0x00002468      257b           or_s r3,r3,r1
            0x0000246a      402b0104       asl r1,r3,0x0x10
            0x0000246e      6579           or_s r1,r1,r3
            0x00002470      250a3402       brlo.d.nt r2,0x0x8,36 ;0x00002494
            0x00002474      0873           .short 0x7308
            0x00002476      05f0           b_s 10 ;0x0000247e
            0x00002478      011b5200       stb.ab r1,[r3,1]
            0x0000247c      61ba           sub_s r2,r2,0x0x1
            0x0000247e      53237e80       bmsk.f 0x0,r3,0x0x1
            0x00002482      fcf5           bne_s -8 ;0x00002478
            0x00002484      412a8d00       lsr r13,r2,0x0x2
            0x00002488      c1ba           bmsk_s r2,r2,0x0x1
            0x0000248a      42254d90       sub.f r13,r13,0x0x1
            0x0000248e      041b5000       st.ab r1,[r3,4]
            0x00002492      fdf5           bne_s -6 ;0x0000248a
            0x00002494      80e2           cmp_s r2,0x0
            0x00002496      ca248270       mov.ne lp_count,r2
            0x0000249a      e078           nop_s
            0x0000249c      e8206201       lpne 0x0xa ;0x000024a6
            0x000024a0      011b5200       stb.ab r1,[r3,1]
            0x000024a4      e078           nop_s
            0x000024a6      e07f           j_s.d [blink]
            0x000024a8      c1c5           pop_s r13
            0x000024aa      e078           nop_s
            0x000024ac      f1c0           push_s blink
            0x000024ae      c60b0000       bl 964 ;0x00002870
            0x000024b2      0876           .short 0x7608
            0x000024b4      2875           .short 0x7528
            0x000024b6      2870           .short 0x7028
            0x000024b8      07d2           ld_s r2,[pcl,0x0x1c] ;0x000024d4
            0x000024ba      1e0b2000       bl.d 796 ;0x000027d4
            0x000024be      00d9           mov_s r1,0x0
            0x000024c0      a278           sub_s r0,r0,r13
            0x000024c2      4168           add_s r2,r0,0x0x1
            0x000024c4      c970           .short 0x70c9
            0x000024c6      ee0eefff       bl.d -276 ;0x000023b0
            0x000024ca      a971           .short 0x71a9
            0x000024cc      15042000       b.d 1044 ;0x000028e0
            0x000024d0      c970           .short 0x70c9
            0x000024d2      e078           nop_s
            0x000024d4      ffff           bl_s -4 ;0x000024d0
            0x000024d6      ff7f           brk_s
            0x000024d8      f1c0           push_s blink
            0x000024da      fc1c0ab0       stb.aw r0,[sp,-4]
            0x000024de      8b71           .short 0x718b
            0x000024e0      01d8           mov_s r0,0x0x1
            0x000024e2      be086000       bl.d 2236 ;0x00002d9c
            0x000024e6      0872           .short 0x7208
            0x000024e8      a1c0           add_s sp,sp,0x0x4
            0x000024ea      d1c0           pop_s blink
            0x000024ec      e07e           j_s [blink]
            0x000024ee      e078           nop_s
            0x000024f0      f1c0           push_s blink
            0x000024f2      e1c5           push_s r13
            0x000024f4      0a250090       mov.f r13,r0
            0x000024f8      06f4           bne_s 12 ;0x00002504
            0x000024fa      2dd0           ld_s r0,[pcl,0x0xb4] ;0x000025ac
            0x000024fc      fdff           bl_s -12 ;0x000024f0
            0x000024fe      06f0           b_s 12 ;0x00002508
            0x00002500      01e5           add_s r13,r13,0x0x1
            0x00002502      f6ff           bl_s -40 ;0x000024d8
            0x00002504      008d           ldb_s r0,[r13,0x0]
            0x00002506      fee8           brne_s r0,0x0,-4 ;0x00002500
            0x00002508      e1030000       b 992 ;0x000028e8
            0x0000250c      f1c0           push_s blink
            0x0000250e      660b0000       bl 868 ;0x00002870
            0x00002512      a5c1           sub_s sp,sp,0x0x14
            0x00002514      0875           .short 0x7508
            0x00002516      2876           .short 0x7628
            0x00002518      05f0           b_s 10 ;0x00002522
            0x0000251a      04e6           add_s r14,r14,0x0x4
            0x0000251c      fc160090       ld r0,[r14,-4]
            0x00002520      f4ff           bl_s -48 ;0x000024f0
            0x00002522      01158014       ldb.ab r0,[r13,1]
            0x00002526      69081000       breq.nt r0,0x0,104 ;0x0000258c
            0x0000252a      41085109       brne.nt r0,0x0x25,64 ;0x00002568
            0x0000252e      01158014       ldb.ab r0,[r13,1]
            0x00002532      d8e0           cmp_s r0,0x0x58
            0x00002534      23f2           beq_s 70 ;0x0000257a
            0x00002536      0872           .short 0x7208
            0x00002538      8222c108       sub r2,r2,99
            0x0000253c      2d0a9505       brhs.nt r2,0x0x16,44 ;0x00002568
            0x00002540      40270173       add r1,pcl,0x0xc ;0x0000254c
            0x00002544      33218200       ldb.x r2,[r1,r2]
            0x00002548      5479           add1_s r1,r1,r2
            0x0000254a      0079           j_s [r1]
            0x0000254c      0b100e0e       ld.di.as r14,[r0,11]
            0x00002550      0e0e0e0e       bl -4078068 ;0xffffffffffc1eb5c
            0x00002554      0e160e0e       ld.di.as r14,[r6,14]
            0x00002558      0e0e0e0e       bl -4078068 ;0xffffffffffc1eb64
            0x0000255c      e70e100e       breq.nt r6,0x0x38,230 ;0x00002642
            0x00002560      0e1704e6       ld.as r4,[r55,-242]
            0x00002564      fc160090       ld r0,[r14,-4]
            0x00002568      dcff           bl_s -144 ;0x000024d8
            0x0000256a      ddf1           b_s -70 ;0x00002522
            0x0000256c      04e6           add_s r14,r14,0x0x4
            0x0000256e      8b71           .short 0x718b
            0x00002570      fc160090       ld r0,[r14,-4]
            0x00002574      0ada           mov_s r2,0x0xa
            0x00002576      08f0           b_s 16 ;0x00002584
            0x00002578      01e5           add_s r13,r13,0x0x1
            0x0000257a      04e6           add_s r14,r14,0x0x4
            0x0000257c      8b71           .short 0x718b
            0x0000257e      fc160090       ld r0,[r14,-4]
            0x00002582      10da           mov_s r2,0x0x10
            0x00002584      1a090000       bl 280 ;0x0000269c
            0x00002588      daff           bl_s -152 ;0x000024f0
            0x0000258a      cdf1           b_s -102 ;0x00002522
            0x0000258c      00d8           mov_s r0,0x0
            0x0000258e      55032000       b.d 852 ;0x000028e0
            0x00002592      a5c0           add_s sp,sp,0x0x14
            0x00002594      f1c0           push_s blink
            0x00002596      9e0b0000       bl 924 ;0x00002930
            0x0000259a      06d2           ld_s r2,[pcl,0x0x18] ;0x000025b0
            0x0000259c      4082           ld_s r2,[r2,0x0]
            0x0000259e      41c0           st_s r0,[sp,0x0x4]
            0x000025a0      607a           jl_s.d [r2]
            0x000025a2      82c1           add_s r1,sp,0x0x8
            0x000025a4      d1c0           pop_s blink
            0x000025a6      e07f           j_s.d [blink]
            0x000025a8      a8c0           add_s sp,sp,0x0x20
            0x000025aa      e078           nop_s
            0x000025ac      34b4           sth_s r1,[r12,0x0x28]
            0x000025ae      0200140a       b 81922 ;0x000165ae
            0x000025b2      80006a20       bge.d 264320 ;0x00042e30
            0x000025b6      0001aa21       bge.d 274688 ;0x000456b4
            0x000025ba      c10d3070       breq.d.nt reserved,0x0,192 ;0x00002678
            0x000025be      c421828f00..   and.f.ne r1,r1,0x0xff
            0x000025c6      e07c           jeq_s [blink]
            0x000025c8      00d8           mov_s r0,0x0
            0x000025ca      6b200004       sr r0,[ic_ivic]
            0x000025ce      4a260070       nop
            0x000025d2      4a260070       nop
            0x000025d6      4a260070       nop
            0x000025da      e07f           j_s.d [blink]
            0x000025dc      4a260070       nop
            0x000025e0      aa21810c       lr r1,[d_cache_build]
            0x000025e4      8421c38f       and.f r1,r1,255
            0x000025e8      e07c           jeq_s [blink]
            0x000025ea      aa210102       lr r1,[dc_ctrl]
            0x000025ee      c2d8           mov_s r0,0x0xc2
            0x000025f0      ab200102       sr r0,[dc_ctrl]
            0x000025f4      01d8           mov_s r0,0x0x1
            0x000025f6      ab20c101       sr r0,[dc_ivdc]
            0x000025fa      aa200102       lr r0,[dc_ctrl]
            0x000025fe      84200480       and.f r0,r0,256
            0x00002602      fdf5           bne_s -6 ;0x000025fa
            0x00002604      e07f           j_s.d [blink]
            0x00002606      ab210102       sr r1,[dc_ctrl]
            0x0000260a      e078           nop_s
            0x0000260c      f1c0           push_s blink
            0x0000260e      e1c5           push_s r13
            0x00002610      09d5           ld_s r13,[pcl,0x0x24] ;0x00002634
            0x00002612      0085           ld_s r0,[r13,0x0]
            0x00002614      80e0           cmp_s r0,0x0
            0x00002616      e2200200       jlne [r0]
            0x0000261a      00d8           mov_s r0,0x0
            0x0000261c      00a5           st_s r0,[r13,0x0]
            0x0000261e      07d0           ld_s r0,[pcl,0x0x1c] ;0x00002638
            0x00002620      0080           ld_s r0,[r0,0x0]
            0x00002622      80e0           cmp_s r0,0x0
            0x00002624      e2200200       jlne [r0]
            0x00002628      c1020000       b 704 ;0x000028e8
            0x0000262c      f0f1           b_s -32 ;0x0000260c
            0x0000262e      e078           nop_s
            0x00002630      e07e           j_s [blink]
            0x00002632      e078           nop_s
            0x00002634      180a8000       bl 4632 ;0x0000384c
            0x00002638      3c0a8000       bl 4668 ;0x00003874
            0x0000263c      f1c0           push_s blink
            0x0000263e      220a0000       bl 544 ;0x0000285c
            0x00002642      0a2240a1       mov.f r18,r5
            0x00002646      3a71           .short 0x713a
            0x00002648      7a72           .short 0x727a
            0x0000264a      1a73           .short 0x731a
            0x0000264c      8877           .short 0x7788
            0x0000264e      cc272290       cmp.ne r15,0x0
            0x00002652      ca272110       mov.eq r15,0x0
            0x00002656      ca22c123       mov.eq r18,r15
            0x0000265a      00de           mov_s r14,0x0
            0x0000265c      2a75           .short 0x752a
            0x0000265e      f60a2000       bl.d 756 ;0x00002950
            0x00002662      6a71           .short 0x716a
            0x00002664      89e1           cmp_s r1,0x0x9
            0x00002666      c0210904       add.gt r1,r1,r16
            0x0000266a      c221a902       sub.gt r1,r1,0x0xa
            0x0000266e      c5212c0c       or.le r1,r1,0x0x30
            0x00002672      01e6           add_s r14,r14,0x0x1
            0x00002674      011d5210       stb.ab r1,[r13,1]
            0x00002678      0b0e8114       brne.nt r14,r18,10 ;0x00002682
            0x0000267c      00de           mov_s r14,0x0
            0x0000267e      011dd213       stb.ab r15,[r13,1]
            0x00002682      efe8           brne_s r0,0x0,-34 ;0x0000265e
            0x00002684      ff158090       ldb r0,[r13,-1]
            0x00002688      1077           cmp_s r15,r0
            0x0000268a      c2256110       sub.eq r13,r13,0x0x1
            0x0000268e      00d8           mov_s r0,0x0
            0x00002690      00ad           stb_s r0,[r13,0x0]
            0x00002692      62092000       bl.d 352 ;0x000027f0
            0x00002696      2a70           .short 0x702a
            0x00002698      21020000       b 544 ;0x000028b8
            0x0000269c      61db           mov_s r3,0x0x61
            0x0000269e      4a240000       mov r4,0x0
            0x000026a2      0a250001       mov r5,r4
            0x000026a6      ccf1           b_s -104 ;0x0000263c
            0x000026a8      61db           mov_s r3,0x0x61
            0x000026aa      4a240000       mov r4,0x0
            0x000026ae      0a250001       mov r5,r4
            0x000026b2      c6f1           b_s -116 ;0x0000263c
            0x000026b4      f1c0           push_s blink
            0x000026b6      fa082000       bl.d 248 ;0x000027ac
            0x000026ba      06d8           mov_s r0,0x0x6
            0x000026bc      c1056fff       b.d -4672 ;0x0000147c
            0x000026c0      01d8           mov_s r0,0x0x1
            0x000026c2      e078           nop_s
            0x000026c4      f1c0           push_s blink
            0x000026c6      0d083308       brge.d.nt r0,0x0x20,12 ;0x000026d0
            0x000026ca      e1c5           push_s r13
            0x000026cc      13081300       brge.nt r0,0x0,18 ;0x000026de
            0x000026d0      1e0c2000       bl.d 1052 ;0x00002aec
            0x000026d4      16dd           mov_s r13,0x0x16
            0x000026d6      a0a0           st_s r13,[r0,0x0]
            0x000026d8      8a20ff0f       mov r0,-1
            0x000026dc      05f0           b_s 10 ;0x000026e6
            0x000026de      3cd2           ld_s r2,[pcl,0x0xf0] ;0x000027cc
            0x000026e0      157a           add2_s r2,r2,r0
            0x000026e2      0082           ld_s r0,[r2,0x0]
            0x000026e4      20a2           st_s r1,[r2,0x0]
            0x000026e6      05020000       b 516 ;0x000028e8
            0x000026ea      e078           nop_s
            0x000026ec      f1c0           push_s blink
            0x000026ee      39d2           ld_s r2,[pcl,0x0xe4] ;0x000027d0
            0x000026f0      00d8           mov_s r0,0x0
            0x000026f2      02a2           st_s r0,[r2,0x0x8]
            0x000026f4      03a2           st_s r0,[r2,0x0xc]
            0x000026f6      2782           ld_s r1,[r2,0x0x1c]
            0x000026f8      01d8           mov_s r0,0x0x1
            0x000026fa      04a2           st_s r0,[r2,0x0x10]
            0x000026fc      05e9           breq_s r1,0x0,10 ;0x00002706
            0x000026fe      2a0e0000       bl 1576 ;0x00002d24
            0x00002702      d1c0           pop_s blink
            0x00002704      e07e           j_s [blink]
            0x00002706      79056fff       b.d -4744 ;0x0000147c
            0x0000270a      07a2           st_s r0,[r2,0x0x1c]
            0x0000270c      f1c0           push_s blink
            0x0000270e      e1c5           push_s r13
            0x00002710      30d5           ld_s r13,[pcl,0x0xc0] ;0x000027d0
            0x00002712      0685           ld_s r0,[r13,0x0x18]
            0x00002714      80e0           cmp_s r0,0x0
            0x00002716      d80fc1ff       bleq -40 ;0x000026ec
            0x0000271a      2dd1           ld_s r1,[pcl,0x0xb4] ;0x000027cc
            0x0000271c      00da           mov_s r2,0x0
            0x0000271e      0085           ld_s r0,[r13,0x0]
            0x00002720      1579           add2_s r1,r1,r0
            0x00002722      40a1           st_s r2,[r1,0x0]
            0x00002724      2685           ld_s r1,[r13,0x0x18]
            0x00002726      42a5           st_s r2,[r13,0x0x8]
            0x00002728      6079           jl_s.d [r1]
            0x0000272a      43a5           st_s r2,[r13,0x0xc]
            0x0000272c      bd010000       b 444 ;0x000028e8
            0x00002730      f1c0           push_s blink
            0x00002732      36090000       bl 308 ;0x00002864
            0x00002736      0877           .short 0x7708
            0x00002738      2875           .short 0x7528
            0x0000273a      1a72           .short 0x721a
            0x0000273c      15083208       brlt.d.nt r0,0x0x20,20 ;0x00002750
            0x00002740      3a73           .short 0x733a
            0x00002742      ae0b2000       bl.d 940 ;0x00002aec
            0x00002746      16dd           mov_s r13,0x0x16
            0x00002748      a0a0           st_s r13,[r0,0x0]
            0x0000274a      8a25ff1f       mov r13,-1
            0x0000274e      2df0           b_s 90 ;0x000027a6
            0x00002750      20d6           ld_s r14,[pcl,0x0x80] ;0x000027d0
            0x00002752      0386           ld_s r0,[r14,0x0xc]
            0x00002754      80e0           cmp_s r0,0x0
            0x00002756      b80fc2ff       blne -72 ;0x0000270c
            0x0000275a      1dd2           ld_s r2,[pcl,0x0x74] ;0x000027cc
            0x0000275c      e0a6           st_s r15,[r14,0x0]
            0x0000275e      f57a           add2_s r2,r2,r15
            0x00002760      2082           ld_s r1,[r2,0x0]
            0x00002762      a1a6           st_s r13,[r14,0x0x4]
            0x00002764      26a6           st_s r1,[r14,0x0x18]
            0x00002766      141e4014       st r17,[r14,20]
            0x0000276a      4a210020       mov r17,0x0
            0x0000276e      39095000       breq.nt r1,0x0x1,56 ;0x000027a4
            0x00002772      91e9           brne_s r1,0x0,34 ;0x00002792
            0x00002774      80e5           cmp_s r13,0x0
            0x00002776      cc2022a0       cmp.ne r16,0x0
            0x0000277a      17f4           bne_s 46 ;0x000027a6
            0x0000277c      85e7           cmp_s r15,0x0x5
            0x0000277e      cc272292       cmp.ne r15,0x0x8
            0x00002782      13f2           beq_s 38 ;0x000027a6
            0x00002784      0286           ld_s r0,[r14,0x0x8]
            0x00002786      80e0           cmp_s r0,0x0
            0x00002788      640fc1ff       bleq -156 ;0x000026ec
            0x0000278c      01d8           mov_s r0,0x0x1
            0x0000278e      03a6           st_s r0,[r14,0x0xc]
            0x00002790      0bf0           b_s 22 ;0x000027a6
            0x00002792      0286           ld_s r0,[r14,0x0x8]
            0x00002794      86e8           brne_s r0,0x0,12 ;0x000027a0
            0x00002796      001a4004       st r17,[r2]
            0x0000279a      6079           jl_s.d [r1]
            0x0000279c      e970           .short 0x70e9
            0x0000279e      04f0           b_s 8 ;0x000027a4
            0x000027a0      01d8           mov_s r0,0x0x1
            0x000027a2      03a6           st_s r0,[r14,0x0xc]
            0x000027a4      2a75           .short 0x752a
            0x000027a6      25012000       b.d 292 ;0x000028c8
            0x000027aa      a970           .short 0x70a9
            0x000027ac      f1c0           push_s blink
            0x000027ae      e1c5           push_s r13
            0x000027b0      8a25ff1f       mov r13,-1
            0x000027b4      8a21ff0f       mov r1,-1
            0x000027b8      00da           mov_s r2,0x0
            0x000027ba      4873           .short 0x7348
            0x000027bc      ddff           bl_s -140 ;0x00002730
            0x000027be      b170           cmp_s r0,r13
            0x000027c0      01d8           mov_s r0,0x0x1
            0x000027c2      c078           sub_s.ne r0,r0,r0
            0x000027c4      25012000       b.d 292 ;0x000028e8
            0x000027c8      1378           neg_s r0,r0
            0x000027ca      e078           nop_s
            0x000027cc      40378000       .word 0x37400080
            0x000027d0      1c0a8000       bl 4636 ;0x000039ec
            0x000027d4      2f79           extb_s r1,r1
            0x000027d6      80e2           cmp_s r2,0x0
            0x000027d8      ca248270       mov.ne lp_count,r2
            0x000027dc      e078           nop_s
            0x000027de      e820e201       lpne 0x0xe ;0x000027ea
            0x000027e2      6088           ldb_s r3,[r0,0x0]
            0x000027e4      0909c000       breq.nt r1,r3,8 ;0x000027ec
            0x000027e8      01e0           add_s r0,r0,0x0x1
            0x000027ea      00d8           mov_s r0,0x0
            0x000027ec      e07e           j_s [blink]
            0x000027ee      e078           nop_s
            0x000027f0      f1c0           push_s blink
            0x000027f2      e1c5           push_s r13
            0x000027f4      220befff       bl.d -1248 ;0x00002314
            0x000027f8      0875           .short 0x7508
            0x000027fa      21089200       brlt.nt r0,0x0x2,32 ;0x00002818
            0x000027fe      b860           add_s r0,r0,r13
            0x00002800      61b8           sub_s r0,r0,0x0x1
            0x00002802      190d0510       brhs.nt r13,r0,24 ;0x00002818
            0x00002806      a972           .short 0x72a9
            0x00002808      2088           ldb_s r1,[r0,0x0]
            0x0000280a      608a           ldb_s r3,[r2,0x0]
            0x0000280c      011a5200       stb.ab r1,[r2,1]
            0x00002810      ff18d280       stb.ab r3,[r0,-1]
            0x00002814      f50a0480       brlo.nt r2,r0,-12 ;0x00002808
            0x00002818      d1002000       b.d 208 ;0x000028e8
            0x0000281c      a970           .short 0x70a9
            0x0000281e      e078           nop_s
            0x00002820      e1c4           push_s r12
            0x00002822      cf74           mov_s 0x0,4
            0x00002824      80000000       b 128 ;0x000028a4
            0x00002828      150c0317       brge.nt r12,sp,20 ;0x0000283c
            0x0000282c      cf74           mov_s 0x0,4
            0x0000282e      80000004       b 32896 ;0x0000a8ac
            0x00002832      0d0c0217       brlt.nt r12,sp,12 ;0x0000283c
            0x00002836      c1c4           pop_s r12
            0x00002838      2020c007       j [blink]
            0x0000283c      ff7f           brk_s
            0x0000283e      e078           nop_s
            0x00002840      fc1c88b6       st.aw gp,[sp,-4]
            0x00002844      fc1c48b6       st.aw r25,[sp,-4]
            0x00002848      fc1c08b6       st.aw r24,[sp,-4]
            0x0000284c      fc1cc8b5       st.aw r23,[sp,-4]
            0x00002850      fc1c88b5       st.aw r22,[sp,-4]
            0x00002854      fc1c48b5       st.aw r21,[sp,-4]
            0x00002858      fc1c08b5       st.aw r20,[sp,-4]
            0x0000285c      fc1cc8b4       st.aw r19,[sp,-4]
            0x00002860      fc1c88b4       st.aw r18,[sp,-4]
            0x00002864      fc1c48b4       st.aw r17,[sp,-4]
            0x00002868      fc1c08b4       st.aw r16,[sp,-4]
            0x0000286c      fc1cc8b3       st.aw r15,[sp,-4]
            0x00002870      fc1c88b3       st.aw r14,[sp,-4]
            0x00002874      e07f           j_s.d [blink]
            0x00002876      fc1c48b3       st.aw r13,[sp,-4]
            0x0000287a      e078           nop_s
            0x0000287c      e07e           j_s [blink]
            0x0000287e      e078           nop_s
            0x00002880      04dc           mov_s r12,0x0x4
            0x00002882      38dd           mov_s r13,0x0x38
            0x00002884      38f0           b_s 112 ;0x000028f4
            0x00002886      e078           nop_s
            0x00002888      04dc           mov_s r12,0x0x4
            0x0000288a      34dd           mov_s r13,0x0x34
            0x0000288c      36f0           b_s 108 ;0x000028f8
            0x0000288e      e078           nop_s
            0x00002890      04dc           mov_s r12,0x0x4
            0x00002892      30dd           mov_s r13,0x0x30
            0x00002894      34f0           b_s 104 ;0x000028fc
            0x00002896      e078           nop_s
            0x00002898      04dc           mov_s r12,0x0x4
            0x0000289a      2cdd           mov_s r13,0x0x2c
            0x0000289c      32f0           b_s 100 ;0x00002900
            0x0000289e      e078           nop_s
            0x000028a0      04dc           mov_s r12,0x0x4
            0x000028a2      28dd           mov_s r13,0x0x28
            0x000028a4      30f0           b_s 96 ;0x00002904
            0x000028a6      e078           nop_s
            0x000028a8      04dc           mov_s r12,0x0x4
            0x000028aa      24dd           mov_s r13,0x0x24
            0x000028ac      2ef0           b_s 92 ;0x00002908
            0x000028ae      e078           nop_s
            0x000028b0      04dc           mov_s r12,0x0x4
            0x000028b2      20dd           mov_s r13,0x0x20
            0x000028b4      2cf0           b_s 88 ;0x0000290c
            0x000028b6      e078           nop_s
            0x000028b8      04dc           mov_s r12,0x0x4
            0x000028ba      1cdd           mov_s r13,0x0x1c
            0x000028bc      2af0           b_s 84 ;0x00002910
            0x000028be      e078           nop_s
            0x000028c0      04dc           mov_s r12,0x0x4
            0x000028c2      18dd           mov_s r13,0x0x18
            0x000028c4      28f0           b_s 80 ;0x00002914
            0x000028c6      e078           nop_s
            0x000028c8      04dc           mov_s r12,0x0x4
            0x000028ca      14dd           mov_s r13,0x0x14
            0x000028cc      26f0           b_s 76 ;0x00002918
            0x000028ce      e078           nop_s
            0x000028d0      04dc           mov_s r12,0x0x4
            0x000028d2      10dd           mov_s r13,0x0x10
            0x000028d4      24f0           b_s 72 ;0x0000291c
            0x000028d6      e078           nop_s
            0x000028d8      04dc           mov_s r12,0x0x4
            0x000028da      0cdd           mov_s r13,0x0xc
            0x000028dc      22f0           b_s 68 ;0x00002920
            0x000028de      e078           nop_s
            0x000028e0      04dc           mov_s r12,0x0x4
            0x000028e2      08dd           mov_s r13,0x0x8
            0x000028e4      1ff0           b_s 62 ;0x00002922
            0x000028e6      e078           nop_s
            0x000028e8      04dc           mov_s r12,0x0x4
            0x000028ea      04dd           mov_s r13,0x0x4
            0x000028ec      1cf0           b_s 56 ;0x00002924
            0x000028ee      e078           nop_s
            0x000028f0      04dc           mov_s r12,0x0x4
            0x000028f2      1cf0           b_s 56 ;0x00002928
            0x000028f4      34141a30       ld gp,[sp,52]
            0x000028f8      30141930       ld r25,[sp,48]
            0x000028fc      2c141830       ld r24,[sp,44]
            0x00002900      28141730       ld r23,[sp,40]
            0x00002904      24141630       ld r22,[sp,36]
            0x00002908      20141530       ld r21,[sp,32]
            0x0000290c      1c141430       ld r20,[sp,28]
            0x00002910      18141330       ld r19,[sp,24]
            0x00002914      14141230       ld r18,[sp,20]
            0x00002918      10141130       ld r17,[sp,16]
            0x0000291c      0c141030       ld r16,[sp,12]
            0x00002920      02c7           ld_s r15,[sp,0x0x8]
            0x00002922      01c6           ld_s r14,[sp,0x0x4]
            0x00002924      b0244d33       ld.ab r13,[sp,r13]
            0x00002928      b0241f33       ld.ab blink,[sp,r12]
            0x0000292c      e07e           j_s [blink]
            0x0000292e      e078           nop_s
            0x00002930      fc1c88b1       st.aw r6,[sp,-4]
            0x00002934      fc1c48b1       st.aw r5,[sp,-4]
            0x00002938      fc1c08b1       st.aw r4,[sp,-4]
            0x0000293c      e1c3           push_s r3
            0x0000293e      e1c2           push_s r2
            0x00002940      e1c1           push_s r1
            0x00002942      e1c0           push_s r0
            0x00002944      07c0           ld_s r0,[sp,0x0x1c]
            0x00002946      1c1cc031       st r7,[sp,28]
            0x0000294a      e1c0           push_s r0
            0x0000294c      e07f           j_s.d [blink]
            0x0000294e      01c0           ld_s r0,[sp,0x0x4]
            0x00002950      0a224080       mov.f r2,r1
            0x00002954      4a210000       mov r1,0x0
            0x00002958      28000200       bne 40 ;0x00002980
            0x0000295c      13010000       b 274 ;0x00002a6e
            0x00002960      0a224080       mov.f r2,r1
            0x00002964      4a210000       mov r1,0x0
            0x00002968      08000200       bne 8 ;0x00002970
            0x0000296c      f1000000       b 240 ;0x00002a5c
            0x00002970      a4002400       bn.d 164 ;0x00002a14
            0x00002974      2f2600f0       asl.f 0x0,r0
            0x00002978      4a260070       nop
            0x0000297c      90000500       bc 144 ;0x00002a0c
            0x00002980      4220fe83       sub.f 0x0,r0,0x0xf
            0x00002984      4a264000       mov r6,0x0x1
            0x00002988      5c000d00       bhi 92 ;0x000029e4
            0x0000298c      4220fe81       sub.f 0x0,r0,0x0x7
            0x00002990      4a240071       mov lp_count,0x0x4
            0x00002994      24000d00       bhi 36 ;0x000029b8
            0x00002998      4220fe80       sub.f 0x0,r0,0x0x3
            0x0000299c      4a24c070       mov lp_count,0x0x3
            0x000029a0      1c000d00       bhi 28 ;0x000029bc
            0x000029a4      42207e80       sub.f 0x0,r0,0x0x1
            0x000029a8      4a248070       mov lp_count,0x0x2
            0x000029ac      14000d00       bhi 20 ;0x000029c0
            0x000029b0      15002000       b.d 20 ;0x000029c4
            0x000029b4      4a244070       mov lp_count,0x0x1
            0x000029b8      2f200300       ror r0,r0
            0x000029bc      2f200300       ror r0,r0
            0x000029c0      2f200300       ror r0,r0
            0x000029c4      2f200300       ror r0,r0
            0x000029c8      a8200003       lp 24 ;0x000029e0
            0x000029cc      00200080       add.f r0,r0,r0
            0x000029d0      01214100       adc r1,r1,r1
            0x000029d4      0221be80       sub.f 0x0,r1,r2
            0x000029d8      c0208601       add.nc r0,r0,r6
            0x000029dc      c2218600       sub.nc r1,r1,r2
            0x000029e0      2020c007       j [blink]
            0x000029e4      0a2600f0       mov.f 0x0,r0
            0x000029e8      4a250008       mov r5,0x0x20
            0x000029ec      18000100       beq 24 ;0x00002a04
            0x000029f0      14000400       bn 20 ;0x00002a04
            0x000029f4      2f200080       asl.f r0,r0
            0x000029f8      42254500       sub r5,r5,0x0x1
            0x000029fc      fc07e3ff       bp.d -4 ;0x000029f8
            0x00002a00      c0200380       add.f.p r0,r0,r0
            0x00002a04      c507efff       b.d -60 ;0x000029c8
            0x00002a08      0a244071       mov lp_count,r5
            0x00002a0c      11002000       b.d 16 ;0x00002a1c
            0x00002a10      4a250000       mov r5,0x0
            0x00002a14      4a254000       mov r5,0x0x1
            0x00002a18      0e224200       rsub r2,r2,r1
            0x00002a1c      2f254b01       rlc r5,r5
            0x00002a20      ce204580       rsub.f.c r0,r0,r1
            0x00002a24      4a264000       mov r6,0x0x1
            0x00002a28      4a240078       mov lp_count,0x0x20
            0x00002a2c      a8200003       lp 24 ;0x00002a44
            0x00002a30      00200080       add.f r0,r0,r0
            0x00002a34      01214100       adc r1,r1,r1
            0x00002a38      0221be80       sub.f 0x0,r1,r2
            0x00002a3c      c0208601       add.nc r0,r0,r6
            0x00002a40      c2218600       sub.nc r1,r1,r2
            0x00002a44      4a270000       mov r7,0x0
            0x00002a48      4225fe80       sub.f 0x0,r5,0x0x3
            0x00002a4c      ce20c201       rsub.ne r0,r0,r7
            0x00002a50      44257e80       and.f 0x0,r5,0x0x1
            0x00002a54      ce21c201       rsub.ne r1,r1,r7
            0x00002a58      2020c007       j [blink]
            0x00002a5c      0a2600f0       mov.f 0x0,r0
            0x00002a60      8a20bf0f       mov r0,-2
            0x00002a64      ca206400       mov.n r0,0x0x1
            0x00002a68      e07f           j_s.d [blink]
            0x00002a6a      2f200300       ror r0,r0
            0x00002a6e      e07f           j_s.d [blink]
            0x00002a70      8a20ff0f       mov r0,-1
            0x00002a74      1d002000       b.d 28 ;0x00002a90
            0x00002a78      4a200010       mov r8,0x0
            0x00002a7c      4129c887       lsr.f r8,r1,0x0x1f
            0x00002a80      ce212200       neg.ne r1,r1
            0x00002a84      4228c387       asr.f r3,r0,0x0x1f
            0x00002a88      ce202200       neg.ne r0,r0
            0x00002a8c      0720c810       xor r8,r8,r3
            0x00002a90      0a224080       mov.f r2,r1
            0x00002a94      50002100       beq.d 80 ;0x00002ae4
            0x00002a98      0871           .short 0x7108
            0x00002a9a      00d8           mov_s r0,0x0
            0x00002a9c      6968           sub_s r3,r0,0x0x1
            0x00002a9e      2f2d4180       norm.f r5,r1
            0x00002aa2      ca25c400       mov.n r5,r3
            0x00002aa6      2f2e8180       norm.f r6,r2
            0x00002aaa      ca26c400       mov.n r6,r3
            0x00002aae      02264381       sub.f r3,r6,r5
            0x00002ab2      ca232400       mov.n r3,0x0
            0x00002ab6      40237c00       add lp_count,r3,0x0x1
            0x00002aba      c02ac300       asl.p r2,r2,r3
            0x00002abe      a820c002       lp 22 ;0x00002ad2
            0x00002ac2      02218180       sub.f r1,r1,r2
            0x00002ac6      cf20060f       bset.nc r0,r0,lp_count
            0x00002aca      c0218500       add.c r1,r1,r2
            0x00002ace      2f228200       lsr r2,r2
            0x00002ad2      2f200292       lsr.f r8,r8
            0x00002ad6      2f200300       ror r0,r0
            0x00002ada      ce202500       neg.c r0,r0
            0x00002ade      e07f           j_s.d [blink]
            0x00002ae0      ce212200       neg.ne r1,r1
            0x00002ae4      2020800f00..   j 0x0x2a5c
            0x00002aec      f1c0           push_s blink
            0x00002aee      06090000       bl 260 ;0x00002bf0
            0x00002af2      cf74           mov_s 0x0,4
            0x00002af4      00000000       b 0 ;0x00002af4
            0x00002af8      d1c0           pop_s blink
            0x00002afa      e07f           j_s.d [blink]
            0x00002afc      9860           add_s r0,r0,r12
            0x00002afe      e078           nop_s
            0x00002b00      e07e           j_s [blink]
            0x00002b02      e078           nop_s
            0x00002b04      e07e           j_s [blink]
            0x00002b06      e078           nop_s
            0x00002b08      e07e           j_s [blink]
            0x00002b0a      e078           nop_s
            0x00002b0c      e07e           j_s [blink]
            0x00002b0e      e078           nop_s
            0x00002b10      f1c0           push_s blink
            0x00002b12      5e0dcfff       bl -676 ;0x0000286c
            0x00002b16      31d6           ld_s r14,[pcl,0x0xc4] ;0x00002bd8
            0x00002b18      357e           add2_s r14,r14,r1
            0x00002b1a      6080           ld_s r3,[r0,0x0]
            0x00002b1c      00d9           mov_s r1,0x0
            0x00002b1e      a086           ld_s r13,[r14,0x0]
            0x00002b20      04f0           b_s 8 ;0x00002b28
            0x00002b22      e285           ld_s r15,[r13,0x0x8]
            0x00002b24      a971           .short 0x71a9
            0x00002b26      e975           .short 0x75e9
            0x00002b28      08ed           breq_s r13,0x0,16 ;0x00002b38
            0x00002b2a      e085           ld_s r15,[r13,0x0]
            0x00002b2c      04ea           breq_s r2,0x0,8 ;0x00002b34
            0x00002b2e      f70fc490       brlo.nt r15,r3,-10 ;0x00002b22
            0x00002b32      04f0           b_s 8 ;0x00002b38
            0x00002b34      ef0bc483       brlo.nt r3,r15,-18 ;0x00002b22
            0x00002b38      a2a0           st_s r13,[r0,0x0x8]
            0x00002b3a      84e9           brne_s r1,0x0,8 ;0x00002b40
            0x00002b3c      00a6           st_s r0,[r14,0x0]
            0x00002b3e      03f0           b_s 6 ;0x00002b42
            0x00002b40      02a1           st_s r0,[r1,0x0x8]
            0x00002b42      9905cfff       b -616 ;0x000028d8
            0x00002b46      e078           nop_s
            0x00002b48      f1c0           push_s blink
            0x00002b4a      2888           ldb_s r1,[r0,0x0x8]
            0x00002b4c      00da           mov_s r2,0x0
            0x00002b4e      f1ff           bl_s -60 ;0x00002b10
            0x00002b50      00d8           mov_s r0,0x0
            0x00002b52      d1c0           pop_s blink
            0x00002b54      e07e           j_s [blink]
            0x00002b56      e078           nop_s
            0x00002b58      f1c0           push_s blink
            0x00002b5a      2280           ld_s r1,[r0,0x0x8]
            0x00002b5c      02e1           add_s r1,r1,0x0x2
            0x00002b5e      2f79           extb_s r1,r1
            0x00002b60      01da           mov_s r2,0x0x1
            0x00002b62      ecff           bl_s -80 ;0x00002b10
            0x00002b64      00d8           mov_s r0,0x0
            0x00002b66      f7f1           b_s -18 ;0x00002b52
            0x00002b68      f1c0           push_s blink
            0x00002b6a      e1c5           push_s r13
            0x00002b6c      1bd0           ld_s r0,[pcl,0x0x6c] ;0x00002bd8
            0x00002b6e      a180           ld_s r13,[r0,0x0x4]
            0x00002b70      04f0           b_s 8 ;0x00002b78
            0x00002b72      0185           ld_s r0,[r13,0x0x4]
            0x00002b74      4078           jl_s [r0]
            0x00002b76      a285           ld_s r13,[r13,0x0x8]
            0x00002b78      fded           brne_s r13,0x0,-6 ;0x00002b72
            0x00002b7a      7105cfff       b -656 ;0x000028e8
            0x00002b7e      e078           nop_s
            0x00002b80      f1c0           push_s blink
            0x00002b82      e1c5           push_s r13
            0x00002b84      15d0           ld_s r0,[pcl,0x0x54] ;0x00002bd8
            0x00002b86      a380           ld_s r13,[r0,0x0xc]
            0x00002b88      04f0           b_s 8 ;0x00002b90
            0x00002b8a      0185           ld_s r0,[r13,0x0x4]
            0x00002b8c      4078           jl_s [r0]
            0x00002b8e      a285           ld_s r13,[r13,0x0x8]
            0x00002b90      fded           brne_s r13,0x0,-6 ;0x00002b8a
            0x00002b92      5905cfff       b -680 ;0x000028e8
            0x00002b96      e078           nop_s
            0x00002b98      f1c0           push_s blink
            0x00002b9a      e1c5           push_s r13
            0x00002b9c      10d1           ld_s r1,[pcl,0x0x40] ;0x00002bdc
            0x00002b9e      0081           ld_s r0,[r1,0x0]
            0x00002ba0      8ce8           brne_s r0,0x0,24 ;0x00002bb8
            0x00002ba2      01d8           mov_s r0,0x0x1
            0x00002ba4      00a1           st_s r0,[r1,0x0]
            0x00002ba6      0dd1           ld_s r1,[pcl,0x0x34] ;0x00002bd8
            0x00002ba8      00d8           mov_s r0,0x0
            0x00002baa      a281           ld_s r13,[r1,0x0x8]
            0x00002bac      02a1           st_s r0,[r1,0x0x8]
            0x00002bae      05f0           b_s 10 ;0x00002bb6
            0x00002bb0      0185           ld_s r0,[r13,0x0x4]
            0x00002bb2      4078           jl_s [r0]
            0x00002bb4      a285           ld_s r13,[r13,0x0x8]
            0x00002bb6      feed           brne_s r13,0x0,-4 ;0x00002bb0
            0x00002bb8      3105cfff       b -720 ;0x000028e8
            0x00002bbc      f1c0           push_s blink
            0x00002bbe      e1c5           push_s r13
            0x00002bc0      06d1           ld_s r1,[pcl,0x0x18] ;0x00002bd8
            0x00002bc2      00d8           mov_s r0,0x0
            0x00002bc4      a081           ld_s r13,[r1,0x0]
            0x00002bc6      00a1           st_s r0,[r1,0x0]
            0x00002bc8      04f0           b_s 8 ;0x00002bd0
            0x00002bca      0185           ld_s r0,[r13,0x0x4]
            0x00002bcc      4078           jl_s [r0]
            0x00002bce      a285           ld_s r13,[r13,0x0x8]
            0x00002bd0      fded           brne_s r13,0x0,-6 ;0x00002bca
            0x00002bd2      1905cfff       b -744 ;0x000028e8
            0x00002bd6      e078           nop_s
            0x00002bd8      e80d8000       bl 5608 ;0x000041c0
            0x00002bdc      400a8000       bl 4672 ;0x00003e1c
            0x00002be0      69204000       flag 0x0x1
            0x00002be4      e078           nop_s
            0x00002be6      e078           nop_s
            0x00002be8      e078           nop_s
            0x00002bea      e078           nop_s
            0x00002bec      e078           nop_s
            0x00002bee      faf1           b_s -12 ;0x00002be0
            0x00002bf0      f1c0           push_s blink
            0x00002bf2      e1c5           push_s r13
            0x00002bf4      6a248012       lr r12,[status32]
            0x00002bf8      e1c4           push_s r12
            0x00002bfa      09d1           ld_s r1,[pcl,0x0x24] ;0x00002c1c
            0x00002bfc      0081           ld_s r0,[r1,0x0]
            0x00002bfe      09d5           ld_s r13,[pcl,0x0x24] ;0x00002c20
            0x00002c00      08e8           breq_s r0,0x0,16 ;0x00002c10
            0x00002c02      00d8           mov_s r0,0x0
            0x00002c04      80e5           cmp_s r13,0x0
            0x00002c06      00a1           st_s r0,[r1,0x0]
            0x00002c08      d80fc1ff       bleq -40 ;0x00002be0
            0x00002c0c      5e0fcfff       bl -164 ;0x00002b68
            0x00002c10      a970           .short 0x70a9
            0x00002c12      c1c4           pop_s r12
            0x00002c14      29200003       flag r12
            0x00002c18      d104cfff       b -816 ;0x000028e8
            0x00002c1c      440a8000       bl 4676 ;0x00003e60
            0x00002c20      780e8000       bl 5752 ;0x00004298
            0x00002c24      0a224080       mov.f r2,r1
            0x00002c28      f1c0           push_s blink
            0x00002c2a      e1c5           push_s r13
            0x00002c2c      43f2           beq_s 134 ;0x00002cb2
            0x00002c2e      53207e80       bmsk.f 0x0,r0,0x0x1
            0x00002c32      0af4           bne_s 20 ;0x00002c44
            0x00002c34      53227e80       bmsk.f 0x0,r2,0x0x1
            0x00002c38      06f4           bne_s 12 ;0x00002c44
            0x00002c3a      22ba           lsr_s r2,r2,0x0x2
            0x00002c3c      110a1502       brhs.nt r2,0x0x8,16 ;0x00002c4c
            0x00002c40      00d9           mov_s r1,0x0
            0x00002c42      09f0           b_s 18 ;0x00002c52
            0x00002c44      1e08efff       bl.d -2020 ;0x00002460
            0x00002c48      00d9           mov_s r1,0x0
            0x00002c4a      35f0           b_s 106 ;0x00002cb2
            0x00002c4c      296a           sub_s r1,r2,0x0x1
            0x00002c4e      23b9           lsr_s r1,r1,0x0x3
            0x00002c50      c2ba           bmsk_s r2,r2,0x0x2
            0x00002c52      630a1502       brhs.nt r2,0x0x8,98 ;0x00002cb2
            0x00002c56      40270d74       add r13,pcl,0x0x10 ;0x00002c64
            0x00002c5a      33258210       ldb.x r2,[r13,r2]
            0x00002c5e      547d           add1_s r13,r13,r2
            0x00002c60      207d           j_s.d [r13]
            0x00002c62      00db           mov_s r3,0x0
            0x00002c64      12040608       bnc 66578 ;0x00013076
            0x00002c68      0a0c0e10       bl -4062200 ;0xffffffffffc23070
            0x00002c6c      0872           .short 0x7208
            0x00002c6e      1df0           b_s 58 ;0x00002ca6
            0x00002c70      0872           .short 0x7208
            0x00002c72      19f0           b_s 50 ;0x00002ca2
            0x00002c74      0872           .short 0x7208
            0x00002c76      15f0           b_s 42 ;0x00002c9e
            0x00002c78      0872           .short 0x7208
            0x00002c7a      11f0           b_s 34 ;0x00002c9a
            0x00002c7c      0872           .short 0x7208
            0x00002c7e      0df0           b_s 26 ;0x00002c96
            0x00002c80      0872           .short 0x7208
            0x00002c82      09f0           b_s 18 ;0x00002c92
            0x00002c84      0872           .short 0x7208
            0x00002c86      05f0           b_s 10 ;0x00002c8e
            0x00002c88      0872           .short 0x7208
            0x00002c8a      041ad000       st.ab r3,[r2,4]
            0x00002c8e      041ad000       st.ab r3,[r2,4]
            0x00002c92      041ad000       st.ab r3,[r2,4]
            0x00002c96      041ad000       st.ab r3,[r2,4]
            0x00002c9a      041ad000       st.ab r3,[r2,4]
            0x00002c9e      041ad000       st.ab r3,[r2,4]
            0x00002ca2      041ad000       st.ab r3,[r2,4]
            0x00002ca6      80e1           cmp_s r1,0x0
            0x00002ca8      041ad000       st.ab r3,[r2,4]
            0x00002cac      c2216900       sub.gt r1,r1,0x0x1
            0x00002cb0      2df6           bgt_s -38 ;0x00002c8a
            0x00002cb2      3904cfff       b -968 ;0x000028e8
            0x00002cb6      e078           nop_s
            0x00002cb8      e1c5           push_s r13
            0x00002cba      17d2           ld_s r2,[pcl,0x0x5c] ;0x00002d14
            0x00002cbc      248a           ldb_s r1,[r2,0x0x4]
            0x00002cbe      9be9           brne_s r1,0x0,54 ;0x00002cf2
            0x00002cc0      16d1           ld_s r1,[pcl,0x0x58] ;0x00002d18
            0x00002cc2      06e9           breq_s r1,0x0,12 ;0x00002ccc
            0x00002cc4      23a2           st_s r1,[r2,0x0xc]
            0x00002cc6      16d1           ld_s r1,[pcl,0x0x58] ;0x00002d1c
            0x00002cc8      22a2           st_s r1,[r2,0x0x8]
            0x00002cca      13f0           b_s 38 ;0x00002cee
            0x00002ccc      15d1           ld_s r1,[pcl,0x0x54] ;0x00002d20
            0x00002cce      4621c103       bic r1,r1,0x0xf
            0x00002cd2      6082           ld_s r3,[r2,0x0]
            0x00002cd4      00218d0f00..   add r13,r1,0x0x4000
            0x00002cdc      110b6503       brhs.d.nt r3,r13,16 ;0x00002cec
            0x00002ce0      23a2           st_s r1,[r2,0x0xc]
            0x00002ce2      c77108000000   add_s 0x0,0x0x80000,1
            0x00002ce8      22a2           st_s r1,[r2,0x0x8]
            0x00002cea      03f0           b_s 6 ;0x00002cee
            0x00002cec      62a2           st_s r3,[r2,0x0x8]
            0x00002cee      01d9           mov_s r1,0x0x1
            0x00002cf0      24aa           stb_s r1,[r2,0x0x4]
            0x00002cf2      2382           ld_s r1,[r2,0x0xc]
            0x00002cf4      3860           add_s r0,r0,r1
            0x00002cf6      11084400       brlo.nt r0,r1,16 ;0x00002d04
            0x00002cfa      6282           ld_s r3,[r2,0x0x8]
            0x00002cfc      090b0400       brlo.nt r3,r0,8 ;0x00002d04
            0x00002d00      03a2           st_s r0,[r2,0x0xc]
            0x00002d02      03f0           b_s 6 ;0x00002d06
            0x00002d04      00d9           mov_s r1,0x0
            0x00002d06      2870           .short 0x7028
            0x00002d08      e07f           j_s.d [blink]
            0x00002d0a      c1c5           pop_s r13
            0x00002d0c      02d1           ld_s r1,[pcl,0x0x8] ;0x00002d14
            0x00002d0e      03a1           st_s r0,[r1,0x0xc]
            0x00002d10      e07f           j_s.d [blink]
            0x00002d12      00d8           mov_s r0,0x0
            0x00002d14      480a8000       bl 4680 ;0x00003f5c
            0x00002d18      00000000       b 0 ;0x00002d18
            0x00002d1c      00000000       b 0 ;0x00002d1c
            0x00002d20      4f398000       .word 0x394f0080
            0x00002d24      97030fff       b -7274 ;0x000010ba
            0x00002d28      e07f           j_s.d [blink]
            0x00002d2a      01d8           mov_s r0,0x0x1
            0x00002d2c      02d1           ld_s r1,[pcl,0x0x8] ;0x00002d34
            0x00002d2e      e07f           j_s.d [blink]
            0x00002d30      f0210000       ld.as r0,[r1,r0]
            0x00002d34      580a8000       bl 4696 ;0x00003f8c
            0x00002d38      f1c0           push_s blink
            0x00002d3a      320bcfff       bl -1232 ;0x00002868
            0x00002d3e      da0dafff       bl.d -2600 ;0x00002314
            0x00002d42      1a70           .short 0x701a
            0x00002d44      0877           .short 0x7708
            0x00002d46      00de           mov_s r14,0x0
            0x00002d48      02f0           b_s 4 ;0x00002d4c
            0x00002d4a      01e6           add_s r14,r14,0x0x1
            0x00002d4c      2d0e1318       brge.nt r14,0x0x20,44 ;0x00002d78
            0x00002d50      10d0           ld_s r0,[pcl,0x0x40] ;0x00002d90
            0x00002d52      0080           ld_s r0,[r0,0x0]
            0x00002d54      f0208d03       ld.as r13,[r0,r14]
            0x00002d58      79ed           breq_s r13,0x0,-14 ;0x00002d4a
            0x00002d5a      0a70           .short 0x700a
            0x00002d5c      a971           .short 0x71a9
            0x00002d5e      8e082000       bl.d 140 ;0x00002de8
            0x00002d62      e972           .short 0x72e9
            0x00002d64      f3e8           brne_s r0,0x0,-26 ;0x00002d4a
            0x00002d66      e865           ldb_s r0,[r13,r15]
            0x00002d68      0b08500f       breq.nt r0,0x0x3d,10 ;0x00002d72
            0x00002d6c      efe8           brne_s r0,0x0,-34 ;0x00002d4a
            0x00002d6e      f865           add_s r0,r13,r15
            0x00002d70      05f0           b_s 10 ;0x00002d7a
            0x00002d72      f865           add_s r0,r13,r15
            0x00002d74      01e0           add_s r0,r0,0x0x1
            0x00002d76      03f0           b_s 6 ;0x00002d7a
            0x00002d78      00d8           mov_s r0,0x0
            0x00002d7a      5903cfff       b -1192 ;0x000028d0
            0x00002d7e      e078           nop_s
            0x00002d80      b907efff       b.d -72 ;0x00002d38
            0x00002d84      04d1           ld_s r1,[pcl,0x0x10] ;0x00002d94
            0x00002d86      e078           nop_s
            0x00002d88      b107efff       b.d -80 ;0x00002d38
            0x00002d8c      03d1           ld_s r1,[pcl,0x0xc] ;0x00002d98
            0x00002d8e      e078           nop_s
            0x00002d90      640a8000       bl 4708 ;0x00003ff4
            0x00002d94      c0378000       .word 0x37c00080
            0x00002d98      40388000       .word 0x38400080
            0x00002d9c      f1c0           push_s blink
            0x00002d9e      ce0acfff       bl -1332 ;0x00002868
            0x00002da2      0fd7           ld_s r15,[pcl,0x0x3c] ;0x00002ddc
            0x00002da4      0087           ld_s r0,[r15,0x0]
            0x00002da6      5b60           add_s r3,r0,r2
            0x00002da8      59230d04       sub3 r13,r3,0x0x10
            0x00002dac      02224e03       sub r14,r2,r13
            0x00002db0      8c230280       cmp r3,128
            0x00002db4      80dd           mov_s r13,0x0x80
            0x00002db6      ca204d23       mov.hi r16,r13
            0x00002dba      ca258d13       mov.hi r13,r14
            0x00002dbe      ca20ce20       mov.ls r16,r3
            0x00002dc2      ca258e10       mov.ls r13,r2
            0x00002dc6      09ed           breq_s r13,0x0,18 ;0x00002dd6
            0x00002dc8      06d4           ld_s r12,[pcl,0x0x18] ;0x00002de0
            0x00002dca      9860           add_s r0,r0,r12
            0x00002dcc      e60dafff       bl.d -2588 ;0x000023b0
            0x00002dd0      a972           .short 0x72a9
            0x00002dd2      001f0014       st r16,[r15]
            0x00002dd6      fd02efff       b.d -1284 ;0x000028d0
            0x00002dda      a970           .short 0x70a9
            0x00002ddc      600a8000       bl 4704 ;0x0000403c
            0x00002de0      c0388000       .word 0x38c00080
            0x00002de4      e07e           j_s [blink]
            0x00002de6      e078           nop_s
            0x00002de8      f1c0           push_s blink
            0x00002dea      860acfff       bl -1404 ;0x0000286c
            0x00002dee      0875           .short 0x7508
            0x00002df0      2877           .short 0x7728
            0x00002df2      4876           .short 0x7648
            0x00002df4      e209efff       bl.d -1568 ;0x000027d4
            0x00002df8      00d9           mov_s r1,0x0
            0x00002dfa      02204103       sub r1,r0,r13
            0x00002dfe      01e1           add_s r1,r1,0x0x1
            0x00002e00      80e0           cmp_s r0,0x0
            0x00002e02      ca228103       mov.eq r2,r14
            0x00002e06      ca224200       mov.ne r2,r1
            0x00002e0a      a970           .short 0x70a9
            0x00002e0c      12082000       bl.d 16 ;0x00002e1c
            0x00002e10      e971           .short 0x71e9
            0x00002e12      c902cfff       b -1336 ;0x000028d8
            0x00002e16      e078           nop_s
            0x00002e18      e07e           j_s [blink]
            0x00002e1a      e078           nop_s
            0x00002e1c      e1c5           push_s r13
            0x00002e1e      08f0           b_s 16 ;0x00002e2c
            0x00002e20      01108d04       ldb.ab r13,[r0,1]
            0x00002e24      01118304       ldb.ab r3,[r1,1]
            0x00002e28      110dc110       brne.nt r13,r3,16 ;0x00002e38
            0x00002e2c      61ba           sub_s r2,r2,0x0x1
            0x00002e2e      8c22ff8f       cmp r2,-1
            0x00002e32      f8f5           bne_s -16 ;0x00002e20
            0x00002e34      00d8           mov_s r0,0x0
            0x00002e36      0df0           b_s 26 ;0x00002e4e
            0x00002e38      ff108280       ldb r2,[r0,-1]
            0x00002e3c      ff118080       ldb r0,[r1,-1]
            0x00002e40      01d9           mov_s r1,0x0x1
            0x00002e42      1072           cmp_s r2,r0
            0x00002e44      8a20ff0f       mov r0,-1
            0x00002e48      c2214b00       sub.lt r1,r1,r1
            0x00002e4c      3478           add1_s r0,r0,r1
            0x00002e4e      e07f           j_s.d [blink]
            0x00002e50      c1c5           pop_s r13
            0x00002e52      e078           nop_s
            0x00002e54      e1c5           push_s r13
            0x00002e56      e1c6           push_s r14
            0x00002e58      e1c7           push_s r15
            0x00002e5a      fc1c08b4       st.aw r16,[sp,-4]
            0x00002e5e      cf76           mov_s 0x0,6
            0x00002e60      80000c0d       ble 106624 ;0x0001cee0
            0x00002e64      2096           ldh_s r1,[r14,0x0]
            0x00002e66      0421800f00..   and r0,r1,0x0x8000
            0x00002e6e      13083100       brne.d.nt r0,0x0,18 ;0x00002e7e
            0x00002e72      0a20c027       mov r16,blink
            0x00002e76      cf75           mov_s 0x0,5
            0x00002e78      80003408       b.d 65664 ;0x00012ef8
            0x00002e7c      23f0           b_s 70 ;0x00002ec2
            0x00002e7e      5021c203       bclr r2,r1,0x0xf
            0x00002e82      0422830f00..   and r3,r2,0x0x4000
            0x00002e8a      5079           exth_s r1,r2
            0x00002e8c      0f0b3100       brne.d.nt r3,0x0,14 ;0x00002e9a
            0x00002e90      40b6           sth_s r2,[r14,0x0]
            0x00002e92      cf75           mov_s 0x0,5
            0x00002e94      80003408       b.d 65664 ;0x00012f14
            0x00002e98      0df0           b_s 26 ;0x00002eb2
            0x00002e9a      0422820f00..   and r2,r2,0x0xbfff
            0x00002ea2      5079           exth_s r1,r2
            0x00002ea4      40b6           sth_s r2,[r14,0x0]
            0x00002ea6      00df           mov_s r15,0x0
            0x00002ea8      cf75           mov_s 0x0,5
            0x00002eaa      80003408       b.d 65664 ;0x00012f28
            0x00002eae      381dc213       stb r15,[r13,56]
            0x00002eb2      01e1           add_s r1,r1,0x0x1
            0x00002eb4      3db5           sth_s r1,[r13,0x0x3a]
            0x00002eb6      9e0ca00c       bl.d 103580 ;0x0001c350
            0x00002eba      ffd8           mov_s r0,0x0xff
            0x00002ebc      c0b8           bmsk_s r0,r0,0x0
            0x00002ebe      3c1d0210       stb r0,[r13,60]
            0x00002ec2      3d95           ldh_s r1,[r13,0x0x3a]
            0x00002ec4      9b095200       brlt.nt r1,0x0x1,154 ;0x00002f5e
            0x00002ec8      4969           sub_s r2,r1,0x0x1
            0x00002eca      5079           exth_s r1,r2
            0x00002ecc      93093100       brne.d.nt r1,0x0,146 ;0x00002f5e
            0x00002ed0      5db5           sth_s r2,[r13,0x0x3a]
            0x00002ed2      b20d2002       bl.d 17840 ;0x00007480
            0x00002ed6      3c158010       ldb r0,[r13,60]
            0x00002eda      8ce8           brne_s r0,0x0,24 ;0x00002ef0
            0x00002edc      3c158010       ldb r0,[r13,60]
            0x00002ee0      04e8           breq_s r0,0x0,8 ;0x00002ee8
            0x00002ee2      0b002000       b.d 10 ;0x00002eea
            0x00002ee6      01da           mov_s r2,0x0x1
            0x00002ee8      02da           mov_s r2,0x0x2
            0x00002eea      638e           ldb_s r3,[r14,0x0x3]
            0x00002eec      657a           or_s r2,r2,r3
            0x00002eee      43ae           stb_s r2,[r14,0x0x3]
            0x00002ef0      028e           ldb_s r0,[r14,0x0x2]
            0x00002ef2      9be8           brne_s r0,0x0,54 ;0x00002f26
            0x00002ef4      38158310       ldb r3,[r13,56]
            0x00002ef8      170b3000       breq.d.nt r3,0x0,22 ;0x00002f0e
            0x00002efc      00df           mov_s r15,0x0
            0x00002efe      920c4002       bl 19600 ;0x00007b8c
            0x00002f02      87e8           brne_s r0,0x0,14 ;0x00002f0e
            0x00002f04      1a0fa010       bl.d 136984 ;0x0002461c
            0x00002f08      01d8           mov_s r0,0x0x1
            0x00002f0a      fa0b400a       bl 84984 ;0x00017b00
            0x00002f0e      e0b6           sth_s r15,[r14,0x0]
            0x00002f10      01d8           mov_s r0,0x0x1
            0x00002f12      381d0210       stb r0,[r13,56]
            0x00002f16      0a270034       mov blink,r16
            0x00002f1a      04141034       ld.ab r16,[sp,4]
            0x00002f1e      c1c7           pop_s r15
            0x00002f20      c1c6           pop_s r14
            0x00002f22      e07f           j_s.d [blink]
            0x00002f24      c1c5           pop_s r13
            0x00002f26      61b8           sub_s r0,r0,0x0x1
            0x00002f28      2096           ldh_s r1,[r14,0x0]
            0x00002f2a      02ae           stb_s r0,[r14,0x0x2]
            0x00002f2c      3c158010       ldb r0,[r13,60]
            0x00002f30      3db5           sth_s r1,[r13,0x0x3a]
            0x00002f32      0626017000..   bic r1,0x0x1,r0
            0x00002f3a      3c1d4210       stb r1,[r13,60]
            0x00002f3e      160ca00c       bl.d 103444 ;0x0001c350
            0x00002f42      02d8           mov_s r0,0x0x2
            0x00002f44      8620fd0f       bic r0,r0,-129
            0x00002f48      0be8           breq_s r0,0x0,22 ;0x00002f5e
            0x00002f4a      ffda           mov_s r2,0x0xff
            0x00002f4c      43ae           stb_s r2,[r14,0x0x3]
            0x00002f4e      0a270034       mov blink,r16
            0x00002f52      04141034       ld.ab r16,[sp,4]
            0x00002f56      c1c7           pop_s r15
            0x00002f58      c1c6           pop_s r14
            0x00002f5a      e07f           j_s.d [blink]
            0x00002f5c      c1c5           pop_s r13
            0x00002f5e      0a270034       mov blink,r16
            0x00002f62      04141034       ld.ab r16,[sp,4]
            0x00002f66      c1c7           pop_s r15
            0x00002f68      c1c6           pop_s r14
            0x00002f6a      e07f           j_s.d [blink]
            0x00002f6c      c1c5           pop_s r13
            0x00002f6e      e078           nop_s
            0x00002f70      e1c5           push_s r13
            0x00002f72      e1c6           push_s r14
            0x00002f74      e1c7           push_s r15
            0x00002f76      7b1281b0       ldb r1,[gp,-133]
            0x00002f7a      c0b9           bmsk_s r1,r1,0x0
            0x00002f7c      a9093100       brne.d.nt r1,0x0,168 ;0x00003024
            0x00002f80      eb77           .short 0x77eb
            0x00002f82      00dd           mov_s r13,0x0
            0x00002f84      460a2007       bl.d 57924 ;0x000111c8
            0x00002f88      a970           .short 0x70a9
            0x00002f8a      0876           .short 0x7608
            0x00002f8c      2e08a001       bl.d 12332 ;0x00005fb8
            0x00002f90      a970           .short 0x70a9
            0x00002f92      8d081000       breq.nt r0,0x0,140 ;0x0000301c
            0x00002f96      87168210       ldb r2,[r14,135]
            0x00002f9a      670a1504       brhs.nt r2,0x0x10,102 ;0x00002ffe
            0x00002f9e      f026807000..   ld.as r0,[0x0x2fa8,r2]
            0x00002fa6      0078           j_s [r0]
            0x00002fa8      1c300000       .word 0x301c0000
            0x00002fac      fe2f0000       .word 0x2ffe0000
            0x00002fb0      fe2f0000       .word 0x2ffe0000
            0x00002fb4      fe2f0000       .word 0x2ffe0000
            0x00002fb8      fe2f0000       .word 0x2ffe0000
            0x00002fbc      fe2f0000       .word 0x2ffe0000
            0x00002fc0      fe2f0000       .word 0x2ffe0000
            0x00002fc4      fe2f0000       .word 0x2ffe0000
            0x00002fc8      fe2f0000       .word 0x2ffe0000
            0x00002fcc      fe2f0000       .word 0x2ffe0000
            0x00002fd0      1c300000       .word 0x301c0000
            0x00002fd4      fe2f0000       .word 0x2ffe0000
            0x00002fd8      1c300000       .word 0x301c0000
            0x00002fdc      fe2f0000       .word 0x2ffe0000
            0x00002fe0      fe2f0000       .word 0x2ffe0000
            0x00002fe4      e82f0000       dmpyhwf r7,r7,r0
            0x00002fe8      cf71           mov_s 0x0,1
            0x00002fea      80000004       b 32896 ;0x0000b068
            0x00002fee      0989           ldb_s r0,[r1,0x0x9]
            0x00002ff0      c0b8           bmsk_s r0,r0,0x0
            0x00002ff2      96e8           brne_s r0,0x0,44 ;0x0000301c
            0x00002ff4      01da           mov_s r2,0x0x1
            0x00002ff6      23002000       b.d 34 ;0x00003016
            0x00002ffa      871e8210       stb r2,[r14,135]
            0x00002ffe      cf71           mov_s 0x0,1
            0x00003000      80000004       b 32896 ;0x0000b080
            0x00003004      0989           ldb_s r0,[r1,0x0x9]
            0x00003006      c0b8           bmsk_s r0,r0,0x0
            0x00003008      07e8           breq_s r0,0x0,14 ;0x00003016
            0x0000300a      0fdb           mov_s r3,0x0xf
            0x0000300c      871ec210       stb r3,[r14,135]
            0x00003010      09002000       b.d 8 ;0x00003018
            0x00003014      01d8           mov_s r0,0x0x1
            0x00003016      00d8           mov_s r0,0x0
            0x00003018      12088003       bl 28688 ;0x0000a028
            0x0000301c      01e5           add_s r13,r13,0x0x1
            0x0000301e      af7d           extb_s r13,r13
            0x00003020      650d5290       brlt.nt r13,0x0x1,-156 ;0x00002f84
            0x00003024      fb77           .short 0x77fb
            0x00003026      c1c7           pop_s r15
            0x00003028      c1c6           pop_s r14
            0x0000302a      e07f           j_s.d [blink]
            0x0000302c      c1c5           pop_s r13
            0x0000302e      e078           nop_s
            0x00003030      cf73           mov_s 0x0,3
            0x00003032      80000004       b 32896 ;0x0000b0b0
            0x00003036      288b           ldb_s r1,[r3,0x0x8]
            0x00003038      c0b9           bmsk_s r1,r1,0x0
            0x0000303a      11093000       breq.d.nt r1,0x0,16 ;0x00003048
            0x0000303e      00da           mov_s r2,0x0
            0x00003040      098b           ldb_s r0,[r3,0x0x9]
            0x00003042      c0b8           bmsk_s r0,r0,0x0
            0x00003044      82e8           brne_s r0,0x0,4 ;0x00003048
            0x00003046      01da           mov_s r2,0x0x1
            0x00003048      e07f           j_s.d [blink]
            0x0000304a      4f78           extb_s r0,r2
            0x0000304c      86e8           brne_s r0,0x0,12 ;0x00003058
            0x0000304e      cf71           mov_s 0x0,1
            0x00003050      f0000068       b 852208 ;0x000d3140
            0x00003054      0581           ld_s r0,[r1,0x0x14]
            0x00003056      e07e           j_s [blink]
            0x00003058      0f085100       brne.nt r0,0x0x1,14 ;0x00003066
            0x0000305c      cf71           mov_s 0x0,1
            0x0000305e      f0000068       b 852208 ;0x000d314c
            0x00003062      0681           ld_s r0,[r1,0x0x18]
            0x00003064      e07e           j_s [blink]
            0x00003066      11089100       brne.nt r0,0x0x2,16 ;0x00003074
            0x0000306a      cf71           mov_s 0x0,1
            0x0000306c      f0000068       b 852208 ;0x000d315c
            0x00003070      0781           ld_s r0,[r1,0x0x1c]
            0x00003072      e07e           j_s [blink]
            0x00003074      0f08d100       brne.nt r0,0x0x3,14 ;0x00003082
            0x00003078      cf71           mov_s 0x0,1
            0x0000307a      f0000068       b 852208 ;0x000d3168
            0x0000307e      0881           ld_s r0,[r1,0x0x20]
            0x00003080      e07e           j_s [blink]
            0x00003082      11081101       brne.nt r0,0x0x4,16 ;0x00003090
            0x00003086      cf71           mov_s 0x0,1
            0x00003088      f0000068       b 852208 ;0x000d3178
            0x0000308c      0981           ld_s r0,[r1,0x0x24]
            0x0000308e      e07e           j_s [blink]
            0x00003090      0f085101       brne.nt r0,0x0x5,14 ;0x0000309e
            0x00003094      cf71           mov_s 0x0,1
            0x00003096      f0000068       b 852208 ;0x000d3184
            0x0000309a      0a81           ld_s r0,[r1,0x0x28]
            0x0000309c      e07e           j_s [blink]
            0x0000309e      11089101       brne.nt r0,0x0x6,16 ;0x000030ac
            0x000030a2      cf71           mov_s 0x0,1
            0x000030a4      f0000068       b 852208 ;0x000d3194
            0x000030a8      0b81           ld_s r0,[r1,0x0x2c]
            0x000030aa      e07e           j_s [blink]
            0x000030ac      0f08d101       brne.nt r0,0x0x7,14 ;0x000030ba
            0x000030b0      cf71           mov_s 0x0,1
            0x000030b2      f0000068       b 852208 ;0x000d31a0
            0x000030b6      0c81           ld_s r0,[r1,0x0x30]
            0x000030b8      e07e           j_s [blink]
            0x000030ba      11081102       brne.nt r0,0x0x8,16 ;0x000030c8
            0x000030be      cf71           mov_s 0x0,1
            0x000030c0      f0000068       b 852208 ;0x000d31b0
            0x000030c4      0d81           ld_s r0,[r1,0x0x34]
            0x000030c6      e07e           j_s [blink]
            0x000030c8      0f085102       brne.nt r0,0x0x9,14 ;0x000030d6
            0x000030cc      cf71           mov_s 0x0,1
            0x000030ce      f0000068       b 852208 ;0x000d31bc
            0x000030d2      0e81           ld_s r0,[r1,0x0x38]
            0x000030d4      e07e           j_s [blink]
            0x000030d6      11089102       brne.nt r0,0x0xa,16 ;0x000030e4
            0x000030da      cf71           mov_s 0x0,1
            0x000030dc      f0000068       b 852208 ;0x000d31cc
            0x000030e0      0f81           ld_s r0,[r1,0x0x3c]
            0x000030e2      e07e           j_s [blink]
            0x000030e4      0f08d102       brne.nt r0,0x0xb,14 ;0x000030f2
            0x000030e8      cf71           mov_s 0x0,1
            0x000030ea      f0000068       b 852208 ;0x000d31d8
            0x000030ee      1081           ld_s r0,[r1,0x0x40]
            0x000030f0      e07e           j_s [blink]
            0x000030f2      11081103       brne.nt r0,0x0xc,16 ;0x00003100
            0x000030f6      cf71           mov_s 0x0,1
            0x000030f8      f0000068       b 852208 ;0x000d31e8
            0x000030fc      1181           ld_s r0,[r1,0x0x44]
            0x000030fe      e07e           j_s [blink]
            0x00003100      cf71           mov_s 0x0,1
            0x00003102      f0000068       b 852208 ;0x000d31f0
            0x00003106      0b085103       brne.nt r0,0x0xd,10 ;0x0000310e
            0x0000310a      1281           ld_s r0,[r1,0x0x48]
            0x0000310c      e07e           j_s [blink]
            0x0000310e      0b089103       brne.nt r0,0x0xe,10 ;0x00003116
            0x00003112      1381           ld_s r0,[r1,0x0x4c]
            0x00003114      e07e           j_s [blink]
            0x00003116      1481           ld_s r0,[r1,0x0x50]
            0x00003118      e07e           j_s [blink]
            0x0000311a      e078           nop_s
            0x0000311c      cf71           mov_s 0x0,1
            0x0000311e      02003ca7       b.d -729086 ;0xfffffffffff5111e
            0x00003122      3860           add_s r0,r0,r1
            0x00003124      6088           ldb_s r3,[r0,0x0]
            0x00003126      8c23c38f       cmp r3,255
            0x0000312a      06f4           bne_s 12 ;0x00003134
            0x0000312c      1d002000       b.d 28 ;0x00003148
            0x00003130      8a201000       mov r0,1024
            0x00003134      03bb           asl_s r3,r3,0x0x3
            0x00003136      cf72           mov_s 0x0,2
            0x00003138      80008012       b 151680 ;0x000281b8
            0x0000313c      747b           add1_s r3,r3,r3
            0x0000313e      7862           add_s r0,r2,r3
            0x00003140      3188           ldb_s r1,[r0,0x0x11]
            0x00003142      7a62           add_s r2,r2,r3
            0x00003144      347a           add1_s r2,r2,r1
            0x00003146      0092           ldh_s r0,[r2,0x0]
            0x00003148      e07e           j_s [blink]
            0x0000314a      e078           nop_s
            0x0000314c      e1c5           push_s r13
            0x0000314e      e1c6           push_s r14
            0x00003150      f1c0           push_s blink
            0x00003152      fe0eefff       bl.d -260 ;0x0000304c
            0x00003156      01d8           mov_s r0,0x0x1
            0x00003158      c9b8           bmsk_s r0,r0,0x0x9
            0x0000315a      1079           exth_s r1,r0
            0x0000315c      cf76           mov_s 0x0,6
            0x0000315e      02003ca7       b.d -729086 ;0xfffffffffff5115e
            0x00003162      018e           ldb_s r0,[r14,0x0x1]
            0x00003164      cf75           mov_s 0x0,5
            0x00003166      80008012       b 151680 ;0x000281e4
            0x0000316a      03b8           asl_s r0,r0,0x0x3
            0x0000316c      1478           add1_s r0,r0,r0
            0x0000316e      7e0b6000       bl.d 2940 ;0x00003ce8
            0x00003172      b860           add_s r0,r0,r13
            0x00003174      da0eefff       bl.d -296 ;0x0000304c
            0x00003178      02d8           mov_s r0,0x0x2
            0x0000317a      c9b8           bmsk_s r0,r0,0x0x9
            0x0000317c      1079           exth_s r1,r0
            0x0000317e      028e           ldb_s r0,[r14,0x0x2]
            0x00003180      03b8           asl_s r0,r0,0x0x3
            0x00003182      1478           add1_s r0,r0,r0
            0x00003184      660b6000       bl.d 2916 ;0x00003ce8
            0x00003188      b860           add_s r0,r0,r13
            0x0000318a      c60eefff       bl.d -316 ;0x0000304c
            0x0000318e      03d8           mov_s r0,0x0x3
            0x00003190      c9b8           bmsk_s r0,r0,0x0x9
            0x00003192      1079           exth_s r1,r0
            0x00003194      038e           ldb_s r0,[r14,0x0x3]
            0x00003196      03b8           asl_s r0,r0,0x0x3
            0x00003198      1478           add1_s r0,r0,r0
            0x0000319a      520b6000       bl.d 2896 ;0x00003ce8
            0x0000319e      b860           add_s r0,r0,r13
            0x000031a0      ae0eefff       bl.d -340 ;0x0000304c
            0x000031a4      05d8           mov_s r0,0x0x5
            0x000031a6      c9b8           bmsk_s r0,r0,0x0x9
            0x000031a8      1079           exth_s r1,r0
            0x000031aa      058e           ldb_s r0,[r14,0x0x5]
            0x000031ac      03b8           asl_s r0,r0,0x0x3
            0x000031ae      1478           add1_s r0,r0,r0
            0x000031b0      3a0b6000       bl.d 2872 ;0x00003ce8
            0x000031b4      b860           add_s r0,r0,r13
            0x000031b6      9a0eefff       bl.d -360 ;0x0000304c
            0x000031ba      08d8           mov_s r0,0x0x8
            0x000031bc      c9b8           bmsk_s r0,r0,0x0x9
            0x000031be      1079           exth_s r1,r0
            0x000031c0      088e           ldb_s r0,[r14,0x0x8]
            0x000031c2      03b8           asl_s r0,r0,0x0x3
            0x000031c4      1478           add1_s r0,r0,r0
            0x000031c6      260b6000       bl.d 2852 ;0x00003ce8
            0x000031ca      b860           add_s r0,r0,r13
            0x000031cc      820eefff       bl.d -384 ;0x0000304c
            0x000031d0      09d8           mov_s r0,0x0x9
            0x000031d2      c9b8           bmsk_s r0,r0,0x0x9
            0x000031d4      1079           exth_s r1,r0
            0x000031d6      098e           ldb_s r0,[r14,0x0x9]
            0x000031d8      03b8           asl_s r0,r0,0x0x3
            0x000031da      1478           add1_s r0,r0,r0
            0x000031dc      0e0b6000       bl.d 2828 ;0x00003ce8
            0x000031e0      b860           add_s r0,r0,r13
            0x000031e2      6e0eefff       bl.d -404 ;0x0000304c
            0x000031e6      0bd8           mov_s r0,0x0xb
            0x000031e8      c9b8           bmsk_s r0,r0,0x0x9
            0x000031ea      1079           exth_s r1,r0
            0x000031ec      0b8e           ldb_s r0,[r14,0x0xb]
            0x000031ee      03b8           asl_s r0,r0,0x0x3
            0x000031f0      1478           add1_s r0,r0,r0
            0x000031f2      fa0a6000       bl.d 2808 ;0x00003ce8
            0x000031f6      b860           add_s r0,r0,r13
            0x000031f8      d1c0           pop_s blink
            0x000031fa      c1c6           pop_s r14
            0x000031fc      e07f           j_s.d [blink]
            0x000031fe      c1c5           pop_s r13
            0x00003200      e1c5           push_s r13
            0x00003202      e1c6           push_s r14
            0x00003204      e1c7           push_s r15
            0x00003206      cf71           mov_s 0x0,1
            0x00003208      f00000d0       b -392976 ;0xfffffffffffa32f8
            0x0000320c      0189           ldb_s r0,[r1,0x0x1]
            0x0000320e      eb77           .short 0x77eb
            0x00003210      82b8           bset_s r0,r0,0x0x2
            0x00003212      01a9           stb_s r0,[r1,0x0x1]
            0x00003214      cf70           mov_s 0x0,0
            0x00003216      fa007d00       b.d 2298 ;0x00003b0e
            0x0000321a      4e08200b       bl.d 90188 ;0x00019264
            0x0000321e      00dd           mov_s r13,0x0
            0x00003220      cf70           mov_s 0x0,0
            0x00003222      00002e0b       bls.d 90112 ;0x00019220
            0x00003226      5a08000b       bl 90200 ;0x0001927c
            0x0000322a      5e0ec006       bl 56924 ;0x00011084
            0x0000322e      2e08200b       bl.d 90156 ;0x00019258
            0x00003232      45204001       or r0,r0,0x0x5
            0x00003236      cf76           mov_s 0x0,6
            0x00003238      80008012       b 151680 ;0x000282b8
            0x0000323c      136d           asl_s r0,r13,0x0x3
            0x0000323e      1478           add1_s r0,r0,r0
            0x00003240      820a6000       bl.d 2688 ;0x00003cc0
            0x00003244      d860           add_s r0,r0,r14
            0x00003246      01e5           add_s r13,r13,0x0x1
            0x00003248      af7d           extb_s r13,r13
            0x0000324a      f50dd291       brlt.nt r13,0x0x7,-12 ;0x0000323c
            0x0000324e      fb77           .short 0x77fb
            0x00003250      c1c7           pop_s r15
            0x00003252      c1c6           pop_s r14
            0x00003254      e07f           j_s.d [blink]
            0x00003256      c1c5           pop_s r13
            0x00003258      f1c0           push_s blink
            0x0000325a      f60ecfff       bl -268 ;0x0000314c
            0x0000325e      d1c0           pop_s blink
            0x00003260      e07e           j_s [blink]
            0x00003262      e078           nop_s
            0x00003264      01da           mov_s r2,0x0x1
            0x00003266      cf71           mov_s 0x0,1
            0x00003268      80007c08       b.d 67712 ;0x00013ae8
            0x0000326c      4aa9           stb_s r2,[r1,0x0xa]
            0x0000326e      00d8           mov_s r0,0x0
            0x00003270      e07f           j_s.d [blink]
            0x00003272      0ba9           stb_s r0,[r1,0x0xb]
            0x00003274      01da           mov_s r2,0x0x1
            0x00003276      cf71           mov_s 0x0,1
            0x00003278      80007c08       b.d 67712 ;0x00013af8
            0x0000327c      4ca9           stb_s r2,[r1,0x0xc]
            0x0000327e      00d8           mov_s r0,0x0
            0x00003280      e07f           j_s.d [blink]
            0x00003282      0da9           stb_s r0,[r1,0x0xd]
            0x00003284      e1c5           push_s r13
            0x00003286      eb75           .short 0x75eb
            0x00003288      00da           mov_s r2,0x0
            0x0000328a      fc1c8ab0       stb.aw r2,[sp,-4]
            0x0000328e      ffc9           ld_s r0,[gp,-4]
            0x00003290      8b71           .short 0x718b
            0x00003292      ee0e2012       bl.d 149228 ;0x0002797c
            0x00003296      4873           .short 0x7348
            0x00003298      1d085100       brne.nt r0,0x0x1,28 ;0x000032b4
            0x0000329c      ee0e2011       bl.d 141036 ;0x00025988
            0x000032a0      ffc9           ld_s r0,[gp,-4]
            0x000032a2      8ae8           brne_s r0,0x0,20 ;0x000032b4
            0x000032a4      cf73           mov_s 0x0,3
            0x000032a6      ff00000a       b 82174 ;0x000173a2
            0x000032aa      04138280       ldb r2,[r3,-252]
            0x000032ae      a5ba           bclr_s r2,r2,0x0x5
            0x000032b0      041b8280       stb r2,[r3,-252]
            0x000032b4      04148034       ldb.ab r0,[sp,4]
            0x000032b8      fb75           .short 0x75fb
            0x000032ba      e07f           j_s.d [blink]
            0x000032bc      c1c5           pop_s r13
            0x000032be      e078           nop_s
            0x000032c0      e1c5           push_s r13
            0x000032c2      eb75           .short 0x75eb
            0x000032c4      00da           mov_s r2,0x0
            0x000032c6      fc1c8ab0       stb.aw r2,[sp,-4]
            0x000032ca      00c8           ld_s r0,[gp,0]
            0x000032cc      8b71           .short 0x718b
            0x000032ce      b20e2012       bl.d 149168 ;0x0002797c
            0x000032d2      4873           .short 0x7348
            0x000032d4      1d085100       brne.nt r0,0x0x1,28 ;0x000032f0
            0x000032d8      b20e2011       bl.d 140976 ;0x00025988
            0x000032dc      00c8           ld_s r0,[gp,0]
            0x000032de      8ae8           brne_s r0,0x0,20 ;0x000032f0
            0x000032e0      cf73           mov_s 0x0,3
            0x000032e2      ff00000a       b 82174 ;0x000173de
            0x000032e6      04138280       ldb r2,[r3,-252]
            0x000032ea      a6ba           bclr_s r2,r2,0x0x6
            0x000032ec      041b8280       stb r2,[r3,-252]
            0x000032f0      04148034       ldb.ab r0,[sp,4]
            0x000032f4      fb75           .short 0x75fb
            0x000032f6      e07f           j_s.d [blink]
            0x000032f8      c1c5           pop_s r13
            0x000032fa      e078           nop_s
            0x000032fc      e1c5           push_s r13
            0x000032fe      e1c6           push_s r14
            0x00003300      cf75           mov_s 0x0,5
            0x00003302      f00000c0       b -524048 ;0xfffffffffff833f0
            0x00003306      f8158110       ldb r1,[r13,248]
            0x0000330a      eb76           .short 0x76eb
            0x0000330c      8621ff07       bic r1,r1,-33
            0x00003310      a1c1           sub_s sp,sp,0x0x4
            0x00003312      2b093000       breq.d.nt r1,0x0,42 ;0x0000333a
            0x00003316      0872           .short 0x7208
            0x00003318      51db           mov_s r3,0x0x51
            0x0000331a      fcc9           ld_s r0,[gp,-16]
            0x0000331c      60c3           stb_s r3,[sp,0x0]
            0x0000331e      8b71           .short 0x718b
            0x00003320      8a096012       bl.d 149896 ;0x00027ca8
            0x00003324      00db           mov_s r3,0x0
            0x00003326      f4158310       ldb r3,[r13,244]
            0x0000332a      a5bb           bclr_s r3,r3,0x0x5
            0x0000332c      f41dc210       stb r3,[r13,244]
            0x00003330      f0158010       ldb r0,[r13,240]
            0x00003334      85b8           bset_s r0,r0,0x0x5
            0x00003336      f01d0210       stb r0,[r13,240]
            0x0000333a      fb76           .short 0x76fb
            0x0000333c      a1c0           add_s sp,sp,0x0x4
            0x0000333e      c1c6           pop_s r14
            0x00003340      e07f           j_s.d [blink]
            0x00003342      c1c5           pop_s r13
            0x00003344      e1c5           push_s r13
            0x00003346      e1c6           push_s r14
            0x00003348      01cb           ldb_s r0,[gp,-255]
            0x0000334a      a1c1           sub_s sp,sp,0x0x4
            0x0000334c      19087100       brne.d.nt r0,0x0x1,24 ;0x00003364
            0x00003350      eb76           .short 0x76eb
            0x00003352      e20b4012       bl 150496 ;0x00027f30
            0x00003356      cf72           mov_s 0x0,2
            0x00003358      8000d406       b 55424 ;0x00010bd8
            0x0000335c      6382           ld_s r3,[r2,0x0xc]
            0x0000335e      6278           sub_s r0,r0,r3
            0x00003360      0b08d500       brhs.nt r0,0x0x3,10 ;0x0000336a
            0x00003364      19002000       b.d 24 ;0x0000337c
            0x00003368      00dd           mov_s r13,0x0
            0x0000336a      00dd           mov_s r13,0x0
            0x0000336c      011a42b3       stb r13,[gp,-255]
            0x00003370      02d8           mov_s r0,0x0x2
            0x00003372      720da002       bl.d 21872 ;0x000088e0
            0x00003376      10d9           mov_s r1,0x0x10
            0x00003378      3208c006       bl 55344 ;0x00010ba8
            0x0000337c      8b71           .short 0x718b
            0x0000337e      fdc9           ld_s r0,[gp,-12]
            0x00003380      00da           mov_s r2,0x0
            0x00003382      fe0d2012       bl.d 148988 ;0x0002797c
            0x00003386      4873           .short 0x7348
            0x00003388      81e0           cmp_s r0,0x0x1
            0x0000338a      b5f4           bne_s 362 ;0x000034f2
            0x0000338c      1e08c006       bl 55324 ;0x00010ba8
            0x00003390      20c2           ldb_s r2,[sp,0x0]
            0x00003392      8622ff0d       bic r2,r2,-9
            0x00003396      110a1102       brne.nt r2,0x0x8,16 ;0x000033a4
            0x0000339a      031a42b3       stb r13,[gp,-253]
            0x0000339e      15002000       b.d 20 ;0x000033b0
            0x000033a2      00db           mov_s r3,0x0
            0x000033a4      031283b0       ldb r3,[gp,-253]
            0x000033a8      84eb           brne_s r3,0x0,8 ;0x000033b0
            0x000033aa      ffdb           mov_s r3,0x0xff
            0x000033ac      031ac2b0       stb r3,[gp,-253]
            0x000033b0      11eb           breq_s r3,0x0,34 ;0x000033d2
            0x000033b2      81e3           cmp_s r3,0x0x1
            0x000033b4      87f2           beq_s 270 ;0x000034c2
            0x000033b6      110b9100       brne.nt r3,0x0x2,16 ;0x000033c4
            0x000033ba      00cb           ldb_s r0,[gp,-256]
            0x000033bc      c6092000       bl.d 452 ;0x00003580
            0x000033c0      01148130       ldb r1,[sp,1]
            0x000033c4      031a42b3       stb r13,[gp,-253]
            0x000033c8      fb76           .short 0x76fb
            0x000033ca      a1c0           add_s sp,sp,0x0x4
            0x000033cc      c1c6           pop_s r14
            0x000033ce      e07f           j_s.d [blink]
            0x000033d0      c1c5           pop_s r13
            0x000033d2      01148130       ldb r1,[sp,1]
            0x000033d6      8c210280       cmp r1,128
            0x000033da      05f2           beq_s 10 ;0x000033e2
            0x000033dc      8c214280       cmp r1,129
            0x000033e0      0bf4           bne_s 22 ;0x000033f6
            0x000033e2      021a42b0       stb r1,[gp,-254]
            0x000033e6      01d8           mov_s r0,0x0x1
            0x000033e8      031a02b0       stb r0,[gp,-253]
            0x000033ec      fb76           .short 0x76fb
            0x000033ee      a1c0           add_s sp,sp,0x0x4
            0x000033f0      c1c6           pop_s r14
            0x000033f2      e07f           j_s.d [blink]
            0x000033f4      c1c5           pop_s r13
            0x000033f6      8c218280       cmp r1,130
            0x000033fa      16f4           bne_s 44 ;0x00003424
            0x000033fc      fec9           ld_s r0,[gp,-8]
            0x000033fe      021a42b0       stb r1,[gp,-254]
            0x00003402      1a0f2011       bl.d 141080 ;0x00025b18
            0x00003406      90d9           mov_s r1,0x0x90
            0x00003408      2a0b4012       bl 150312 ;0x00027f30
            0x0000340c      cf72           mov_s 0x0,2
            0x0000340e      8000d406       b 55424 ;0x00010c8c
            0x00003412      03a2           st_s r0,[r2,0x0xc]
            0x00003414      01d8           mov_s r0,0x0x1
            0x00003416      011a02b0       stb r0,[gp,-255]
            0x0000341a      02d8           mov_s r0,0x0x2
            0x0000341c      1609600b       bl.d 92436 ;0x00019d30
            0x00003420      10d9           mov_s r1,0x0x10
            0x00003422      d2f1           b_s -92 ;0x000033c4
            0x00003424      8c21c280       cmp r1,131
            0x00003428      0bf4           bne_s 22 ;0x0000343e
            0x0000342a      021a42b0       stb r1,[gp,-254]
            0x0000342e      02d8           mov_s r0,0x0x2
            0x00003430      b20ca002       bl.d 21680 ;0x000088e0
            0x00003434      10d9           mov_s r1,0x0x10
            0x00003436      9107efff       b.d -112 ;0x000033c4
            0x0000343a      011a42b3       stb r13,[gp,-255]
            0x0000343e      8c210281       cmp r1,132
            0x00003442      0af4           bne_s 20 ;0x00003454
            0x00003444      420ecfff       bl -448 ;0x00003284
            0x00003448      0871           .short 0x7108
            0x0000344a      021a02b0       stb r0,[gp,-254]
            0x0000344e      71002000       b.d 112 ;0x000034bc
            0x00003452      fec9           ld_s r0,[gp,-8]
            0x00003454      8c218282       cmp r1,138
            0x00003458      30f2           beq_s 96 ;0x000034b8
            0x0000345a      8c210284       cmp r1,144
            0x0000345e      0af4           bne_s 20 ;0x00003470
            0x00003460      fec9           ld_s r0,[gp,-8]
            0x00003462      ba0e2011       bl.d 140984 ;0x00025b18
            0x00003466      01d9           mov_s r1,0x0x1
            0x00003468      fec9           ld_s r0,[gp,-8]
            0x0000346a      55002000       b.d 84 ;0x000034bc
            0x0000346e      06d9           mov_s r1,0x0x6
            0x00003470      8c218284       cmp r1,146
            0x00003474      1ef4           bne_s 60 ;0x000034b0
            0x00003476      fec9           ld_s r0,[gp,-8]
            0x00003478      a20e2011       bl.d 140960 ;0x00025b18
            0x0000347c      00d9           mov_s r1,0x0
            0x0000347e      fec9           ld_s r0,[gp,-8]
            0x00003480      9a0e2011       bl.d 140952 ;0x00025b18
            0x00003484      00d9           mov_s r1,0x0
            0x00003486      fec9           ld_s r0,[gp,-8]
            0x00003488      920e2011       bl.d 140944 ;0x00025b18
            0x0000348c      00d9           mov_s r1,0x0
            0x0000348e      fec9           ld_s r0,[gp,-8]
            0x00003490      8a0e2011       bl.d 140936 ;0x00025b18
            0x00003494      00d9           mov_s r1,0x0
            0x00003496      fec9           ld_s r0,[gp,-8]
            0x00003498      820e2011       bl.d 140928 ;0x00025b18
            0x0000349c      00d9           mov_s r1,0x0
            0x0000349e      fec9           ld_s r0,[gp,-8]
            0x000034a0      7a0e2011       bl.d 140920 ;0x00025b18
            0x000034a4      00d9           mov_s r1,0x0
            0x000034a6      fec9           ld_s r0,[gp,-8]
            0x000034a8      720e2011       bl.d 140912 ;0x00025b18
            0x000034ac      00d9           mov_s r1,0x0
            0x000034ae      06f0           b_s 12 ;0x000034b8
            0x000034b0      09099002       breq.nt r1,0x0xa,8 ;0x000034b8
            0x000034b4      11099181       brne.nt r1,0x0x6,-240 ;0x000033c4
            0x000034b8      fec9           ld_s r0,[gp,-8]
            0x000034ba      00d9           mov_s r1,0x0
            0x000034bc      5e0e0011       bl 140892 ;0x00025b18
            0x000034c0      82f1           b_s -252 ;0x000033c4
            0x000034c2      021281b0       ldb r1,[gp,-254]
            0x000034c6      01148030       ldb r0,[sp,1]
            0x000034ca      8c214280       cmp r1,129
            0x000034ce      1a002200       bne.d 26 ;0x000034e6
            0x000034d2      001a02b0       stb r0,[gp,-256]
            0x000034d6      02d9           mov_s r1,0x0x2
            0x000034d8      031a42b0       stb r1,[gp,-253]
            0x000034dc      fb76           .short 0x76fb
            0x000034de      a1c0           add_s sp,sp,0x0x4
            0x000034e0      c1c6           pop_s r14
            0x000034e2      e07f           j_s.d [blink]
            0x000034e4      c1c5           pop_s r13
            0x000034e6      8c210280       cmp r1,128
            0x000034ea      6ef5           bne_s -292 ;0x000033c4
            0x000034ec      12080000       bl 16 ;0x000034fc
            0x000034f0      6af1           b_s -300 ;0x000033c4
            0x000034f2      fb76           .short 0x76fb
            0x000034f4      a1c0           add_s sp,sp,0x0x4
            0x000034f6      c1c6           pop_s r14
            0x000034f8      e07f           j_s.d [blink]
            0x000034fa      c1c5           pop_s r13
            0x000034fc      f1c0           push_s blink
            0x000034fe      5a0c400a       bl 85080 ;0x00018154
            0x00003502      0871           .short 0x7108
            0x00003504      160e2011       bl.d 140820 ;0x00025b18
            0x00003508      fec9           ld_s r0,[gp,-8]
            0x0000350a      d1c0           pop_s blink
            0x0000350c      e07e           j_s [blink]
            0x0000350e      e078           nop_s
            0x00003510      a1c1           sub_s sp,sp,0x0x4
            0x00003512      e1c5           push_s r13
            0x00003514      eb75           .short 0x75eb
            0x00003516      61c0           stb_s r0,[sp,0x0x4]
            0x00003518      81c1           add_s r1,sp,0x0x4
            0x0000351a      ffc9           ld_s r0,[gp,-4]
            0x0000351c      00da           mov_s r2,0x0
            0x0000351e      660e2012       bl.d 149092 ;0x00027b80
            0x00003522      4873           .short 0x7348
            0x00003524      cf73           mov_s 0x0,3
            0x00003526      ff00000a       b 82174 ;0x00017622
            0x0000352a      04138280       ldb r2,[r3,-252]
            0x0000352e      8622ff07       bic r2,r2,-33
            0x00003532      04ea           breq_s r2,0x0,8 ;0x00003538
            0x00003534      760e8006       bl 54900 ;0x00010ba8
            0x00003538      fb75           .short 0x75fb
            0x0000353a      c1c5           pop_s r13
            0x0000353c      e07f           j_s.d [blink]
            0x0000353e      a1c0           add_s sp,sp,0x0x4
            0x00003540      a1c1           sub_s sp,sp,0x0x4
            0x00003542      e1c5           push_s r13
            0x00003544      eb75           .short 0x75eb
            0x00003546      61c0           stb_s r0,[sp,0x0x4]
            0x00003548      81c1           add_s r1,sp,0x0x4
            0x0000354a      00c8           ld_s r0,[gp,0]
            0x0000354c      00da           mov_s r2,0x0
            0x0000354e      360e2012       bl.d 149044 ;0x00027b80
            0x00003552      4873           .short 0x7348
            0x00003554      cf73           mov_s 0x0,3
            0x00003556      ff00000a       b 82174 ;0x00017652
            0x0000355a      04138280       ldb r2,[r3,-252]
            0x0000355e      8622fe0f       bic r2,r2,-65
            0x00003562      04ea           breq_s r2,0x0,8 ;0x00003568
            0x00003564      6e0e8006       bl 54892 ;0x00010bd0
            0x00003568      fb75           .short 0x75fb
            0x0000356a      c1c5           pop_s r13
            0x0000356c      e07f           j_s.d [blink]
            0x0000356e      a1c0           add_s sp,sp,0x0x4
            0x00003570      f1c0           push_s blink
            0x00003572      8a0ea006       bl.d 54920 ;0x00010bf8
            0x00003576      4b1a02b0       stb r0,[gp,-181]
            0x0000357a      d1c0           pop_s blink
            0x0000357c      e07e           j_s [blink]
            0x0000357e      e078           nop_s
            0x00003580      e1c5           push_s r13
            0x00003582      e1c6           push_s r14
            0x00003584      e1c7           push_s r15
            0x00003586      fc1c08b4       st.aw r16,[sp,-4]
            0x0000358a      fc1c48b4       st.aw r17,[sp,-4]
            0x0000358e      0a21c027       mov r17,blink
            0x00003592      1a70           .short 0x701a
            0x00003594      2877           .short 0x7728
            0x00003596      cf75           mov_s 0x0,5
            0x00003598      8000d406       b 55424 ;0x00010e18
            0x0000359c      17002000       b.d 22 ;0x000035b2
            0x000035a0      01de           mov_s r14,0x0x1
            0x000035a2      ab26487000..   sr 0x0x3,[aux_irq_hint]
            0x000035aa      e078           nop_s
            0x000035ac      e078           nop_s
            0x000035ae      e078           nop_s
            0x000035b0      e078           nop_s
            0x000035b2      020aa00e       bl.d 119296 ;0x000207b0
            0x000035b6      c8ad           stb_s r14,[r13,0x0x8]
            0x000035b8      75e8           breq_s r0,0x0,-22 ;0x000035a2
            0x000035ba      0a70           .short 0x700a
            0x000035bc      ba0b200d       bl.d 107448 ;0x0001d974
            0x000035c0      e971           .short 0x71e9
            0x000035c2      cf70           mov_s 0x0,0
            0x000035c4      80000004       b 32896 ;0x0000b644
            0x000035c8      4488           ldb_s r2,[r0,0x0x4]
            0x000035ca      0dea           breq_s r2,0x0,26 ;0x000035e2
            0x000035cc      8c22c38f       cmp r2,255
            0x000035d0      09f2           beq_s 18 ;0x000035e2
            0x000035d2      cf70           mov_s 0x0,0
            0x000035d4      80000404       bn 32896 ;0x0000b654
            0x000035d8      2168           add_s r1,r0,0x0x1
            0x000035da      4268           add_s r2,r0,0x0x2
            0x000035dc      c60e2005       bl.d 42692 ;0x0000dca0
            0x000035e0      6368           add_s r3,r0,0x0x3
            0x000035e2      00d9           mov_s r1,0x0
            0x000035e4      28ad           stb_s r1,[r13,0x0x8]
            0x000035e6      0a274034       mov blink,r17
            0x000035ea      04141134       ld.ab r17,[sp,4]
            0x000035ee      04141034       ld.ab r16,[sp,4]
            0x000035f2      c1c7           pop_s r15
            0x000035f4      c1c6           pop_s r14
            0x000035f6      e07f           j_s.d [blink]
            0x000035f8      c1c5           pop_s r13
            0x000035fa      e078           nop_s
            0x000035fc      e1c5           push_s r13
            0x000035fe      e1c6           push_s r14
            0x00003600      e1c7           push_s r15
            0x00003602      fc1c08b4       st.aw r16,[sp,-4]
            0x00003606      fc1c48b4       st.aw r17,[sp,-4]
            0x0000360a      a1c1           sub_s sp,sp,0x0x4
            0x0000360c      0a21c027       mov r17,blink
            0x00003610      8877           .short 0x7788
            0x00003612      cf76           mov_s 0x0,6
            0x00003614      8000a006       b.d 53376 ;0x00010694
            0x00003618      021e0211       stb r4,[r14,2]
            0x0000361c      40290401       asl r4,r1,0x0x4
            0x00003620      8624ff03       bic r4,r4,-49
            0x00003624      2f240701       extb r4,r4
            0x00003628      17083100       brne.d.nt r0,0x0,22 ;0x0000363e
            0x0000362c      21ae           stb_s r1,[r14,0x0x1]
            0x0000362e      4f24c400       bset r4,r4,0x0x3
            0x00003632      2f240701       extb r4,r4
            0x00003636      00d8           mov_s r0,0x0
            0x00003638      13002000       b.d 18 ;0x0000364a
            0x0000363c      00ae           stb_s r0,[r14,0x0]
            0x0000363e      4f240200       bset r2,r4,0x0
            0x00003642      2f248700       extb r4,r2
            0x00003646      01da           mov_s r2,0x0x1
            0x00003648      40ae           stb_s r2,[r14,0x0]
            0x0000364a      42b6           sth_s r2,[r14,0x0x4]
            0x0000364c      00dd           mov_s r13,0x0
            0x0000364e      04bb           asl_s r3,r3,0x0x4
            0x00003650      8623fc03       bic r3,r3,-241
            0x00003654      210a3000       breq.d.nt r2,0x0,32 ;0x00003674
            0x00003658      2f20c720       extb r16,r3
            0x0000365c      4f248400       bset r4,r4,0x0x2
            0x00003660      2f240701       extb r4,r4
            0x00003664      5c7d           asr_s r13,r2
            0x00003666      af7d           extb_s r13,r13
            0x00003668      c0ba           bmsk_s r2,r2,0x0
            0x0000366a      4f7a           extb_s r2,r2
            0x0000366c      05220204       or r2,r2,r16
            0x00003670      2f208720       extb r16,r2
            0x00003674      8a20490c       mov r0,625
            0x00003678      8871           .short 0x7188
            0x0000367a      920c600c       bl.d 101520 ;0x0001c308
            0x0000367e      ffda           mov_s r2,0x0xff
            0x00003680      8a20490d       mov r0,629
            0x00003684      e971           .short 0x71e9
            0x00003686      860c600c       bl.d 101508 ;0x0001c308
            0x0000368a      ffda           mov_s r2,0x0xff
            0x0000368c      8a20890d       mov r0,630
            0x00003690      a971           .short 0x71a9
            0x00003692      7a0c600c       bl.d 101496 ;0x0001c308
            0x00003696      ffda           mov_s r2,0x0xff
            0x00003698      8a20c90d       mov r0,631
            0x0000369c      0a71           .short 0x710a
            0x0000369e      6e0c600c       bl.d 101484 ;0x0001c308
            0x000036a2      ffda           mov_s r2,0x0xff
            0x000036a4      8b72           .short 0x728b
            0x000036a6      8a200508       mov r0,352
            0x000036aa      1209a009       bl.d 78096 ;0x000167b8
            0x000036ae      02d9           mov_s r1,0x0x2
            0x000036b0      84e8           brne_s r0,0x0,8 ;0x000036b8
            0x000036b2      17002000       b.d 22 ;0x000036c6
            0x000036b6      00d8           mov_s r0,0x0
            0x000036b8      01148130       ldb r1,[sp,1]
            0x000036bc      20c2           ldb_s r2,[sp,0x0]
            0x000036be      08b9           asl_s r1,r1,0x0x8
            0x000036c0      4579           or_s r1,r1,r2
            0x000036c2      23b6           sth_s r1,[r14,0x0x6]
            0x000036c4      01d8           mov_s r0,0x0x1
            0x000036c6      0a274034       mov blink,r17
            0x000036ca      a1c0           add_s sp,sp,0x0x4
            0x000036cc      04141134       ld.ab r17,[sp,4]
            0x000036d0      04141034       ld.ab r16,[sp,4]
            0x000036d4      c1c7           pop_s r15
            0x000036d6      c1c6           pop_s r14
            0x000036d8      e07f           j_s.d [blink]
            0x000036da      c1c5           pop_s r13
            0x000036dc      40230401       add r4,r3,0x0x4
            0x000036e0      00140500       ld r5,[r4]
            0x000036e4      00130600       ld r6,[r3]
            0x000036e8      00194001       st r5,[r1]
            0x000036ec      270a3000       breq.d.nt r2,0x0,38 ;0x00003712
            0x000036f0      40230402       add r4,r3,0x0x8
            0x000036f4      0d08a201       brlt.d.nt r0,r6,12 ;0x00003700
            0x000036f8      04140304       ld.ab r3,[r4,4]
            0x000036fc      1d08c200       brlt.nt r0,r3,28 ;0x00003718
            0x00003700      d873           .short 0x73d8
            0x00003702      61ba           sub_s r2,r2,0x0x1
            0x00003704      507a           exth_s r2,r2
            0x00003706      04140504       ld.ab r5,[r4,4]
            0x0000370a      ed0a3180       brne.d.nt r2,0x0,-20 ;0x000036f4
            0x0000370e      00194001       st r5,[r1]
            0x00003712      0b002000       b.d 10 ;0x0000371a
            0x00003716      00d8           mov_s r0,0x0
            0x00003718      01d8           mov_s r0,0x0x1
            0x0000371a      e07e           j_s [blink]
            0x0000371c      e1c5           push_s r13
            0x0000371e      e1c6           push_s r14
            0x00003720      e1c7           push_s r15
            0x00003722      a1c1           sub_s sp,sp,0x0x4
            0x00003724      eb77           .short 0x77eb
            0x00003726      0875           .short 0x7508
            0x00003728      0fd8           mov_s r0,0x0xf
            0x0000372a      80d9           mov_s r1,0x0x80
            0x0000372c      920a600c       bl.d 101008 ;0x0001c1bc
            0x00003730      2872           .short 0x7228
            0x00003732      08e8           breq_s r0,0x0,16 ;0x00003740
            0x00003734      18d8           mov_s r0,0x0x18
            0x00003736      02d9           mov_s r1,0x0x2
            0x00003738      860a600c       bl.d 100996 ;0x0001c1bc
            0x0000373c      2872           .short 0x7228
            0x0000373e      89e8           brne_s r0,0x0,18 ;0x0000374e
            0x00003740      00d8           mov_s r0,0x0
            0x00003742      fb77           .short 0x77fb
            0x00003744      a1c0           add_s sp,sp,0x0x4
            0x00003746      c1c7           pop_s r15
            0x00003748      c1c6           pop_s r14
            0x0000374a      e07f           j_s.d [blink]
            0x0000374c      c1c5           pop_s r13
            0x0000374e      8a20c90c       mov r0,627
            0x00003752      08d9           mov_s r1,0x0x8
            0x00003754      b60b600c       bl.d 101300 ;0x0001c308
            0x00003758      2872           .short 0x7228
            0x0000375a      74e8           breq_s r0,0x0,-24 ;0x00003740
            0x0000375c      0a240007       mov r4,sp
            0x00003760      08d8           mov_s r0,0x0x8
            0x00003762      10d9           mov_s r1,0x0x10
            0x00003764      01da           mov_s r2,0x0x1
            0x00003766      5e0e200c       bl.d 99932 ;0x0001bdc0
            0x0000376a      00db           mov_s r3,0x0
            0x0000376c      1cd8           mov_s r0,0x0x1c
            0x0000376e      02d9           mov_s r1,0x0x2
            0x00003770      4e0a600c       bl.d 100940 ;0x0001c1bc
            0x00003774      2872           .short 0x7228
            0x00003776      0ce8           breq_s r0,0x0,24 ;0x0000378c
            0x00003778      20c0           ldb_s r0,[sp,0x0]
            0x0000377a      81e0           cmp_s r0,0x0x1
            0x0000377c      7ef4           bne_s 252 ;0x00003878
            0x0000377e      40244130       add r1,sp,0x0x1
            0x00003782      6209200c       bl.d 98656 ;0x0001b8e0
            0x00003786      8a20890e       mov r0,634
            0x0000378a      89e8           brne_s r0,0x0,18 ;0x0000379a
            0x0000378c      00d8           mov_s r0,0x0
            0x0000378e      fb77           .short 0x77fb
            0x00003790      a1c0           add_s sp,sp,0x0x4
            0x00003792      c1c7           pop_s r15
            0x00003794      c1c6           pop_s r14
            0x00003796      e07f           j_s.d [blink]
            0x00003798      c1c5           pop_s r13
            0x0000379a      40248130       add r1,sp,0x0x2
            0x0000379e      4609200c       bl.d 98628 ;0x0001b8e0
            0x000037a2      8a20490e       mov r0,633
            0x000037a6      74e8           breq_s r0,0x0,-24 ;0x0000378c
            0x000037a8      4024c130       add r1,sp,0x0x3
            0x000037ac      3609200c       bl.d 98612 ;0x0001b8e0
            0x000037b0      8a20090e       mov r0,632
            0x000037b4      6ce8           breq_s r0,0x0,-40 ;0x0000378c
            0x000037b6      01148230       ldb r2,[sp,1]
            0x000037ba      02148130       ldb r1,[sp,2]
            0x000037be      10ba           asl_s r2,r2,0x0x10
            0x000037c0      0422820fff..   and r2,r2,0x0xff0000
            0x000037c8      08b9           asl_s r1,r1,0x0x8
            0x000037ca      0421810f00..   and r1,r1,0x0xff00
            0x000037d2      05218400       or r4,r1,r2
            0x000037d6      cf76           mov_s 0x0,6
            0x000037d8      8000a006       b.d 53376 ;0x00010858
            0x000037dc      228e           ldb_s r1,[r14,0x0x2]
            0x000037de      03148030       ldb r0,[sp,3]
            0x000037e2      15093000       breq.d.nt r1,0x0,20 ;0x000037f4
            0x000037e6      05240400       or r4,r4,r0
            0x000037ea      02b9           asl_s r1,r1,0x0x2
            0x000037ec      8a0aafff       bl.d -3448 ;0x00002a74
            0x000037f0      8870           .short 0x7088
            0x000037f2      9870           .short 0x7098
            0x000037f4      218e           ldb_s r1,[r14,0x0x1]
            0x000037f6      11e9           breq_s r1,0x0,34 ;0x00003816
            0x000037f8      31095000       breq.nt r1,0x0x1,48 ;0x00003828
            0x000037fc      3f099000       breq.nt r1,0x0x2,62 ;0x0000383a
            0x00003800      8d09d180       brne.nt r1,0x0x3,-116 ;0x0000378c
            0x00003804      412c4102       lsr r1,r4,0x0x9
            0x00003808      c0b9           bmsk_s r1,r1,0x0
            0x0000380a      41095100       brne.nt r1,0x0x1,64 ;0x00003848
            0x0000380e      3d002000       b.d 60 ;0x00003848
            0x00003812      85243000       or r4,r4,-1024
            0x00003816      412c8301       lsr r3,r4,0x0x6
            0x0000381a      c0bb           bmsk_s r3,r3,0x0
            0x0000381c      2d0b5100       brne.nt r3,0x0x1,44 ;0x00003848
            0x00003820      29002000       b.d 40 ;0x00003848
            0x00003824      85243e00       or r4,r4,-128
            0x00003828      412cc201       lsr r2,r4,0x0x7
            0x0000382c      c0ba           bmsk_s r2,r2,0x0
            0x0000382e      1d0a5100       brne.nt r2,0x0x1,28 ;0x00003848
            0x00003832      19002000       b.d 24 ;0x00003848
            0x00003836      85243c00       or r4,r4,-256
            0x0000383a      412c0202       lsr r2,r4,0x0x8
            0x0000383e      c0ba           bmsk_s r2,r2,0x0
            0x00003840      090a5100       brne.nt r2,0x0x1,8 ;0x00003848
            0x00003844      85243800       or r4,r4,-512
            0x00003848      008e           ldb_s r0,[r14,0x0]
            0x0000384a      1f085100       brne.nt r0,0x0x1,30 ;0x00003866
            0x0000384e      0396           ldh_s r0,[r14,0x0x6]
            0x00003850      0420830f00..   and r3,r0,0x0x8000
            0x00003858      05eb           breq_s r3,0x0,10 ;0x00003862
            0x0000385a      0520800fff..   or r0,r0,0x0xffff0000
            0x00003862      00240400       add r4,r4,r0
            0x00003866      001d0011       st r4,[r13]
            0x0000386a      20c0           ldb_s r0,[sp,0x0]
            0x0000386c      fb77           .short 0x77fb
            0x0000386e      a1c0           add_s sp,sp,0x0x4
            0x00003870      c1c7           pop_s r15
            0x00003872      c1c6           pop_s r14
            0x00003874      e07f           j_s.d [blink]
            0x00003876      c1c5           pop_s r13
            0x00003878      fb77           .short 0x77fb
            0x0000387a      a1c0           add_s sp,sp,0x0x4
            0x0000387c      c1c7           pop_s r15
            0x0000387e      c1c6           pop_s r14
            0x00003880      e07f           j_s.d [blink]
            0x00003882      c1c5           pop_s r13
            0x00003884      f1c0           push_s blink
            0x00003886      0871           .short 0x7108
            0x00003888      a20d200b       bl.d 91552 ;0x00019e28
            0x0000388c      01d8           mov_s r0,0x0x1
            0x0000388e      d1c0           pop_s blink
            0x00003890      e07e           j_s [blink]
            0x00003892      e078           nop_s
            0x00003894      e1c5           push_s r13
            0x00003896      e1c6           push_s r14
            0x00003898      f1c0           push_s blink
            0x0000389a      0876           .short 0x7608
            0x0000389c      e6c9           ld_s r0,[gp,-104]
            0x0000389e      0420830f00..   and r3,r0,0x0xc0
            0x000038a6      4f0b3000       breq.d.nt r3,0x0,78 ;0x000038f2
            0x000038aa      2875           .short 0x7528
            0x000038ac      0420820f00..   and r2,r0,0x0x40
            0x000038b4      0eea           breq_s r2,0x0,28 ;0x000038d0
            0x000038b6      ee0c2004       bl.d 34028 ;0x0000bda0
            0x000038ba      06d8           mov_s r0,0x0x6
            0x000038bc      05e8           breq_s r0,0x0,10 ;0x000038c6
            0x000038be      cf71           mov_s 0x0,1
            0x000038c0      0000520f       b 124928 ;0x000220c0
            0x000038c4      02f0           b_s 4 ;0x000038c8
            0x000038c6      00d9           mov_s r1,0x0
            0x000038c8      2875           .short 0x7528
            0x000038ca      0b002000       b.d 10 ;0x000038d2
            0x000038ce      e6c9           ld_s r0,[gp,-104]
            0x000038d0      00dd           mov_s r13,0x0
            0x000038d2      8620fd0f       bic r0,r0,-129
            0x000038d6      0de8           breq_s r0,0x0,26 ;0x000038ee
            0x000038d8      ca0c2004       bl.d 33992 ;0x0000bda0
            0x000038dc      07d8           mov_s r0,0x0x7
            0x000038de      06e8           breq_s r0,0x0,12 ;0x000038e8
            0x000038e0      cf71           mov_s 0x0,1
            0x000038e2      0000520f       b 124928 ;0x000220e0
            0x000038e6      06f0           b_s 12 ;0x000038f0
            0x000038e8      09002000       b.d 8 ;0x000038f0
            0x000038ec      00d9           mov_s r1,0x0
            0x000038ee      00d9           mov_s r1,0x0
            0x000038f0      2876           .short 0x7628
            0x000038f2      960fefff       bl.d -108 ;0x00003884
            0x000038f6      a970           .short 0x70a9
            0x000038f8      1e082000       bl.d 28 ;0x00003914
            0x000038fc      c970           .short 0x70c9
            0x000038fe      d1c0           pop_s blink
            0x00003900      c1c6           pop_s r14
            0x00003902      e07f           j_s.d [blink]
            0x00003904      c1c5           pop_s r13
            0x00003906      e078           nop_s
            0x00003908      f1c0           push_s blink
            0x0000390a      8e0fcfff       bl -116 ;0x00003894
            0x0000390e      d1c0           pop_s blink
            0x00003910      e07e           j_s [blink]
            0x00003912      e078           nop_s
            0x00003914      f1c0           push_s blink
            0x00003916      0871           .short 0x7108
            0x00003918      120d200b       bl.d 91408 ;0x00019e28
            0x0000391c      02d8           mov_s r0,0x0x2
            0x0000391e      d1c0           pop_s blink
            0x00003920      e07e           j_s [blink]
            0x00003922      e078           nop_s
            0x00003924      f1c0           push_s blink
            0x00003926      0871           .short 0x7108
            0x00003928      020d200b       bl.d 91392 ;0x00019e28
            0x0000392c      00d8           mov_s r0,0x0
            0x0000392e      d1c0           pop_s blink
            0x00003930      e07e           j_s [blink]
            0x00003932      e078           nop_s
            0x00003934      e1c5           push_s r13
            0x00003936      e1c6           push_s r14
            0x00003938      e61201b6       ld.as r1,[gp,-26]
            0x0000393c      c0b9           bmsk_s r1,r1,0x0
            0x0000393e      1b093000       breq.d.nt r1,0x0,26 ;0x00003956
            0x00003942      eb76           .short 0x76eb
            0x00003944      00dd           mov_s r13,0x0
            0x00003946      5e0c2004       bl.d 33884 ;0x0000bda0
            0x0000394a      a970           .short 0x70a9
            0x0000394c      04e8           breq_s r0,0x0,8 ;0x00003954
            0x0000394e      0b002000       b.d 10 ;0x00003956
            0x00003952      01d8           mov_s r0,0x0x1
            0x00003954      a970           .short 0x70a9
            0x00003956      05e8           breq_s r0,0x0,10 ;0x0000395e
            0x00003958      09002000       b.d 8 ;0x00003960
            0x0000395c      00db           mov_s r3,0x0
            0x0000395e      01db           mov_s r3,0x0x1
            0x00003960      cf70           mov_s 0x0,0
            0x00003962      f00000c6       b -474896 ;0xfffffffffff8fa50
            0x00003966      96108280       ldb r2,[r0,-106]
            0x0000396a      c0bb           bmsk_s r3,r3,0x0
            0x0000396c      a0ba           bclr_s r2,r2,0x0
            0x0000396e      657a           or_s r2,r2,r3
            0x00003970      96188280       stb r2,[r0,-106]
            0x00003974      fb76           .short 0x76fb
            0x00003976      c1c6           pop_s r14
            0x00003978      e07f           j_s.d [blink]
            0x0000397a      c1c5           pop_s r13
            0x0000397c      e07e           j_s [blink]
            0x0000397e      e078           nop_s
            0x00003980      e07e           j_s [blink]
            0x00003982      e078           nop_s
            0x00003984      e07e           j_s [blink]
            0x00003986      e078           nop_s
            0x00003988      f1c0           push_s blink
            0x0000398a      0871           .short 0x7108
            0x0000398c      9e0c200b       bl.d 91292 ;0x00019e28
            0x00003990      04d8           mov_s r0,0x0x4
            0x00003992      d1c0           pop_s blink
            0x00003994      e07e           j_s [blink]
            0x00003996      e078           nop_s
            0x00003998      f1c0           push_s blink
            0x0000399a      0871           .short 0x7108
            0x0000399c      8e0c200b       bl.d 91276 ;0x00019e28
            0x000039a0      07d8           mov_s r0,0x0x7
            0x000039a2      d1c0           pop_s blink
            0x000039a4      e07e           j_s [blink]
            0x000039a6      e078           nop_s
            0x000039a8      e07e           j_s [blink]
            0x000039aa      e078           nop_s
            0x000039ac      e1c5           push_s r13
            0x000039ae      e1c6           push_s r14
            0x000039b0      e61201b6       ld.as r1,[gp,-26]
            0x000039b4      86217f0f       bic r1,r1,-3
            0x000039b8      19093000       breq.d.nt r1,0x0,24 ;0x000039d0
            0x000039bc      eb76           .short 0x76eb
            0x000039be      01dd           mov_s r13,0x0x1
            0x000039c0      e20b2004       bl.d 33760 ;0x0000bda0
            0x000039c4      a970           .short 0x70a9
            0x000039c6      05e8           breq_s r0,0x0,10 ;0x000039ce
            0x000039c8      09002000       b.d 8 ;0x000039d0
            0x000039cc      a970           .short 0x70a9
            0x000039ce      00d8           mov_s r0,0x0
            0x000039d0      04e8           breq_s r0,0x0,8 ;0x000039d8
            0x000039d2      0b002000       b.d 10 ;0x000039da
            0x000039d6      00d8           mov_s r0,0x0
            0x000039d8      01d8           mov_s r0,0x0x1
            0x000039da      cf71           mov_s 0x0,1
            0x000039dc      f00000c6       b -474896 ;0xfffffffffff8facc
            0x000039e0      9a118280       ldb r2,[r1,-102]
            0x000039e4      c0b8           bmsk_s r0,r0,0x0
            0x000039e6      a0ba           bclr_s r2,r2,0x0
            0x000039e8      057a           or_s r2,r2,r0
            0x000039ea      9a198280       stb r2,[r1,-102]
            0x000039ee      fb76           .short 0x76fb
            0x000039f0      c1c6           pop_s r14
            0x000039f2      e07f           j_s.d [blink]
            0x000039f4      c1c5           pop_s r13
            0x000039f6      e078           nop_s
            0x000039f8      e1c5           push_s r13
            0x000039fa      e61201b6       ld.as r1,[gp,-26]
            0x000039fe      8621ff0d       bic r1,r1,-9
            0x00003a02      19093000       breq.d.nt r1,0x0,24 ;0x00003a18
            0x00003a06      eb75           .short 0x75eb
            0x00003a08      9a0b2004       bl.d 33688 ;0x0000bda0
            0x00003a0c      03d8           mov_s r0,0x0x3
            0x00003a0e      05e8           breq_s r0,0x0,10 ;0x00003a16
            0x00003a10      09002000       b.d 8 ;0x00003a18
            0x00003a14      64d8           mov_s r0,0x0x64
            0x00003a16      00d8           mov_s r0,0x0
            0x00003a18      0b085200       brlt.nt r0,0x0x1,10 ;0x00003a22
            0x00003a1c      09002000       b.d 8 ;0x00003a24
            0x00003a20      02d9           mov_s r1,0x0x2
            0x00003a22      00d9           mov_s r1,0x0
            0x00003a24      cf73           mov_s 0x0,3
            0x00003a26      8000b40c       b.d 102528 ;0x0001caa4
            0x00003a2a      4183           ld_s r2,[r3,0x0x4]
            0x00003a2c      20a2           st_s r1,[r2,0x0]
            0x00003a2e      da0e000e       bl 116440 ;0x00020104
            0x00003a32      cf72           mov_s 0x0,2
            0x00003a34      8000c00c       b 104576 ;0x0001d2b4
            0x00003a38      2182           ld_s r1,[r2,0x0x4]
            0x00003a3a      fb75           .short 0x75fb
            0x00003a3c      00a1           st_s r0,[r1,0x0]
            0x00003a3e      e07f           j_s.d [blink]
            0x00003a40      c1c5           pop_s r13
            0x00003a42      e078           nop_s
            0x00003a44      e1c5           push_s r13
            0x00003a46      e61201b6       ld.as r1,[gp,-26]
            0x00003a4a      8621ff0e       bic r1,r1,-5
            0x00003a4e      0f093000       breq.d.nt r1,0x0,14 ;0x00003a5a
            0x00003a52      eb75           .short 0x75eb
            0x00003a54      4e0b2004       bl.d 33612 ;0x0000bda0
            0x00003a58      02d8           mov_s r0,0x0x2
            0x00003a5a      fb75           .short 0x75fb
            0x00003a5c      e07f           j_s.d [blink]
            0x00003a5e      c1c5           pop_s r13
            0x00003a60      e07e           j_s [blink]
            0x00003a62      e078           nop_s
            0x00003a64      e1c5           push_s r13
            0x00003a66      e1c6           push_s r14
            0x00003a68      e1c7           push_s r15
            0x00003a6a      fc1c08b4       st.aw r16,[sp,-4]
            0x00003a6e      0a20c027       mov r16,blink
            0x00003a72      0875           .short 0x7508
            0x00003a74      ca086007       bl.d 59592 ;0x0001233c
            0x00003a78      01d9           mov_s r1,0x0x1
            0x00003a7a      3a85           ld_s r1,[r13,0x0x68]
            0x00003a7c      8621ff07       bic r1,r1,-33
            0x00003a80      27093100       brne.d.nt r1,0x0,38 ;0x00003aa6
            0x00003a84      0877           .short 0x7708
            0x00003a86      5085           ld_s r2,[r13,0x0x40]
            0x00003a88      cf76           mov_s 0x0,6
            0x00003a8a      a291           ldh_s r13,[r1,0x0x4]
            0x00003a8c      c5b3           sth_s r14,[r3,0x0xa]
            0x00003a8e      052ebe10       divu 0x0,r14,r2
            0x00003a92      0d95           ldh_s r0,[r13,0x0x1a]
            0x00003a94      412bc272       lsr r2,r59,0x0xb
            0x00003a98      0f0a0400       brlo.nt r2,r0,14 ;0x00003aa6
            0x00003a9c      61b8           sub_s r0,r0,0x0x1
            0x00003a9e      1078           exth_s r0,r0
            0x00003aa0      fe0fa00a       bl.d 88060 ;0x0001929c
            0x00003aa4      a971           .short 0x71a9
            0x00003aa6      a8150310       ld r3,[r13,168]
            0x00003aaa      0423810f00..   and r1,r3,0x0x2000
            0x00003ab2      91e9           brne_s r1,0x0,34 ;0x00003ad2
            0x00003ab4      5085           ld_s r2,[r13,0x0x40]
            0x00003ab6      cf76           mov_s 0x0,6
            0x00003ab8      a291           ldh_s r13,[r1,0x0x4]
            0x00003aba      c5b3           sth_s r14,[r3,0x0xa]
            0x00003abc      052ebe10       divu 0x0,r14,r2
            0x00003ac0      412bc272       lsr r2,r59,0x0xb
            0x00003ac4      0f0f8410       brlo.nt r15,r2,14 ;0x00003ad2
            0x00003ac8      ecb5           sth_s r15,[r13,0x0x18]
            0x00003aca      01d8           mov_s r0,0x0x1
            0x00003acc      75002000       b.d 116 ;0x00003b40
            0x00003ad0      0bb5           sth_s r0,[r13,0x0x16]
            0x00003ad2      85158110       ldb r1,[r13,133]
            0x00003ad6      0f099100       brne.nt r1,0x0x2,14 ;0x00003ae2
            0x00003ada      0b95           ldh_s r0,[r13,0x0x16]
            0x00003adc      d1e0           cmp_s r0,0x0x51
            0x00003ade      62000c00       ble 98 ;0x00003b3e
            0x00003ae2      412b4204       lsr r2,r3,0x0x11
            0x00003ae6      c1ba           bmsk_s r2,r2,0x0x1
            0x00003ae8      cf76           mov_s 0x0,6
            0x00003aea      a291           ldh_s r13,[r1,0x0x4]
            0x00003aec      c5b3           sth_s r14,[r3,0x0xa]
            0x00003aee      410a5100       brne.nt r2,0x0x1,64 ;0x00003b2c
            0x00003af2      8623fb0f       bic r3,r3,-257
            0x00003af6      9ceb           brne_s r3,0x0,56 ;0x00003b2c
            0x00003af8      4a150211       ldh r2,[r13,74]
            0x00003afc      270a800f00..   breq.nt r2,0x0xffff,38 ;0x00003b22
            0x00003b04      86158010       ldb r0,[r13,134]
            0x00003b08      80200204       add r0,r0,144
            0x00003b0c      0f78           extb_s r0,r0
            0x00003b0e      9608600e       bl.d 116884 ;0x000203a0
            0x00003b12      368d           ldb_s r1,[r13,0x0x16]
            0x00003b14      0b95           ldh_s r0,[r13,0x0x16]
            0x00003b16      0f085200       brlt.nt r0,0x0x1,14 ;0x00003b22
            0x00003b1a      00d8           mov_s r0,0x0
            0x00003b1c      820fa00a       bl.d 87936 ;0x0001929c
            0x00003b20      a971           .short 0x71a9
            0x00003b22      02d9           mov_s r1,0x0x2
            0x00003b24      56254015       add3 r0,r13,0x0x15
            0x00003b28      9a084012       bl 149656 ;0x000283c0
            0x00003b2c      5085           ld_s r2,[r13,0x0x40]
            0x00003b2e      052ebe10       divu 0x0,r14,r2
            0x00003b32      412bc272       lsr r2,r59,0x0xb
            0x00003b36      4cb5           sth_s r2,[r13,0x0x18]
            0x00003b38      960c200b       bl.d 91284 ;0x00019fcc
            0x00003b3c      a970           .short 0x70a9
            0x00003b3e      00d8           mov_s r0,0x0
            0x00003b40      0a270034       mov blink,r16
            0x00003b44      04141034       ld.ab r16,[sp,4]
            0x00003b48      c1c7           pop_s r15
            0x00003b4a      c1c6           pop_s r14
            0x00003b4c      e07f           j_s.d [blink]
            0x00003b4e      c1c5           pop_s r13
            0x00003b50      f1c0           push_s blink
            0x00003b52      0a24800f80..   mov r4,0x0x800834
            0x00003b5a      14148100       ldb r1,[r4,20]
            0x00003b5e      0421800f00..   and r0,r1,0x0x40
            0x00003b66      08e8           breq_s r0,0x0,16 ;0x00003b74
            0x00003b68      39120337       ldh.as r3,[gp,57]
            0x00003b6c      84eb           brne_s r3,0x0,8 ;0x00003b74
            0x00003b6e      0ad8           mov_s r0,0x0xa
            0x00003b70      391a1c30       sth.as r0,[gp,57]
            0x00003b74      15148300       ldb r3,[r4,21]
            0x00003b78      8c23c38f       cmp r3,255
            0x00003b7c      49f6           bge_s 18 ;0x00003b8e
            0x00003b7e      18140200       ld r2,[r4,24]
            0x00003b82      86227f0f       bic r2,r2,-3
            0x00003b86      05ea           breq_s r2,0x0,10 ;0x00003b8e
            0x00003b88      01e3           add_s r3,r3,0x0x1
            0x00003b8a      151cc200       stb r3,[r4,21]
            0x00003b8e      0421820f00..   and r2,r1,0x0x80
            0x00003b96      05ea           breq_s r2,0x0,10 ;0x00003b9e
            0x00003b98      0b002000       b.d 10 ;0x00003ba2
            0x00003b9c      01d8           mov_s r0,0x0x1
            0x00003b9e      00d8           mov_s r0,0x0
            0x00003ba0      0871           .short 0x7108
            0x00003ba2      fe0bc00a       bl 89084 ;0x0001979c
            0x00003ba6      d1c0           pop_s blink
            0x00003ba8      e07e           j_s [blink]
            0x00003baa      e078           nop_s
            0x00003bac      e1c5           push_s r13
            0x00003bae      e1c6           push_s r14
            0x00003bb0      7b1281b0       ldb r1,[gp,-133]
            0x00003bb4      eb76           .short 0x76eb
            0x00003bb6      c0b9           bmsk_s r1,r1,0x0
            0x00003bb8      09093000       breq.d.nt r1,0x0,8 ;0x00003bc0
            0x00003bbc      01dd           mov_s r13,0x0x1
            0x00003bbe      00dd           mov_s r13,0x0
            0x00003bc0      9208400c       bl 100496 ;0x0001c450
            0x00003bc4      1f085101       brne.nt r0,0x0x5,30 ;0x00003be2
            0x00003bc8      0ded           breq_s r13,0x0,26 ;0x00003be2
            0x00003bca      611282b0       ldb r2,[gp,-159]
            0x00003bce      05ea           breq_s r2,0x0,10 ;0x00003bd6
            0x00003bd0      5a0c2003       bl.d 25688 ;0x0000a028
            0x00003bd4      00d8           mov_s r0,0x0
            0x00003bd6      cf71           mov_s 0x0,1
            0x00003bd8      80000004       b 32896 ;0x0000bc58
            0x00003bdc      0989           ldb_s r0,[r1,0x0x9]
            0x00003bde      a0b8           bclr_s r0,r0,0x0
            0x00003be0      09a9           stb_s r0,[r1,0x0x9]
            0x00003be2      7208400c       bl 100464 ;0x0001c450
            0x00003be6      0be8           breq_s r0,0x0,22 ;0x00003bfa
            0x00003be8      cf71           mov_s 0x0,1
            0x00003bea      80000004       b 32896 ;0x0000bc68
            0x00003bee      0989           ldb_s r0,[r1,0x0x9]
            0x00003bf0      00db           mov_s r3,0x0
            0x00003bf2      a4b8           bclr_s r0,r0,0x0x4
            0x00003bf4      09a9           stb_s r0,[r1,0x0x9]
            0x00003bf6      071ac2b0       stb r3,[gp,-249]
            0x00003bfa      fb76           .short 0x76fb
            0x00003bfc      c1c6           pop_s r14
            0x00003bfe      e07f           j_s.d [blink]
            0x00003c00      c1c5           pop_s r13
            0x00003c02      e078           nop_s
            0x00003c04      f1c0           push_s blink
            0x00003c06      060a0fff       bl -7676 ;0x00001e08
            0x00003c0a      d1c0           pop_s blink
            0x00003c0c      e07e           j_s [blink]
            0x00003c0e      e078           nop_s
            0x00003c10      e1c5           push_s r13
            0x00003c12      e1c6           push_s r14
            0x00003c14      5b086100       brne.d.nt r0,r1,90 ;0x00003c6e
            0x00003c18      eb76           .short 0x76eb
            0x00003c1a      cf75           mov_s 0x0,5
            0x00003c1c      8000600b       b.d 92288 ;0x0001a49c
            0x00003c20      ba62           add_s r2,r2,r13
            0x00003c22      708a           ldb_s r3,[r2,0x0x10]
            0x00003c24      28158010       ldb r0,[r13,40]
            0x00003c28      c6bb           bmsk_s r3,r3,0x0x6
            0x00003c2a      c6b8           bmsk_s r0,r0,0x0x6
            0x00003c2c      430b0100       brne.nt r3,r0,66 ;0x00003c6e
            0x00003c30      3d158210       ldb r2,[r13,61]
            0x00003c34      5f1283b0       ldb r3,[gp,-161]
            0x00003c38      82ba           bset_s r2,r2,0x0x2
            0x00003c3a      c4bb           bmsk_s r3,r3,0x0x4
            0x00003c3c      cf70           mov_s 0x0,0
            0x00003c3e      02001495       b -876542 ;0xfffffffffff2dc3e
            0x00003c42      1b63           add_s r3,r3,r0
            0x00003c44      68138380       ldb r3,[r3,-152]
            0x00003c48      3d1d8210       stb r2,[r13,61]
            0x00003c4c      757b           add2_s r3,r3,r3
            0x00003c4e      e51ad8b0       st.as r3,[gp,-27]
            0x00003c52      61b9           sub_s r1,r1,0x0x1
            0x00003c54      2f79           extb_s r1,r1
            0x00003c56      2a09a006       bl.d 53544 ;0x00010d7c
            0x00003c5a      00d8           mov_s r0,0x0
            0x00003c5c      27158210       ldb r2,[r13,39]
            0x00003c60      a6ba           bclr_s r2,r2,0x0x6
            0x00003c62      d20a2012       bl.d 148176 ;0x00027f30
            0x00003c66      271d8210       stb r2,[r13,39]
            0x00003c6a      0c1a1830       st.as r0,[gp,12]
            0x00003c6e      fb76           .short 0x76fb
            0x00003c70      c1c6           pop_s r14
            0x00003c72      e07f           j_s.d [blink]
            0x00003c74      c1c5           pop_s r13
            0x00003c76      e078           nop_s
            0x00003c78      e1c5           push_s r13
            0x00003c7a      e1c6           push_s r14
            0x00003c7c      2875           .short 0x7528
            0x00003c7e      cf71           mov_s 0x0,1
            0x00003c80      02003ca7       b.d -729086 ;0xfffffffffff51c82
            0x00003c84      3860           add_s r0,r0,r1
            0x00003c86      4088           ldb_s r2,[r0,0x0]
            0x00003c88      8c22c38f       cmp r2,255
            0x00003c8c      18002100       beq.d 24 ;0x00003ca4
            0x00003c90      eb76           .short 0x76eb
            0x00003c92      03ba           asl_s r2,r2,0x0x3
            0x00003c94      547a           add1_s r2,r2,r2
            0x00003c96      cf73           mov_s 0x0,3
            0x00003c98      80008012       b 151680 ;0x00028d18
            0x00003c9c      7a62           add_s r2,r2,r3
            0x00003c9e      128a           ldb_s r0,[r2,0x0x12]
            0x00003ca0      0b081302       brge.nt r0,0x0x8,10 ;0x00003caa
            0x00003ca4      13002000       b.d 18 ;0x00003cb6
            0x00003ca8      00d8           mov_s r0,0x0
            0x00003caa      0582           ld_s r0,[r2,0x0x14]
            0x00003cac      ca0d6fff       bl.d -4664 ;0x00002a74
            0x00003cb0      308a           ldb_s r1,[r2,0x0x10]
            0x00003cb2      00b5           sth_s r0,[r13,0x0]
            0x00003cb4      01d8           mov_s r0,0x0x1
            0x00003cb6      fb76           .short 0x76fb
            0x00003cb8      c1c6           pop_s r14
            0x00003cba      e07f           j_s.d [blink]
            0x00003cbc      c1c5           pop_s r13
            0x00003cbe      e078           nop_s
            0x00003cc0      4a240000       mov r4,0x0
            0x00003cc4      10180201       stb r4,[r0,16]
            0x00003cc8      08d9           mov_s r1,0x0x8
            0x00003cca      31a8           stb_s r1,[r0,0x0x11]
            0x00003ccc      07da           mov_s r2,0x0x7
            0x00003cce      52a8           stb_s r2,[r0,0x0x12]
            0x00003cd0      14180001       st r4,[r0,20]
            0x00003cd4      8871           .short 0x7188
            0x00003cd6      14204300       add1 r3,r0,r1
            0x00003cda      01e1           add_s r1,r1,0x0x1
            0x00003cdc      2f79           extb_s r1,r1
            0x00003cde      fb093282       brlt.d.nt r1,0x0x8,-6 ;0x00003cd6
            0x00003ce2      001b0401       sth r4,[r3]
            0x00003ce6      e07e           j_s [blink]
            0x00003ce8      7188           ldb_s r3,[r0,0x0x11]
            0x00003cea      416b           add_s r2,r3,0x0x1
            0x00003cec      4f7b           extb_s r3,r2
            0x00003cee      0d0b3202       brlt.d.nt r3,0x0x8,12 ;0x00003cf8
            0x00003cf2      51a8           stb_s r2,[r0,0x0x11]
            0x00003cf4      00db           mov_s r3,0x0
            0x00003cf6      71a8           stb_s r3,[r0,0x0x11]
            0x00003cf8      1420c400       add1 r4,r0,r3
            0x00003cfc      00140501       ldh r5,[r4]
            0x00003d00      4580           ld_s r2,[r0,0x0x14]
            0x00003d02      8c211080       cmp r1,1024
            0x00003d06      02224201       sub r2,r2,r5
            0x00003d0a      3a62           add_s r2,r2,r1
            0x00003d0c      45a0           st_s r2,[r0,0x0x14]
            0x00003d0e      10002200       bne.d 16 ;0x00003d1c
            0x00003d12      001c4400       sth r1,[r4]
            0x00003d16      15002000       b.d 20 ;0x00003d28
            0x00003d1a      72a8           stb_s r3,[r0,0x0x12]
            0x00003d1c      5288           ldb_s r2,[r0,0x0x12]
            0x00003d1e      0d0b8100       brne.nt r3,r2,12 ;0x00003d28
            0x00003d22      f707efff       b.d -10 ;0x00003d16
            0x00003d26      08db           mov_s r3,0x0x8
            0x00003d28      3088           ldb_s r1,[r0,0x0x10]
            0x00003d2a      0b091302       brge.nt r1,0x0x8,10 ;0x00003d32
            0x00003d2e      01e1           add_s r1,r1,0x0x1
            0x00003d30      30a8           stb_s r1,[r0,0x0x10]
            0x00003d32      e07e           j_s [blink]
            0x00003d34      051283b0       ldb r3,[gp,-251]
            0x00003d38      0b0bb101       brne.d.nt r3,0x0x6,10 ;0x00003d42
            0x00003d3c      61da           mov_s r2,0x0x61
            0x00003d3e      e07f           j_s.d [blink]
            0x00003d40      70d8           mov_s r0,0x0x70
            0x00003d42      590bd101       brne.nt r3,0x0x7,88 ;0x00003d98
            0x00003d46      4ccb           ldb_s r0,[gp,-180]
            0x00003d48      61b8           sub_s r0,r0,0x0x1
            0x00003d4a      51081502       brhs.nt r0,0x0x8,80 ;0x00003d98
            0x00003d4e      f026017000..   ld.as r1,[0x0x3d58,r0]
            0x00003d56      0079           j_s [r1]
            0x00003d58      783d0000       .word 0x3d780000
            0x00003d5c      7c3d0000       .word 0x3d7c0000
            0x00003d60      803d0000       .word 0x3d800000
            0x00003d64      843d0000       .word 0x3d840000
            0x00003d68      883d0000       .word 0x3d880000
            0x00003d6c      8c3d0000       .word 0x3d8c0000
            0x00003d70      903d0000       .word 0x3d900000
            0x00003d74      943d0000       .word 0x3d940000
            0x00003d78      e07f           j_s.d [blink]
            0x00003d7a      20d8           mov_s r0,0x0x20
            0x00003d7c      e07f           j_s.d [blink]
            0x00003d7e      21d8           mov_s r0,0x0x21
            0x00003d80      e07f           j_s.d [blink]
            0x00003d82      22d8           mov_s r0,0x0x22
            0x00003d84      e07f           j_s.d [blink]
            0x00003d86      23d8           mov_s r0,0x0x23
            0x00003d88      e07f           j_s.d [blink]
            0x00003d8a      24d8           mov_s r0,0x0x24
            0x00003d8c      e07f           j_s.d [blink]
            0x00003d8e      25d8           mov_s r0,0x0x25
            0x00003d90      e07f           j_s.d [blink]
            0x00003d92      26d8           mov_s r0,0x0x26
            0x00003d94      e07f           j_s.d [blink]
            0x00003d96      51d8           mov_s r0,0x0x51
            0x00003d98      e07f           j_s.d [blink]
            0x00003d9a      4870           .short 0x7048
            0x00003d9c      e1c5           push_s r13
            0x00003d9e      e1c6           push_s r14
            0x00003da0      e1c7           push_s r15
            0x00003da2      fc1c08b4       st.aw r16,[sp,-4]
            0x00003da6      a1c1           sub_s sp,sp,0x0x4
            0x00003da8      0a20c027       mov r16,blink
            0x00003dac      00dd           mov_s r13,0x0
            0x00003dae      cf76           mov_s 0x0,6
            0x00003db0      80001007       b 57472 ;0x00011e30
            0x00003db4      060a2001       bl.d 8708 ;0x00005fb8
            0x00003db8      a970           .short 0x70a9
            0x00003dba      91e8           brne_s r0,0x0,34 ;0x00003dda
            0x00003dbc      0ada           mov_s r2,0x0xa
            0x00003dbe      14264113       add1 r1,r14,r13
            0x00003dc2      42b1           sth_s r2,[r1,0x0x4]
            0x00003dc4      00d8           mov_s r0,0x0
            0x00003dc6      bb66           add_s r3,r14,r13
            0x00003dc8      06ab           stb_s r0,[r3,0x0x6]
            0x00003dca      04b1           sth_s r0,[r1,0x0x8]
            0x00003dcc      15264113       add2 r1,r14,r13
            0x00003dd0      03a1           st_s r0,[r1,0x0xc]
            0x00003dd2      c2086007       bl.d 59584 ;0x00012690
            0x00003dd6      a971           .short 0x71a9
            0x00003dd8      46f0           b_s 140 ;0x00003e64
            0x00003dda      2a0a2003       bl.d 25128 ;0x0000a000
            0x00003dde      a970           .short 0x70a9
            0x00003de0      0877           .short 0x7708
            0x00003de2      850f1010       breq.nt r15,0x0,132 ;0x00003e64
            0x00003de6      6a0dc001       bl 15720 ;0x00007b4c
            0x00003dea      05e8           breq_s r0,0x0,10 ;0x00003df2
            0x00003dec      c20ba00c       bl.d 103360 ;0x0001d1ac
            0x00003df0      e970           .short 0x70e9
            0x00003df2      2609e001       bl.d 14628 ;0x00007714
            0x00003df6      e970           .short 0x70e9
            0x00003df8      499f           ldh_s.x r2,[r15,0x0x12]
            0x00003dfa      190a5200       brlt.nt r2,0x0x1,24 ;0x00003e10
            0x00003dfe      5a87           ld_s r2,[r15,0x0x68]
            0x00003e00      8622ff07       bic r2,r2,-33
            0x00003e04      86ea           brne_s r2,0x0,12 ;0x00003e10
            0x00003e06      a8170110       ld r1,[r15,168]
            0x00003e0a      aeb9           bclr_s r1,r1,0x0xe
            0x00003e0c      a81f4010       st r1,[r15,168]
            0x00003e10      220a8fff       bl -3552 ;0x00003030
            0x00003e14      8de8           brne_s r0,0x0,26 ;0x00003e2e
            0x00003e16      5a87           ld_s r2,[r15,0x0x68]
            0x00003e18      8622ff07       bic r2,r2,-33
            0x00003e1c      89ea           brne_s r2,0x0,18 ;0x00003e2e
            0x00003e1e      360e000c       bl 99892 ;0x0001c450
            0x00003e22      07e8           breq_s r0,0x0,14 ;0x00003e2e
            0x00003e24      a8170110       ld r1,[r15,168]
            0x00003e28      aeb9           bclr_s r1,r1,0x0xe
            0x00003e2a      a81f4010       st r1,[r15,168]
            0x00003e2e      32082003       bl.d 24624 ;0x00009e5c
            0x00003e32      e970           .short 0x70e9
            0x00003e34      160ba001       bl.d 13076 ;0x00007148
            0x00003e38      e970           .short 0x70e9
            0x00003e3a      860ea001       bl.d 13956 ;0x000074bc
            0x00003e3e      e970           .short 0x70e9
            0x00003e40      c20a8006       bl 53952 ;0x00011100
            0x00003e44      0b0d0110       brne.nt r13,r0,10 ;0x00003e4e
            0x00003e48      ce0ce009       bl.d 81100 ;0x00017b14
            0x00003e4c      8b70           .short 0x708b
            0x00003e4e      22092004       bl.d 33056 ;0x0000bf6c
            0x00003e52      e970           .short 0x70e9
            0x00003e54      88e8           brne_s r0,0x0,16 ;0x00003e64
            0x00003e56      120cefff       bl.d -1008 ;0x00003a64
            0x00003e5a      e970           .short 0x70e9
            0x00003e5c      84e8           brne_s r0,0x0,8 ;0x00003e64
            0x00003e5e      1e0c6007       bl.d 60444 ;0x00012a78
            0x00003e62      e970           .short 0x70e9
            0x00003e64      01e5           add_s r13,r13,0x0x1
            0x00003e66      af7d           extb_s r13,r13
            0x00003e68      4d0d5290       brlt.nt r13,0x0x1,-180 ;0x00003db4
            0x00003e6c      0a270034       mov blink,r16
            0x00003e70      a1c0           add_s sp,sp,0x0x4
            0x00003e72      04141034       ld.ab r16,[sp,4]
            0x00003e76      c1c7           pop_s r15
            0x00003e78      c1c6           pop_s r14
            0x00003e7a      e07f           j_s.d [blink]
            0x00003e7c      c1c5           pop_s r13
            0x00003e7e      e078           nop_s
            0x00003e80      3cd9           mov_s r1,0x0x3c
            0x00003e82      cf70           mov_s 0x0,0
            0x00003e84      80001007       b 57472 ;0x00011f04
            0x00003e88      e07f           j_s.d [blink]
            0x00003e8a      20b0           sth_s r1,[r0,0x0]
            0x00003e8c      e1c5           push_s r13
            0x00003e8e      e1c6           push_s r14
            0x00003e90      e1c7           push_s r15
            0x00003e92      fc1c08b4       st.aw r16,[sp,-4]
            0x00003e96      fc1c48b4       st.aw r17,[sp,-4]
            0x00003e9a      0a21c027       mov r17,blink
            0x00003e9e      b60b2006       bl.d 50100 ;0x00010250
            0x00003ea2      00dd           mov_s r13,0x0
            0x00003ea4      8e090001       bl 8588 ;0x00006030
            0x00003ea8      da0be000       bl.d 7128 ;0x00005a80
            0x00003eac      0876           .short 0x7608
            0x00003eae      0e086004       bl.d 34828 ;0x0000c6b8
            0x00003eb2      c970           .short 0x70c9
            0x00003eb4      b2084010       bl 133296 ;0x00024764
            0x00003eb8      da0ca000       bl.d 5336 ;0x00005390
            0x00003ebc      c970           .short 0x70c9
            0x00003ebe      cf77           mov_s 0x0,-1
            0x00003ec0      80003407       b.d 57472 ;0x00011f40
            0x00003ec4      8a082001       bl.d 8328 ;0x00005f4c
            0x00003ec8      a970           .short 0x70a9
            0x00003eca      b9081000       breq.nt r0,0x0,184 ;0x00003f80
            0x00003ece      fe0aa006       bl.d 54012 ;0x000111c8
            0x00003ed2      a970           .short 0x70a9
            0x00003ed4      b2100101       ldh r1,[r0,178]
            0x00003ed8      c1b9           bmsk_s r1,r1,0x0x1
            0x00003eda      3d09f100       brne.d.nt r1,0x0x3,60 ;0x00003f14
            0x00003ede      0876           .short 0x7608
            0x00003ee0      3a0a4008       bl 68152 ;0x00014918
            0x00003ee4      17087100       brne.d.nt r0,0x0x1,22 ;0x00003efa
            0x00003ee8      b2160111       ldh r1,[r14,178]
            0x00003eec      50210300       bclr r3,r1,0x0
            0x00003ef0      7079           exth_s r1,r3
            0x00003ef2      15002000       b.d 20 ;0x00003f04
            0x00003ef6      b21ec410       sth r3,[r14,178]
            0x00003efa      50214200       bclr r2,r1,0x0x1
            0x00003efe      5079           exth_s r1,r2
            0x00003f00      b21e8410       sth r2,[r14,178]
            0x00003f04      5cd8           mov_s r0,0x0x5c
            0x00003f06      820f6000       bl.d 3968 ;0x00004e84
            0x00003f0a      86168210       ldb r2,[r14,134]
            0x00003f0e      b2160111       ldh r1,[r14,178]
            0x00003f12      c1b9           bmsk_s r1,r1,0x0x1
            0x00003f14      77099100       brne.nt r1,0x0x2,118 ;0x00003f8a
            0x00003f18      ae160311       ldh r3,[r14,174]
            0x00003f1c      e4e3           cmp_s r3,0x0x64
            0x00003f1e      6e000b00       blt 110 ;0x00003f8a
            0x00003f22      7a86           ld_s r3,[r14,0x0x68]
            0x00003f24      8623ff07       bic r3,r3,-33
            0x00003f28      31eb           breq_s r3,0x0,98 ;0x00003f8a
            0x00003f2a      b0168010       ldb r0,[r14,176]
            0x00003f2e      afe8           brne_s r0,0x0,94 ;0x00003f8a
            0x00003f30      4a200020       mov r16,0x0
            0x00003f34      0a70           .short 0x700a
            0x00003f36      7a0fe00c       bl.d 106360 ;0x0001deac
            0x00003f3a      c971           .short 0x71c9
            0x00003f3c      29085100       brne.nt r0,0x0x1,40 ;0x00003f64
            0x00003f40      a8160010       ld r0,[r14,168]
            0x00003f44      ba67           add_s r2,r15,r13
            0x00003f46      8620fb0f       bic r0,r0,-257
            0x00003f4a      ae1e0414       sth r16,[r14,174]
            0x00003f4e      3f083100       brne.d.nt r0,0x0,62 ;0x00003f8a
            0x00003f52      0c1a0204       stb r16,[r2,12]
            0x00003f56      58d8           mov_s r0,0x0x58
            0x00003f58      0a71           .short 0x710a
            0x00003f5a      2e0f6000       bl.d 3884 ;0x00004e84
            0x00003f5e      86168210       ldb r2,[r14,134]
            0x00003f62      15f0           b_s 42 ;0x00003f8a
            0x00003f64      ba67           add_s r2,r15,r13
            0x00003f66      6c8a           ldb_s r3,[r2,0x0xc]
            0x00003f68      016b           add_s r0,r3,0x0x1
            0x00003f6a      0f7b           extb_s r3,r0
            0x00003f6c      1f0b320f       brlt.d.nt r3,0x0x3c,30 ;0x00003f8a
            0x00003f70      0caa           stb_s r0,[r2,0x0xc]
            0x00003f72      0c1a0204       stb r16,[r2,12]
            0x00003f76      01d9           mov_s r1,0x0x1
            0x00003f78      13002000       b.d 18 ;0x00003f8a
            0x00003f7c      b01e4210       stb r1,[r14,176]
            0x00003f80      4a200020       mov r16,0x0
            0x00003f84      ba67           add_s r2,r15,r13
            0x00003f86      0c1a0204       stb r16,[r2,12]
            0x00003f8a      01e5           add_s r13,r13,0x0x1
            0x00003f8c      af7d           extb_s r13,r13
            0x00003f8e      390d5290       brlt.nt r13,0x0x1,-200 ;0x00003ec4
            0x00003f92      0a274034       mov blink,r17
            0x00003f96      04141134       ld.ab r17,[sp,4]
            0x00003f9a      04141034       ld.ab r16,[sp,4]
            0x00003f9e      c1c7           pop_s r15
            0x00003fa0      c1c6           pop_s r14
            0x00003fa2      e07f           j_s.d [blink]
            0x00003fa4      c1c5           pop_s r13
            0x00003fa6      e078           nop_s
            0x00003fa8      f1c0           push_s blink
            0x00003faa      aa0e2002       bl.d 18088 ;0x00008650
            0x00003fae      00d8           mov_s r0,0x0
            0x00003fb0      ffd8           mov_s r0,0x0xff
            0x00003fb2      cf71           mov_s 0x0,1
            0x00003fb4      80000004       b 32896 ;0x0000c034
            0x00003fb8      93190200       stb r0,[r1,147]
            0x00003fbc      ea0be007       bl.d 64488 ;0x00013ba4
            0x00003fc0      92190200       stb r0,[r1,146]
            0x00003fc4      d1c0           pop_s blink
            0x00003fc6      e07e           j_s [blink]
            0x00003fc8      e1c5           push_s r13
            0x00003fca      e1c6           push_s r14
            0x00003fcc      e1c7           push_s r15
            0x00003fce      eb77           .short 0x77eb
            0x00003fd0      820c000c       bl 99456 ;0x0001c450
            0x00003fd4      cf76           mov_s 0x0,6
            0x00003fd6      80003407       b.d 57472 ;0x00012054
            0x00003fda      0875           .short 0x7508
            0x00003fdc      28168010       ldb r0,[r14,40]
            0x00003fe0      1b085001       breq.nt r0,0x0x5,26 ;0x00003ffa
            0x00003fe4      170d5111       brne.nt r13,0x0x5,22 ;0x00003ffa
            0x00003fe8      0e0b8000       bl 4876 ;0x000052f4
            0x00003fec      281e4213       stb r13,[r14,40]
            0x00003ff0      fb77           .short 0x77fb
            0x00003ff2      c1c7           pop_s r15
            0x00003ff4      c1c6           pop_s r14
            0x00003ff6      e07f           j_s.d [blink]
            0x00003ff8      c1c5           pop_s r13
            0x00003ffa      0ce8           breq_s r0,0x0,24 ;0x00004010
            0x00003ffc      8aed           brne_s r13,0x0,20 ;0x00004010
            0x00003ffe      760b8000       bl 4980 ;0x00005370
            0x00004002      281e4213       stb r13,[r14,40]
            0x00004006      fb77           .short 0x77fb
            0x00004008      c1c7           pop_s r15
            0x0000400a      c1c6           pop_s r14
            0x0000400c      e07f           j_s.d [blink]
            0x0000400e      c1c5           pop_s r13
            0x00004010      281e4213       stb r13,[r14,40]
            0x00004014      fb77           .short 0x77fb
            0x00004016      c1c7           pop_s r15
            0x00004018      c1c6           pop_s r14
            0x0000401a      e07f           j_s.d [blink]
            0x0000401c      c1c5           pop_s r13
            0x0000401e      e078           nop_s
            0x00004020      e1c5           push_s r13
            0x00004022      e1c6           push_s r14
            0x00004024      e1c7           push_s r15
            0x00004026      fc1c08b4       st.aw r16,[sp,-4]
            0x0000402a      0a20c027       mov r16,blink
            0x0000402e      00dd           mov_s r13,0x0
            0x00004030      8a0fe000       bl.d 8072 ;0x00005fb8
            0x00004034      a970           .short 0x70a9
            0x00004036      97081000       breq.nt r0,0x0,150 ;0x000040ca
            0x0000403a      9209a006       bl.d 53648 ;0x000111c8
            0x0000403e      a970           .short 0x70a9
            0x00004040      221283b0       ldb r3,[gp,-222]
            0x00004044      1b0b7000       breq.d.nt r3,0x0x1,26 ;0x0000405e
            0x00004048      0876           .short 0x7608
            0x0000404a      590b9000       breq.nt r3,0x0x2,88 ;0x000040a0
            0x0000404e      7f0b1101       brne.nt r3,0x0x4,126 ;0x000040ca
            0x00004052      5c168110       ldb r1,[r14,92]
            0x00004056      8621ff0e       bic r1,r1,-5
            0x0000405a      36e9           breq_s r1,0x0,108 ;0x000040c4
            0x0000405c      31f0           b_s 98 ;0x000040be
            0x0000405e      b4da           mov_s r2,0x0xb4
            0x00004060      00de           mov_s r14,0x0
            0x00004062      ffd9           mov_s r1,0x0xff
            0x00004064      02df           mov_s r15,0x0x2
            0x00004066      cf70           mov_s 0x0,0
            0x00004068      8000c80b       bnv 96384 ;0x0001b8e8
            0x0000406c      e0a8           stb_s r15,[r0,0x0]
            0x0000406e      04db           mov_s r3,0x0x4
            0x00004070      63a8           stb_s r3,[r0,0x0x3]
            0x00004072      41a8           stb_s r2,[r0,0x0x1]
            0x00004074      24a8           stb_s r1,[r0,0x0x4]
            0x00004076      24184200       stb r1,[r0,36]
            0x0000407a      16120136       ld.as r1,[gp,22]
            0x0000407e      c2a8           stb_s r14,[r0,0x0x2]
            0x00004080      28a0           st_s r1,[r0,0x0x20]
            0x00004082      7a0ae00c       bl.d 105080 ;0x0001daf8
            0x00004086      dda8           stb_s r14,[r0,0x0x1d]
            0x00004088      08e8           breq_s r0,0x0,16 ;0x00004098
            0x0000408a      221ac2b3       stb r15,[gp,-222]
            0x0000408e      0bd8           mov_s r0,0x0xb
            0x00004090      de0c2009       bl.d 74972 ;0x0001656c
            0x00004094      cdd9           mov_s r1,0x0xcd
            0x00004096      1bf0           b_s 54 ;0x000040ca
            0x00004098      33002000       b.d 50 ;0x000040ca
            0x0000409c      221a82b3       stb r14,[gp,-222]
            0x000040a0      f20b2009       bl.d 74736 ;0x00016490
            0x000040a4      0bd8           mov_s r0,0x0xb
            0x000040a6      27089100       brne.nt r0,0x0x2,38 ;0x000040ca
            0x000040aa      5c168110       ldb r1,[r14,92]
            0x000040ae      86217f0f       bic r1,r1,-3
            0x000040b2      87e9           brne_s r1,0x0,14 ;0x000040be
            0x000040b4      04db           mov_s r3,0x0x4
            0x000040b6      17002000       b.d 22 ;0x000040ca
            0x000040ba      221ac2b0       stb r3,[gp,-222]
            0x000040be      dd07efff       b.d -36 ;0x00004098
            0x000040c2      00de           mov_s r14,0x0
            0x000040c4      80da           mov_s r2,0x0x80
            0x000040c6      221a82b0       stb r2,[gp,-222]
            0x000040ca      01e5           add_s r13,r13,0x0x1
            0x000040cc      af7d           extb_s r13,r13
            0x000040ce      650d5290       brlt.nt r13,0x0x1,-156 ;0x00004030
            0x000040d2      0a270034       mov blink,r16
            0x000040d6      04141034       ld.ab r16,[sp,4]
            0x000040da      c1c7           pop_s r15
            0x000040dc      c1c6           pop_s r14
            0x000040de      e07f           j_s.d [blink]
            0x000040e0      c1c5           pop_s r13
            0x000040e2      e078           nop_s
            0x000040e4      e1c5           push_s r13
            0x000040e6      a1c1           sub_s sp,sp,0x0x4
            0x000040e8      eb75           .short 0x75eb
            0x000040ea      2873           .short 0x7328
            0x000040ec      8b71           .short 0x718b
            0x000040ee      4a0e6000       bl.d 3656 ;0x00004f34
            0x000040f2      01da           mov_s r2,0x0x1
            0x000040f4      04148034       ldb.ab r0,[sp,4]
            0x000040f8      fb75           .short 0x75fb
            0x000040fa      e07f           j_s.d [blink]
            0x000040fc      c1c5           pop_s r13
            0x000040fe      e078           nop_s
            0x00004100      f1c0           push_s blink
            0x00004102      4873           .short 0x7348
            0x00004104      fc1c4ab0       stb.aw r1,[sp,-4]
            0x00004108      8b71           .short 0x718b
            0x0000410a      01da           mov_s r2,0x0x1
            0x0000410c      720f6000       bl.d 3952 ;0x0000507c
            0x00004110      4a240000       mov r4,0x0
            0x00004114      a1c0           add_s sp,sp,0x0x4
            0x00004116      d1c0           pop_s blink
            0x00004118      e07e           j_s [blink]
            0x0000411a      e078           nop_s
            0x0000411c      e1c5           push_s r13
            0x0000411e      e1c6           push_s r14
            0x00004120      e1c7           push_s r15
            0x00004122      fc1c08b4       st.aw r16,[sp,-4]
            0x00004126      fc1c48b4       st.aw r17,[sp,-4]
            0x0000412a      fc1c88b4       st.aw r18,[sp,-4]
            0x0000412e      0a22c027       mov r18,blink
            0x00004132      4877           .short 0x7748
            0x00004134      4088           ldb_s r2,[r0,0x0]
            0x00004136      2876           .short 0x7628
            0x00004138      1a70           .short 0x701a
            0x0000413a      9d0a3000       breq.d.nt r2,0x0,156 ;0x000041d4
            0x0000413e      ffdd           mov_s r13,0x0xff
            0x00004140      bd0a5000       breq.nt r2,0x0x1,188 ;0x000041fc
            0x00004144      d50a9000       breq.nt r2,0x0x2,212 ;0x00004218
            0x00004148      83e2           cmp_s r2,0x0x3
            0x0000414a      83f4           bne_s 262 ;0x0000424e
            0x0000414c      008e           ldb_s r0,[r14,0x0]
            0x0000414e      80e0           cmp_s r0,0x0
            0x00004150      fe000900       bgt 254 ;0x0000424e
            0x00004154      ae0ee002       bl.d 24236 ;0x0000a000
            0x00004158      00dd           mov_s r13,0x0
            0x0000415a      3a70           .short 0x703a
            0x0000415c      e9091020       breq.nt r17,0x0,232 ;0x00004244
            0x00004160      48110021       ldh r0,[r17,72]
            0x00004164      e108800f00..   breq.nt r0,0x0xffff,224 ;0x00004244
            0x0000416c      42284202       asr r2,r0,0x0x9
            0x00004170      c6ba           bmsk_s r2,r2,0x0x6
            0x00004172      4f79           extb_s r1,r2
            0x00004174      7d68           asr_s r3,r0,0x0x5
            0x00004176      c3bb           bmsk_s r3,r3,0x0x3
            0x00004178      6f7a           extb_s r2,r3
            0x0000417a      c4b8           bmsk_s r0,r0,0x0x4
            0x0000417c      c909b207       brlt.d.nt r1,0x0x1e,200 ;0x00004244
            0x00004180      0f78           extb_s r0,r0
            0x00004182      c50a5200       brlt.nt r2,0x0x1,196 ;0x00004244
            0x00004186      c10a5303       brge.nt r2,0x0xd,192 ;0x00004244
            0x0000418a      bd081000       breq.nt r0,0x0,188 ;0x00004244
            0x0000418e      cf73           mov_s 0x0,3
            0x00004190      8b2ee9a2       asrs.f r22,r22,-1461
            0x00004194      7eb9           sub_s r1,r1,0x0x1e
            0x00004196      2c7b           mpy_s r3,r3,r1
            0x00004198      4129c407       lsr r4,r1,0x0x1f
            0x0000419c      422b8370       asr r3,r59,0x0x2
            0x000041a0      8073           add_s r3,r3,r4
            0x000041a2      1523c400       add2 r4,r3,r3
            0x000041a6      14230301       add1 r3,r3,r4
            0x000041aa      2f24c000       asl r4,r3
            0x000041ae      02210101       sub r1,r1,r4
            0x000041b2      cf73           mov_s 0x0,3
            0x000041b4      020094a0       b -782334 ;0xfffffffffff451b6
            0x000041b8      7961           add_s r1,r1,r3
            0x000041ba      2989           ldb_s r1,[r1,0x0x9]
            0x000041bc      7a62           add_s r2,r2,r3
            0x000041be      00184220       stb r1,[r16]
            0x000041c2      ff128180       ldb r1,[r2,-1]
            0x000041c6      1b63           add_s r3,r3,r0
            0x000041c8      20ae           stb_s r1,[r14,0x0]
            0x000041ca      ff138180       ldb r1,[r3,-1]
            0x000041ce      83002000       b.d 130 ;0x0000424e
            0x000041d2      20af           stb_s r1,[r15,0x0]
            0x000041d4      008e           ldb_s r0,[r14,0x0]
            0x000041d6      bde8           brne_s r0,0x0,122 ;0x0000424e
            0x000041d8      f20f4006       bl 53232 ;0x000111c8
            0x000041dc      4a100101       ldh r1,[r0,74]
            0x000041e0      00184220       stb r1,[r16]
            0x000041e4      4a100101       ldh r1,[r0,74]
            0x000041e8      0421810f00..   and r1,r1,0x0xff00
            0x000041f0      48b9           asr_s r1,r1,0x0x8
            0x000041f2      20ae           stb_s r1,[r14,0x0]
            0x000041f4      a0af           stb_s r13,[r15,0x0]
            0x000041f6      5b002000       b.d 90 ;0x0000424e
            0x000041fa      00dd           mov_s r13,0x0
            0x000041fc      008e           ldb_s r0,[r14,0x0]
            0x000041fe      a9e8           brne_s r0,0x0,82 ;0x0000424e
            0x00004200      ca0f4006       bl 53192 ;0x000111c8
            0x00004204      3a70           .short 0x703a
            0x00004206      90110121       ldh r1,[r17,144]
            0x0000420a      00184220       stb r1,[r16]
            0x0000420e      a0af           stb_s r13,[r15,0x0]
            0x00004210      a0ae           stb_s r13,[r14,0x0]
            0x00004212      3f002000       b.d 62 ;0x0000424e
            0x00004216      00dd           mov_s r13,0x0
            0x00004218      008f           ldb_s r0,[r15,0x0]
            0x0000421a      9be8           brne_s r0,0x0,54 ;0x0000424e
            0x0000421c      ae0f4006       bl 53164 ;0x000111c8
            0x00004220      3a70           .short 0x703a
            0x00004222      008e           ldb_s r0,[r14,0x0]
            0x00004224      90110121       ldh r1,[r17,144]
            0x00004228      8620fc03       bic r0,r0,-241
            0x0000422c      1078           exth_s r0,r0
            0x0000422e      c3b9           bmsk_s r1,r1,0x0x3
            0x00004230      3079           exth_s r1,r1
            0x00004232      2578           or_s r0,r0,r1
            0x00004234      1079           exth_s r1,r0
            0x00004236      90190420       sth r0,[r17,144]
            0x0000423a      70d8           mov_s r0,0x0x70
            0x0000423c      4a0c6000       bl.d 3144 ;0x00004e84
            0x00004240      00da           mov_s r2,0x0
            0x00004242      e3f1           b_s -58 ;0x00004206
            0x00004244      ffd8           mov_s r0,0x0xff
            0x00004246      00af           stb_s r0,[r15,0x0]
            0x00004248      00ae           stb_s r0,[r14,0x0]
            0x0000424a      00180220       stb r0,[r16]
            0x0000424e      a970           .short 0x70a9
            0x00004250      0a278034       mov blink,r18
            0x00004254      04141234       ld.ab r18,[sp,4]
            0x00004258      04141134       ld.ab r17,[sp,4]
            0x0000425c      04141034       ld.ab r16,[sp,4]
            0x00004260      c1c7           pop_s r15
            0x00004262      c1c6           pop_s r14
            0x00004264      e07f           j_s.d [blink]
            0x00004266      c1c5           pop_s r13
            0x00004268      e1c5           push_s r13
            0x0000426a      e1c6           push_s r14
            0x0000426c      e1c7           push_s r15
            0x0000426e      fc1c08b4       st.aw r16,[sp,-4]
            0x00004272      0a20c027       mov r16,blink
            0x00004276      00dd           mov_s r13,0x0
            0x00004278      520f6006       bl.d 53072 ;0x000111c8
            0x0000427c      a970           .short 0x70a9
            0x0000427e      5520ce06       add2 r14,r0,0x0x1b
            0x00004282      408e           ldb_s r2,[r14,0x0]
            0x00004284      3b0a730c       brge.d.nt r2,0x0x31,58 ;0x000042be
            0x00004288      0877           .short 0x7708
            0x0000428a      ffd8           mov_s r0,0x0xff
            0x0000428c      5a096001       bl.d 10584 ;0x00006be4
            0x00004290      01d9           mov_s r1,0x0x1
            0x00004292      2d081301       brge.nt r0,0x0x4,44 ;0x000042bc
            0x00004296      6608e001       bl.d 14436 ;0x00007af8
            0x0000429a      ffd8           mov_s r0,0x0xff
            0x0000429c      21089300       brge.nt r0,0x0x2,32 ;0x000042bc
            0x000042a0      051281b0       ldb r1,[gp,-251]
            0x000042a4      0d09d200       brlt.nt r1,0x0x3,12 ;0x000042b0
            0x000042a8      15002000       b.d 20 ;0x000042bc
            0x000042ac      051a42b3       stb r13,[gp,-251]
            0x000042b0      cf70           mov_s 0x0,0
            0x000042b2      80000c07       ble 57472 ;0x00012330
            0x000042b6      420f6007       bl.d 61248 ;0x000131f4
            0x000042ba      0080           ld_s r0,[r0,0x0]
            0x000042bc      408e           ldb_s r2,[r14,0x0]
            0x000042be      a6e2           cmp_s r2,0x0x26
            0x000042c0      6ff2           beq_s 222 ;0x0000439e
            0x000042c2      0cf6           bgt_s 24 ;0x000042d8
            0x000042c4      870a1000       breq.nt r2,0x0,134 ;0x0000434a
            0x000042c8      8d0a5000       breq.nt r2,0x0x1,140 ;0x00004354
            0x000042cc      42220308       sub r3,r2,0x0x20
            0x000042d0      85e3           cmp_s r3,0x0x5
            0x000042d2      20010d00       bhi 288 ;0x000043f0
            0x000042d6      65f0           b_s 202 ;0x0000439e
            0x000042d8      d1e2           cmp_s r2,0x0x51
            0x000042da      63f2           beq_s 198 ;0x0000439e
            0x000042dc      3e000900       bgt 62 ;0x0000431a
            0x000042e0      8f0a100c       breq.nt r2,0x0x30,142 ;0x0000436e
            0x000042e4      c0e2           cmp_s r2,0x0x40
            0x000042e6      04f2           beq_s 8 ;0x000042ec
            0x000042e8      d0e2           cmp_s r2,0x0x50
            0x000042ea      84f4           bne_s 264 ;0x000043f0
            0x000042ec      0e08e001       bl.d 14348 ;0x00007af8
            0x000042f0      ffd8           mov_s r0,0x0xff
            0x000042f2      1b089300       brge.nt r0,0x0x2,26 ;0x0000430a
            0x000042f6      b20ec010       bl 138928 ;0x000261a4
            0x000042fa      cf70           mov_s 0x0,0
            0x000042fc      80000c07       ble 57472 ;0x0001237c
            0x00004300      3a0e6007       bl.d 60984 ;0x00013138
            0x00004304      0080           ld_s r0,[r0,0x0]
            0x00004306      b60ec010       bl 138932 ;0x000261b8
            0x0000430a      4c1281b0       ldb r1,[gp,-180]
            0x0000430e      83095101       brne.nt r1,0x0x5,130 ;0x0000438e
            0x00004312      50da           mov_s r2,0x0x50
            0x00004314      dd002000       b.d 220 ;0x000043f0
            0x00004318      40ae           stb_s r2,[r14,0x0]
            0x0000431a      f0e2           cmp_s r2,0x0x70
            0x0000431c      58f2           beq_s 176 ;0x000043cc
            0x0000431e      0af6           bgt_s 20 ;0x00004330
            0x00004320      e0e2           cmp_s r2,0x0x60
            0x00004322      68f4           bne_s 208 ;0x000043f0
            0x00004324      120aefff       bl.d -1520 ;0x00003d34
            0x00004328      00d8           mov_s r0,0x0
            0x0000432a      c9002000       b.d 200 ;0x000043f0
            0x0000432e      00ae           stb_s r0,[r14,0x0]
            0x00004330      8c220280       cmp r2,128
            0x00004334      57f2           beq_s 174 ;0x000043e2
            0x00004336      8c22c38f       cmp r2,255
            0x0000433a      5cf4           bne_s 184 ;0x000043f0
            0x0000433c      00dd           mov_s r13,0x0
            0x0000433e      a1ae           stb_s r13,[r14,0x0x1]
            0x00004340      a2ae           stb_s r13,[r14,0x0x2]
            0x00004342      80da           mov_s r2,0x0x80
            0x00004344      ad002000       b.d 172 ;0x000043f0
            0x00004348      40ae           stb_s r2,[r14,0x0]
            0x0000434a      00dd           mov_s r13,0x0
            0x0000434c      a2b6           sth_s r13,[r14,0x0x4]
            0x0000434e      a7002000       b.d 166 ;0x000043f2
            0x00004352      a971           .short 0x71a9
            0x00004354      01d8           mov_s r0,0x0x1
            0x00004356      c2096009       bl.d 76224 ;0x00016d14
            0x0000435a      0871           .short 0x7108
            0x0000435c      95081000       breq.nt r0,0x0,148 ;0x000043f0
            0x00004360      00dd           mov_s r13,0x0
            0x00004362      a2ae           stb_s r13,[r14,0x0x2]
            0x00004364      a1ae           stb_s r13,[r14,0x0x1]
            0x00004366      30d8           mov_s r0,0x0x30
            0x00004368      89002000       b.d 136 ;0x000043f0
            0x0000436c      00ae           stb_s r0,[r14,0x0]
            0x0000436e      ffd8           mov_s r0,0x0xff
            0x00004370      76086001       bl.d 10356 ;0x00006be4
            0x00004374      01d9           mov_s r1,0x0x1
            0x00004376      7d085200       brlt.nt r0,0x0x1,124 ;0x000043f0
            0x0000437a      40db           mov_s r3,0x0x40
            0x0000437c      60ae           stb_s r3,[r14,0x0]
            0x0000437e      03da           mov_s r2,0x0x3
            0x00004380      051a82b0       stb r2,[gp,-251]
            0x00004384      01dd           mov_s r13,0x0x1
            0x00004386      6d002000       b.d 108 ;0x000043f0
            0x0000438a      4c1a42b3       stb r13,[gp,-180]
            0x0000438e      051281b0       ldb r1,[gp,-251]
            0x00004392      61099201       brlt.nt r1,0x0x6,96 ;0x000043f0
            0x00004396      60db           mov_s r3,0x0x60
            0x00004398      59002000       b.d 88 ;0x000043f0
            0x0000439c      60ae           stb_s r3,[r14,0x0]
            0x0000439e      2296           ldh_s r1,[r14,0x0x4]
            0x000043a0      cf77           mov_s 0x0,-1
            0x000043a2      000060ea       b.d -178176 ;0xfffffffffffd8ba0
            0x000043a6      150f4310       brge.nt r15,r1,20 ;0x000043b8
            0x000043aa      41ae           stb_s r2,[r14,0x0x1]
            0x000043ac      80da           mov_s r2,0x0x80
            0x000043ae      40ae           stb_s r2,[r14,0x0]
            0x000043b0      01dd           mov_s r13,0x0x1
            0x000043b2      49002000       b.d 72 ;0x000043f8
            0x000043b6      a2ae           stb_s r13,[r14,0x0x2]
            0x000043b8      01dd           mov_s r13,0x0x1
            0x000043ba      00d8           mov_s r0,0x0
            0x000043bc      5a096009       bl.d 76120 ;0x00016d14
            0x000043c0      a971           .short 0x71a9
            0x000043c2      03e8           breq_s r0,0x0,6 ;0x000043c6
            0x000043c4      a0ae           stb_s r13,[r14,0x0]
            0x000043c6      35002000       b.d 52 ;0x000043f8
            0x000043ca      2296           ldh_s r1,[r14,0x0x4]
            0x000043cc      a8170010       ld r0,[r15,168]
            0x000043d0      8620fb0f       bic r0,r0,-257
            0x000043d4      8ee8           brne_s r0,0x0,28 ;0x000043f0
            0x000043d6      80da           mov_s r2,0x0x80
            0x000043d8      40ae           stb_s r2,[r14,0x0]
            0x000043da      70d8           mov_s r0,0x0x70
            0x000043dc      15002000       b.d 20 ;0x000043f0
            0x000043e0      01ae           stb_s r0,[r14,0x0x1]
            0x000043e2      00dd           mov_s r13,0x0
            0x000043e4      a970           .short 0x70a9
            0x000043e6      32096009       bl.d 76080 ;0x00016d14
            0x000043ea      01d9           mov_s r1,0x0x1
            0x000043ec      02e8           breq_s r0,0x0,4 ;0x000043f0
            0x000043ee      a0ae           stb_s r13,[r14,0x0]
            0x000043f0      2296           ldh_s r1,[r14,0x0x4]
            0x000043f2      cf77           mov_s 0x0,-1
            0x000043f4      000060ea       b.d -178176 ;0xfffffffffffd8bf4
            0x000043f8      090f4210       brlt.nt r15,r1,8 ;0x00004400
            0x000043fc      05e1           add_s r1,r1,0x0x5
            0x000043fe      22b6           sth_s r1,[r14,0x0x4]
            0x00004400      0a270034       mov blink,r16
            0x00004404      04141034       ld.ab r16,[sp,4]
            0x00004408      c1c7           pop_s r15
            0x0000440a      c1c6           pop_s r14
            0x0000440c      e07f           j_s.d [blink]
            0x0000440e      c1c5           pop_s r13
            0x00004410      e1c5           push_s r13
            0x00004412      e1c6           push_s r14
            0x00004414      e1c7           push_s r15
            0x00004416      f1c0           push_s blink
            0x00004418      221283b0       ldb r3,[gp,-222]
            0x0000441c      cf75           mov_s 0x0,5
            0x0000441e      80008807       bnv 61568 ;0x0001349c
            0x00004422      00de           mov_s r14,0x0
            0x00004424      150b3000       breq.d.nt r3,0x0,20 ;0x00004438
            0x00004428      c4ad           stb_s r14,[r13,0x0x4]
            0x0000442a      fa0bcfff       bl -1032 ;0x00004020
            0x0000442e      d1c0           pop_s blink
            0x00004430      c1c7           pop_s r15
            0x00004432      c1c6           pop_s r14
            0x00004434      e07f           j_s.d [blink]
            0x00004436      c1c5           pop_s r13
            0x00004438      820be000       bl.d 7040 ;0x00005fb8
            0x0000443c      c970           .short 0x70c9
            0x0000443e      0871           .short 0x7108
            0x00004440      15093100       brne.d.nt r1,0x0,20 ;0x00004454
            0x00004444      048d           ldb_s r0,[r13,0x0x4]
            0x00004446      ce090002       bl 16844 ;0x00008610
            0x0000444a      d1c0           pop_s blink
            0x0000444c      c1c7           pop_s r15
            0x0000444e      c1c6           pop_s r14
            0x00004450      e07f           j_s.d [blink]
            0x00004452      c1c5           pop_s r13
            0x00004454      760d4006       bl 52596 ;0x000111c8
            0x00004458      a8100200       ld r2,[r0,168]
            0x0000445c      8622fd0f       bic r2,r2,-129
            0x00004460      470a3100       brne.d.nt r2,0x0,70 ;0x000044a6
            0x00004464      0877           .short 0x7708
            0x00004466      048d           ldb_s r0,[r13,0x0x4]
            0x00004468      5a0b2000       bl.d 856 ;0x000047c0
            0x0000446c      c971           .short 0x71c9
            0x0000446e      e20ae000       bl.d 6880 ;0x00005f4c
            0x00004472      048d           ldb_s r0,[r13,0x0x4]
            0x00004474      0ee8           breq_s r0,0x0,28 ;0x00004490
            0x00004476      56170011       ldh r0,[r15,86]
            0x0000447a      19089301       brge.nt r0,0x0x6,24 ;0x00004490
            0x0000447e      048d           ldb_s r0,[r13,0x0x4]
            0x00004480      002e017000..   asl r1,0x0x1,r0
            0x00004488      c0b9           bmsk_s r1,r1,0x0
            0x0000448a      04e9           breq_s r1,0x0,8 ;0x00004490
            0x0000448c      4e0f4001       bl 12108 ;0x000073d8
            0x00004490      221283b0       ldb r3,[gp,-222]
            0x00004494      89eb           brne_s r3,0x0,18 ;0x000044a6
            0x00004496      1e082000       bl.d 28 ;0x000044b0
            0x0000449a      048d           ldb_s r0,[r13,0x0x4]
            0x0000449c      d1c0           pop_s blink
            0x0000449e      c1c7           pop_s r15
            0x000044a0      c1c6           pop_s r14
            0x000044a2      e07f           j_s.d [blink]
            0x000044a4      c1c5           pop_s r13
            0x000044a6      d1c0           pop_s blink
            0x000044a8      c1c7           pop_s r15
            0x000044aa      c1c6           pop_s r14
            0x000044ac      e07f           j_s.d [blink]
            0x000044ae      c1c5           pop_s r13
            0x000044b0      e1c5           push_s r13
            0x000044b2      e1c6           push_s r14
            0x000044b4      e1c7           push_s r15
            0x000044b6      fc1c08b4       st.aw r16,[sp,-4]
            0x000044ba      fc1c48b4       st.aw r17,[sp,-4]
            0x000044be      fc1c88b4       st.aw r18,[sp,-4]
            0x000044c2      fc1cc8b4       st.aw r19,[sp,-4]
            0x000044c6      0a23c027       mov r19,blink
            0x000044ca      020d6006       bl.d 52480 ;0x000111c8
            0x000044ce      1a70           .short 0x701a
            0x000044d0      a8100100       ld r1,[r0,168]
            0x000044d4      0a21802f80..   mov r17,0x0x800788
            0x000044dc      8621fb0f       bic r1,r1,-257
            0x000044e0      08e9           breq_s r1,0x0,16 ;0x000044f0
            0x000044e2      14211224       add1 r18,r17,r16
            0x000044e6      0c1a842f00..   sth 0x0xffff,[r18,12]
            0x000044ee      94f0           b_s 296 ;0x00004614
            0x000044f0      40288d20       asl r13,r16,0x0x2
            0x000044f4      00214f23       add r15,r17,r13
            0x000044f8      4087           ld_s r2,[r15,0x0]
            0x000044fa      80e2           cmp_s r2,0x0
            0x000044fc      8cf2           beq_s 280 ;0x00004614
            0x000044fe      4c2000a0       cmp r16,0x0
            0x00004502      8af4           bne_s 276 ;0x00004614
            0x00004504      00de           mov_s r14,0x0
            0x00004506      6a0d2007       bl.d 58728 ;0x00012a6c
            0x0000450a      c970           .short 0x70c9
            0x0000450c      89e0           cmp_s r0,0x0x9
            0x0000450e      2ef2           beq_s 92 ;0x00004568
            0x00004510      08f6           bgt_s 16 ;0x00004520
            0x00004512      0be8           breq_s r0,0x0,22 ;0x00004526
            0x00004514      14211224       add1 r18,r17,r16
            0x00004518      79002000       b.d 120 ;0x00004590
            0x0000451c      0c120121       ldh r1,[r18,12]
            0x00004520      f5085007       breq.nt r0,0x0x1d,244 ;0x00004614
            0x00004524      f8f1           b_s -16 ;0x00004514
            0x00004526      c970           .short 0x70c9
            0x00004528      3e0ee00a       bl.d 89660 ;0x0001a364
            0x0000452c      1ed9           mov_s r1,0x0x1e
            0x0000452e      03d8           mov_s r0,0x0x3
            0x00004530      360ee00a       bl.d 89652 ;0x0001a364
            0x00004534      1ed9           mov_s r1,0x0x1e
            0x00004536      00210324       add r3,r17,r16
            0x0000453a      2e8b           ldb_s r1,[r3,0x0xe]
            0x0000453c      6ce9           breq_s r1,0x0,-40 ;0x00004514
            0x0000453e      14211224       add1 r18,r17,r16
            0x00004542      0c120121       ldh r1,[r18,12]
            0x00004546      4087           ld_s r2,[r15,0x0]
            0x00004548      22b9           lsr_s r1,r1,0x0x2
            0x0000454a      1c69           asr_s r0,r1,0x0x4
            0x0000454c      3bb8           lsr_s r0,r0,0x0x1b
            0x0000454e      1961           add_s r1,r1,r0
            0x00004550      c4b9           bmsk_s r1,r1,0x0x4
            0x00004552      0279           sub_s r1,r1,r0
            0x00004554      10224200       bclr r2,r2,r1
            0x00004558      40a7           st_s r2,[r15,0x0]
            0x0000455a      0c1a842f00..   sth 0x0xffff,[r18,12]
            0x00004562      b5002000       b.d 180 ;0x00004614
            0x00004566      ceab           stb_s r14,[r3,0x0xe]
            0x00004568      c970           .short 0x70c9
            0x0000456a      fe0de00a       bl.d 89596 ;0x0001a364
            0x0000456e      1ed9           mov_s r1,0x0x1e
            0x00004570      03d8           mov_s r0,0x0x3
            0x00004572      f60de00a       bl.d 89588 ;0x0001a364
            0x00004576      1ed9           mov_s r1,0x0x1e
            0x00004578      cf71           mov_s 0x0,1
            0x0000457a      0000ffff       b.d -2048 ;0x00003d78
            0x0000457e      14211224       add1 r18,r17,r16
            0x00004582      0c1a842f00..   sth 0x0xffff,[r18,12]
            0x0000458a      00210324       add r3,r17,r16
            0x0000458e      ceab           stb_s r14,[r3,0x0xe]
            0x00004590      2f09800f00..   breq.nt r1,0x0xffff,46 ;0x000045be
            0x00004598      56210004       add3 r0,r1,0x0x10
            0x0000459c      1078           exth_s r0,r0
            0x0000459e      40210122       add r1,r17,0x0x8
            0x000045a2      b961           add_s r1,r1,r13
            0x000045a4      04da           mov_s r2,0x0x4
            0x000045a6      0a73           .short 0x730a
            0x000045a8      d60a6000       bl.d 2772 ;0x0000507c
            0x000045ac      4a240000       mov r4,0x0
            0x000045b0      32e8           breq_s r0,0x0,100 ;0x00004614
            0x000045b2      01d9           mov_s r1,0x0x1
            0x000045b4      00210324       add r3,r17,r16
            0x000045b8      5d002000       b.d 92 ;0x00004614
            0x000045bc      2eab           stb_s r1,[r3,0x0xe]
            0x000045be      4087           ld_s r2,[r15,0x0]
            0x000045c0      00de           mov_s r14,0x0
            0x000045c2      412e8310       lsr r3,r14,0x0x2
            0x000045c6      1c6b           asr_s r0,r3,0x0x4
            0x000045c8      3bb8           lsr_s r0,r0,0x0x1b
            0x000045ca      1b63           add_s r3,r3,r0
            0x000045cc      c4bb           bmsk_s r3,r3,0x0x4
            0x000045ce      027b           sub_s r3,r3,r0
            0x000045d0      002ec07000..   asl r0,0x0x1,r3
            0x000045d8      4478           and_s r0,r0,r2
            0x000045da      88e8           brne_s r0,0x0,16 ;0x000045e8
            0x000045dc      04e6           add_s r14,r14,0x0x4
            0x000045de      d07e           exth_s r14,r14
            0x000045e0      8c260290       cmp r14,128
            0x000045e4      aff6           blt_s -34 ;0x000045c2
            0x000045e6      18f0           b_s 48 ;0x00004614
            0x000045e8      40284222       asl r2,r16,0x0x9
            0x000045ec      da62           add_s r2,r2,r14
            0x000045ee      0022810f80..   add r1,r2,0x0x801060
            0x000045f6      4081           ld_s r2,[r1,0x0]
            0x000045f8      c970           .short 0x70c9
            0x000045fa      42a7           st_s r2,[r15,0x0x8]
            0x000045fc      40210122       add r1,r17,0x0x8
            0x00004600      b961           add_s r1,r1,r13
            0x00004602      04da           mov_s r2,0x0x4
            0x00004604      0a73           .short 0x730a
            0x00004606      7a0a6000       bl.d 2680 ;0x0000507c
            0x0000460a      4a240000       mov r4,0x0
            0x0000460e      04e8           breq_s r0,0x0,8 ;0x00004614
            0x00004610      0c1a8423       sth r14,[r18,12]
            0x00004614      0a27c034       mov blink,r19
            0x00004618      04141334       ld.ab r19,[sp,4]
            0x0000461c      04141234       ld.ab r18,[sp,4]
            0x00004620      04141134       ld.ab r17,[sp,4]
            0x00004624      04141034       ld.ab r16,[sp,4]
            0x00004628      c1c7           pop_s r15
            0x0000462a      c1c6           pop_s r14
            0x0000462c      e07f           j_s.d [blink]
            0x0000462e      c1c5           pop_s r13
            0x00004630      e1c5           push_s r13
            0x00004632      e1c6           push_s r14
            0x00004634      eb76           .short 0x76eb
            0x00004636      2875           .short 0x7528
            0x00004638      40208700       add r7,r0,0x0x2
            0x0000463c      2f27c801       exth r7,r7
            0x00004640      56200604       add3 r6,r0,0x0x10
            0x00004644      2f268801       exth r6,r6
            0x00004648      8c200480       cmp r0,256
            0x0000464c      40268300       add r3,r6,0x0x2
            0x00004650      78002a00       bge.d 120 ;0x000046c8
            0x00004654      707b           exth_s r3,r3
            0x00004656      402a4502       asl r5,r2,0x0x9
            0x0000465a      00250100       add r1,r5,r0
            0x0000465e      0a24800f80..   mov r4,0x0x801060
            0x00004666      0025c201       add r2,r5,r7
            0x0000466a      8072           add_s r2,r2,r4
            0x0000466c      4092           ldh_s r2,[r2,0x0]
            0x0000466e      74210801       ldh.aw r8,[r1,r4]
            0x00004672      527a           not_s r2,r2
            0x00004674      507a           exth_s r2,r2
            0x00004676      1d0a0102       brne.nt r2,r8,28 ;0x00004690
            0x0000467a      01e0           add_s r0,r0,0x0x1
            0x0000467c      a070           add_s r0,r0,r5
            0x0000467e      72240300       ldb.aw r3,[r4,r0]
            0x00004682      2089           ldb_s r1,[r1,0x0]
            0x00004684      08bb           asl_s r3,r3,0x0x8
            0x00004686      257b           or_s r3,r3,r1
            0x00004688      7078           exth_s r0,r3
            0x0000468a      97002000       b.d 150 ;0x0000471e
            0x0000468e      60b5           sth_s r3,[r13,0x0]
            0x00004690      9708830f00..   brge.nt r0,0x0x80,150 ;0x00004726
            0x00004698      00258001       add r0,r5,r6
            0x0000469c      a073           add_s r3,r3,r5
            0x0000469e      74230101       ldh.aw r1,[r3,r4]
            0x000046a2      74200201       ldh.aw r2,[r0,r4]
            0x000046a6      3279           not_s r1,r1
            0x000046a8      3079           exth_s r1,r1
            0x000046aa      7f0a4100       brne.nt r2,r1,126 ;0x00004726
            0x000046ae      40264600       add r6,r6,0x0x1
            0x000046b2      00258501       add r5,r5,r6
            0x000046b6      72244201       ldb.aw r2,[r4,r5]
            0x000046ba      2088           ldb_s r1,[r0,0x0]
            0x000046bc      08ba           asl_s r2,r2,0x0x8
            0x000046be      4579           or_s r1,r1,r2
            0x000046c0      3078           exth_s r0,r1
            0x000046c2      5f002000       b.d 94 ;0x0000471e
            0x000046c6      20b5           sth_s r1,[r13,0x0]
            0x000046c8      8c200580       cmp r0,320
            0x000046cc      8ff6           blt_s 30 ;0x000046ea
            0x000046ce      8c200788       cmp r0,480
            0x000046d2      4df6           bge_s 26 ;0x000046ea
            0x000046d4      402a4502       asl r5,r2,0x0x9
            0x000046d8      00250100       add r1,r5,r0
            0x000046dc      0a24800f80..   mov r4,0x0x801060
            0x000046e4      9707efff       b.d -106 ;0x0000467a
            0x000046e8      8071           add_s r1,r1,r4
            0x000046ea      402a4502       asl r5,r2,0x0x9
            0x000046ee      00250100       add r1,r5,r0
            0x000046f2      0a24800f80..   mov r4,0x0x801060
            0x000046fa      8071           add_s r1,r1,r4
            0x000046fc      2089           ldb_s r1,[r1,0x0]
            0x000046fe      01e0           add_s r0,r0,0x0x1
            0x00004700      a070           add_s r0,r0,r5
            0x00004702      72240300       ldb.aw r3,[r4,r0]
            0x00004706      08b9           asl_s r1,r1,0x0x8
            0x00004708      6579           or_s r1,r1,r3
            0x0000470a      20b5           sth_s r1,[r13,0x0]
            0x0000470c      be0a6006       bl.d 51900 ;0x000111c8
            0x00004710      4870           .short 0x7048
            0x00004712      a8100200       ld r2,[r0,168]
            0x00004716      8622ff0d       bic r2,r2,-9
            0x0000471a      87ea           brne_s r2,0x0,14 ;0x00004726
            0x0000471c      0095           ldh_s r0,[r13,0x0]
            0x0000471e      1108810f00..   brne.nt r0,0x0xffff,16 ;0x0000472c
            0x00004726      0b002000       b.d 10 ;0x0000472e
            0x0000472a      00d8           mov_s r0,0x0
            0x0000472c      01d8           mov_s r0,0x0x1
            0x0000472e      fb76           .short 0x76fb
            0x00004730      c1c6           pop_s r14
            0x00004732      e07f           j_s.d [blink]
            0x00004734      c1c5           pop_s r13
            0x00004736      e078           nop_s
            0x00004738      e1c5           push_s r13
            0x0000473a      e1c6           push_s r14
            0x0000473c      e1c7           push_s r15
            0x0000473e      fc1c08b4       st.aw r16,[sp,-4]
            0x00004742      fc1c48b4       st.aw r17,[sp,-4]
            0x00004746      fc1c88b4       st.aw r18,[sp,-4]
            0x0000474a      fc1cc8b4       st.aw r19,[sp,-4]
            0x0000474e      a1c1           sub_s sp,sp,0x0x4
            0x00004750      0a23c027       mov r19,blink
            0x00004754      3a70           .short 0x703a
            0x00004756      1a71           .short 0x711a
            0x00004758      4877           .short 0x7748
            0x0000475a      6876           .short 0x7668
            0x0000475c      3d0a7200       brlt.d.nt r2,0x0x1,60 ;0x00004798
            0x00004760      00dd           mov_s r13,0x0
            0x00004762      0a220027       mov r18,sp
            0x00004766      00254014       add r0,r13,r17
            0x0000476a      1078           exth_s r0,r0
            0x0000476c      4a71           .short 0x714a
            0x0000476e      c60eefff       bl.d -316 ;0x00004630
            0x00004772      c972           .short 0x72c9
            0x00004774      15e8           breq_s r0,0x0,42 ;0x0000479e
            0x00004776      00140131       ldh r1,[sp]
            0x0000477a      02274313       sub r3,r15,r13
            0x0000477e      48b9           asr_s r1,r1,0x0x8
            0x00004780      00204223       add r2,r16,r13
            0x00004784      0d0bb200       brlt.d.nt r3,0x0x2,12 ;0x00004790
            0x00004788      20aa           stb_s r1,[r2,0x0]
            0x0000478a      00140131       ldh r1,[sp]
            0x0000478e      21aa           stb_s r1,[r2,0x0x1]
            0x00004790      02e5           add_s r13,r13,0x0x2
            0x00004792      af7d           extb_s r13,r13
            0x00004794      d30dc293       brlt.nt r13,r15,-46 ;0x00004766
            0x00004798      09002000       b.d 8 ;0x000047a0
            0x0000479c      01d8           mov_s r0,0x0x1
            0x0000479e      00d8           mov_s r0,0x0
            0x000047a0      0a27c034       mov blink,r19
            0x000047a4      a1c0           add_s sp,sp,0x0x4
            0x000047a6      04141334       ld.ab r19,[sp,4]
            0x000047aa      04141234       ld.ab r18,[sp,4]
            0x000047ae      04141134       ld.ab r17,[sp,4]
            0x000047b2      04141034       ld.ab r16,[sp,4]
            0x000047b6      c1c7           pop_s r15
            0x000047b8      c1c6           pop_s r14
            0x000047ba      e07f           j_s.d [blink]
            0x000047bc      c1c5           pop_s r13
            0x000047be      e078           nop_s
            0x000047c0      e1c5           push_s r13
            0x000047c2      e1c6           push_s r14
            0x000047c4      e1c7           push_s r15
            0x000047c6      fc1c08b4       st.aw r16,[sp,-4]
            0x000047ca      fc1c48b4       st.aw r17,[sp,-4]
            0x000047ce      fc1c88b4       st.aw r18,[sp,-4]
            0x000047d2      fc1cc8b4       st.aw r19,[sp,-4]
            0x000047d6      fc1c08b5       st.aw r20,[sp,-4]
            0x000047da      fc1c48b5       st.aw r21,[sp,-4]
            0x000047de      fc1c88b5       st.aw r22,[sp,-4]
            0x000047e2      a2c1           sub_s sp,sp,0x0x8
            0x000047e4      0a26c027       mov r22,blink
            0x000047e8      0877           .short 0x7708
            0x000047ea      2875           .short 0x7528
            0x000047ec      de096006       bl.d 51676 ;0x000111c8
            0x000047f0      4a220020       mov r18,0x0
            0x000047f4      270d3010       breq.d.nt r13,0x0,38 ;0x0000481a
            0x000047f8      0876           .short 0x7608
            0x000047fa      8a230400       mov r3,256
            0x000047fe      0a24802f80..   mov r20,0x0x800788
            0x00004806      101cc420       sth r3,[r20,16]
            0x0000480a      121cc420       sth r3,[r20,18]
            0x0000480e      141c8224       stb r18,[r20,20]
            0x00004812      4b062000       b.d 1610 ;0x00004e5a
            0x00004816      151c8224       stb r18,[r20,21]
            0x0000481a      80e7           cmp_s r15,0x0
            0x0000481c      3e060200       bne 1598 ;0x00004e5a
            0x00004820      0a24802f80..   mov r20,0x0x800788
            0x00004828      1424d023       add1 r16,r20,r15
            0x0000482c      10100021       ldh r0,[r16,16]
            0x00004830      8c200480       cmp r0,256
            0x00004834      0e002b00       blt.d 14 ;0x00004842
            0x00004838      4a214020       mov r17,0x0x1
            0x0000483c      8c20c78b       cmp r0,495
            0x00004840      c7f6           ble_s 14 ;0x0000484e
            0x00004842      0024d323       add r19,r20,r15
            0x00004846      14138120       ldb r1,[r19,20]
            0x0000484a      80e1           cmp_s r1,0x0
            0x0000484c      96f2           beq_s 300 ;0x00004978
            0x0000484e      5c168210       ldb r2,[r14,92]
            0x00004852      86227f0f       bic r2,r2,-3
            0x00004856      80e2           cmp_s r2,0x0
            0x00004858      02060200       bne 1538 ;0x00004e5a
            0x0000485c      a8160310       ld r3,[r14,168]
            0x00004860      8a250410       mov r13,256
            0x00004864      04234203       and r2,r3,r13
            0x00004868      85ea           brne_s r2,0x0,10 ;0x00004872
            0x0000486a      44230102       and r1,r3,0x0x8
            0x0000486e      a5091000       breq.nt r1,0x0,164 ;0x00004910
            0x00004872      fe092007       bl.d 57852 ;0x00012a6c
            0x00004876      01d8           mov_s r0,0x0x1
            0x00004878      89e0           cmp_s r0,0x0x9
            0x0000487a      14002100       beq.d 20 ;0x0000488c
            0x0000487e      ba70           .short 0x70ba
            0x00004880      4a000900       bgt 74 ;0x000048ca
            0x00004884      4c2500a0       cmp r21,0x0
            0x00004888      d2050200       bne 1490 ;0x00004e5a
            0x0000488c      01d8           mov_s r0,0x0x1
            0x0000488e      da0ae00a       bl.d 88792 ;0x0001a364
            0x00004892      1ed9           mov_s r1,0x0x1e
            0x00004894      03d8           mov_s r0,0x0x3
            0x00004896      d20ae00a       bl.d 88784 ;0x0001a364
            0x0000489a      1ed9           mov_s r1,0x0x1e
            0x0000489c      3f0d3120       brne.d.nt r21,0x0,62 ;0x000048da
            0x000048a0      0024d323       add r19,r20,r15
            0x000048a4      402f4312       asl r3,r15,0x0x9
            0x000048a8      0023820f80..   add r2,r3,0x0x801060
            0x000048b0      12100121       ldh r1,[r16,18]
            0x000048b4      01d8           mov_s r0,0x0x1
            0x000048b6      5961           add_s r1,r1,r2
            0x000048b8      be0ee006       bl.d 57020 ;0x00012774
            0x000048bc      10da           mov_s r2,0x0x10
            0x000048be      c970           .short 0x70c9
            0x000048c0      8e0ae004       bl.d 39564 ;0x0000e34c
            0x000048c4      12100121       ldh r1,[r16,18]
            0x000048c8      0ef0           b_s 28 ;0x000048e4
            0x000048ca      4c2540a7       cmp r21,0x0x1d
            0x000048ce      8e050100       beq 1422 ;0x00004e5a
            0x000048d2      250d9027       breq.nt r21,0x0x1e,36 ;0x000048f4
            0x000048d6      87050000       b 1414 ;0x00004e5a
            0x000048da      a8160310       ld r3,[r14,168]
            0x000048de      83bb           bset_s r3,r3,0x0x3
            0x000048e0      a81ec010       st r3,[r14,168]
            0x000048e4      14138120       ldb r1,[r19,20]
            0x000048e8      06e9           breq_s r1,0x0,12 ;0x000048f4
            0x000048ea      00dd           mov_s r13,0x0
            0x000048ec      6f052000       b.d 1390 ;0x00004e5a
            0x000048f0      141b4223       stb r13,[r19,20]
            0x000048f4      10100021       ldh r0,[r16,16]
            0x000048f8      00d9           mov_s r1,0x0
            0x000048fa      10da           mov_s r2,0x0x10
            0x000048fc      3a0e2000       bl.d 1592 ;0x00004f34
            0x00004900      e973           .short 0x73e9
            0x00004902      80e0           cmp_s r0,0x0
            0x00004904      56050100       beq 1366 ;0x00004e5a
            0x00004908      10100021       ldh r0,[r16,16]
            0x0000490c      12180420       sth r0,[r16,18]
            0x00004910      40200204       add r2,r0,0x0x10
            0x00004914      8c22c48f       cmp r2,319
            0x00004918      cef6           ble_s 28 ;0x00004934
            0x0000491a      8c200788       cmp r0,480
            0x0000491e      4cf6           bge_s 24 ;0x00004934
            0x00004920      56160111       ldh r1,[r14,86]
            0x00004924      4d091301       brge.nt r1,0x0x4,76 ;0x00004970
            0x00004928      1509d200       brlt.nt r1,0x0x3,20 ;0x0000493c
            0x0000492c      45002000       b.d 68 ;0x00004970
            0x00004930      8a220708       mov r2,480
            0x00004934      3d0a820f00..   brlt.nt r2,0x0x1ef,60 ;0x00004970
            0x0000493c      a8160310       ld r3,[r14,168]
            0x00004940      04234203       and r2,r3,r13
            0x00004944      8aea           brne_s r2,0x0,20 ;0x00004958
            0x00004946      44230102       and r1,r3,0x0x8
            0x0000494a      88e9           brne_s r1,0x0,16 ;0x00004958
            0x0000494c      8a230400       mov r3,256
            0x00004950      0b052000       b.d 1290 ;0x00004e5a
            0x00004954      1018c420       sth r3,[r16,16]
            0x00004958      00dd           mov_s r13,0x0
            0x0000495a      10184423       sth r13,[r16,16]
            0x0000495e      a2bb           bclr_s r3,r3,0x0x2
            0x00004960      a81ec010       st r3,[r14,168]
            0x00004964      0024d323       add r19,r20,r15
            0x00004968      17012000       b.d 278 ;0x00004a7e
            0x0000496c      141b4224       stb r17,[r19,20]
            0x00004970      0f012000       b.d 270 ;0x00004a7e
            0x00004974      10188420       sth r2,[r16,16]
            0x00004978      8c20c38f       cmp r0,255
            0x0000497c      c5f6           ble_s 10 ;0x00004986
            0x0000497e      15138d20       ldb r13,[r19,21]
            0x00004982      80e5           cmp_s r13,0x0
            0x00004984      7df2           beq_s 250 ;0x00004a7e
            0x00004986      ea082007       bl.d 57576 ;0x00012a6c
            0x0000498a      02d8           mov_s r0,0x0x2
            0x0000498c      89e0           cmp_s r0,0x0x9
            0x0000498e      14002100       beq.d 20 ;0x000049a0
            0x00004992      ba70           .short 0x70ba
            0x00004994      3c000900       bgt 60 ;0x000049d0
            0x00004998      4c2500a0       cmp r21,0x0
            0x0000499c      be040200       bne 1214 ;0x00004e5a
            0x000049a0      02d8           mov_s r0,0x0x2
            0x000049a2      c609e00a       bl.d 88516 ;0x0001a364
            0x000049a6      1ed9           mov_s r1,0x0x1e
            0x000049a8      03d8           mov_s r0,0x0x3
            0x000049aa      be09e00a       bl.d 88508 ;0x0001a364
            0x000049ae      1ed9           mov_s r1,0x0x1e
            0x000049b0      310d1120       brne.nt r21,0x0,48 ;0x000049e0
            0x000049b4      402f4312       asl r3,r15,0x0x9
            0x000049b8      0023820f80..   add r2,r3,0x0x801060
            0x000049c0      12100121       ldh r1,[r16,18]
            0x000049c4      02d8           mov_s r0,0x0x2
            0x000049c6      5961           add_s r1,r1,r2
            0x000049c8      ae0de006       bl.d 56748 ;0x00012774
            0x000049cc      10da           mov_s r2,0x0x10
            0x000049ce      0ff0           b_s 30 ;0x000049ea
            0x000049d0      4c2540a7       cmp r21,0x0x1d
            0x000049d4      86040100       beq 1158 ;0x00004e5a
            0x000049d8      630d9027       breq.nt r21,0x0x1e,98 ;0x00004a3a
            0x000049dc      7f040000       b 1150 ;0x00004e5a
            0x000049e0      a8160310       ld r3,[r14,168]
            0x000049e4      82bb           bset_s r3,r3,0x0x2
            0x000049e6      a81ec010       st r3,[r14,168]
            0x000049ea      15138d20       ldb r13,[r19,21]
            0x000049ee      27ed           breq_s r13,0x0,78 ;0x00004a3a
            0x000049f0      a8160310       ld r3,[r14,168]
            0x000049f4      00dd           mov_s r13,0x0
            0x000049f6      44230102       and r1,r3,0x0x8
            0x000049fa      11093100       brne.d.nt r1,0x0,16 ;0x00004a08
            0x000049fe      151b4223       stb r13,[r19,21]
            0x00004a02      44230001       and r0,r3,0x0x4
            0x00004a06      11e8           breq_s r0,0x0,34 ;0x00004a26
            0x00004a08      87168210       ldb r2,[r14,135]
            0x00004a0c      0f0a9002       breq.nt r2,0x0xa,14 ;0x00004a1a
            0x00004a10      0b0ad002       breq.nt r2,0x0xb,10 ;0x00004a1a
            0x00004a14      07d9           mov_s r1,0x0x7
            0x00004a16      871e4210       stb r1,[r14,135]
            0x00004a1a      85238400       or r3,r3,258
            0x00004a1e      15002000       b.d 20 ;0x00004a30
            0x00004a22      a81ec010       st r3,[r14,168]
            0x00004a26      a8bb           bclr_s r3,r3,0x0x8
            0x00004a28      a81ec010       st r3,[r14,168]
            0x00004a2c      4a224020       mov r18,0x0x1
            0x00004a30      a3bb           bclr_s r3,r3,0x0x3
            0x00004a32      41002000       b.d 64 ;0x00004a70
            0x00004a36      a81ec010       st r3,[r14,168]
            0x00004a3a      10100021       ldh r0,[r16,16]
            0x00004a3e      00d9           mov_s r1,0x0
            0x00004a40      10da           mov_s r2,0x0x10
            0x00004a42      f60c2000       bl.d 1268 ;0x00004f34
            0x00004a46      e973           .short 0x73e9
            0x00004a48      80e0           cmp_s r0,0x0
            0x00004a4a      12040100       beq 1042 ;0x00004e5a
            0x00004a4e      10100021       ldh r0,[r16,16]
            0x00004a52      40200204       add r2,r0,0x0x10
            0x00004a56      8c22c38f       cmp r2,255
            0x00004a5a      12002900       bgt.d 18 ;0x00004a6a
            0x00004a5e      12180420       sth r0,[r16,18]
            0x00004a62      11002000       b.d 16 ;0x00004a70
            0x00004a66      15138d20       ldb r13,[r19,21]
            0x00004a6a      151b4224       stb r17,[r19,21]
            0x00004a6e      01dd           mov_s r13,0x0x1
            0x00004a70      87ed           brne_s r13,0x0,14 ;0x00004a7e
            0x00004a72      10100021       ldh r0,[r16,16]
            0x00004a76      fd06efff       b.d -260 ;0x00004970
            0x00004a7a      40200204       add r2,r0,0x0x10
            0x00004a7e      4c2200a0       cmp r18,0x0
            0x00004a82      da030100       beq 986 ;0x00004e5a
            0x00004a86      00dd           mov_s r13,0x0
            0x00004a88      1a0ae006       bl.d 55832 ;0x000124a0
            0x00004a8c      ffd8           mov_s r0,0x0xff
            0x00004a8e      56261314       add3 r19,r14,0x0x10
            0x00004a92      15083000       breq.d.nt r0,0x0,20 ;0x00004aa4
            0x00004a96      5526d01a       add2 r16,r14,0x0x2b
            0x00004a9a      0a22802f00..   mov r18,0x0x2000
            0x00004aa2      22f0           b_s 68 ;0x00004ae4
            0x00004aa4      54d8           mov_s r0,0x0x54
            0x00004aa6      0a71           .short 0x710a
            0x00004aa8      8a0befff       bl.d -1144 ;0x00004630
            0x00004aac      e972           .short 0x72e9
            0x00004aae      84e8           brne_s r0,0x0,8 ;0x00004ab4
            0x00004ab0      ac1e4413       sth r13,[r14,172]
            0x00004ab4      ac160110       ld r1,[r14,172]
            0x00004ab8      0a22802f00..   mov r18,0x0x2000
            0x00004ac0      04218204       and r2,r1,r18
            0x00004ac4      09ea           breq_s r2,0x0,18 ;0x00004ad6
            0x00004ac6      90ef           brne_s r15,0x0,32 ;0x00004ae4
            0x00004ac8      cf73           mov_s 0x0,3
            0x00004aca      80000004       b 32896 ;0x0000cb48
            0x00004ace      098b           ldb_s r0,[r3,0x0x9]
            0x00004ad0      13002000       b.d 18 ;0x00004ae2
            0x00004ad4      86b8           bset_s r0,r0,0x0x6
            0x00004ad6      88ef           brne_s r15,0x0,16 ;0x00004ae4
            0x00004ad8      cf73           mov_s 0x0,3
            0x00004ada      80000004       b 32896 ;0x0000cb58
            0x00004ade      098b           ldb_s r0,[r3,0x0x9]
            0x00004ae0      a6b8           bclr_s r0,r0,0x0x6
            0x00004ae2      09ab           stb_s r0,[r3,0x0x9]
            0x00004ae4      56264112       add3 r1,r14,0x0x9
            0x00004ae8      8a200408       mov r0,288
            0x00004aec      460befff       bl.d -1212 ;0x00004630
            0x00004af0      e972           .short 0x72e9
            0x00004af2      5426411e       add1 r1,r14,0x0x39
            0x00004af6      8a200404       mov r0,272
            0x00004afa      0eda           mov_s r2,0x0xe
            0x00004afc      3e0cefff       bl.d -964 ;0x00004738
            0x00004b00      e973           .short 0x73e9
            0x00004b02      0e0e6004       bl.d 36364 ;0x0000d90c
            0x00004b06      c970           .short 0x70c9
            0x00004b08      ba0f200a       bl.d 83896 ;0x000192c0
            0x00004b0c      c970           .short 0x70c9
            0x00004b0e      8a20840a       mov r0,298
            0x00004b12      6a71           .short 0x716a
            0x00004b14      04da           mov_s r2,0x0x4
            0x00004b16      260cefff       bl.d -988 ;0x00004738
            0x00004b1a      e973           .short 0x73e9
            0x00004b1c      55264118       add2 r1,r14,0x0x21
            0x00004b20      8a20440a       mov r0,297
            0x00004b24      01da           mov_s r2,0x0x1
            0x00004b26      160cefff       bl.d -1004 ;0x00004738
            0x00004b2a      e973           .short 0x73e9
            0x00004b2c      83e8           brne_s r0,0x0,6 ;0x00004b32
            0x00004b2e      841e4213       stb r13,[r14,132]
            0x00004b32      4026811c       add r1,r14,0x0x32
            0x00004b36      8a200401       mov r0,260
            0x00004b3a      fa0aefff       bl.d -1288 ;0x00004630
            0x00004b3e      e972           .short 0x72e9
            0x00004b40      85e8           brne_s r0,0x0,10 ;0x00004b4a
            0x00004b42      321e841f00..   sth 0x0x1c20,[r14,50]
            0x00004b4a      54264119       add1 r1,r14,0x0x25
            0x00004b4e      48d8           mov_s r0,0x0x48
            0x00004b50      e20aefff       bl.d -1312 ;0x00004630
            0x00004b54      e972           .short 0x72e9
            0x00004b56      8de8           brne_s r0,0x0,26 ;0x00004b6e
            0x00004b58      4a1e841f00..   sth 0x0xffff,[r14,74]
            0x00004b60      48d8           mov_s r0,0x0x48
            0x00004b62      cf71           mov_s 0x0,1
            0x00004b64      0000ffff       b.d -2048 ;0x00004364
            0x00004b68      1e0b2000       bl.d 796 ;0x00004e84
            0x00004b6c      e972           .short 0x72e9
            0x00004b6e      0026811f00..   add r1,r14,0x0xa6
            0x00004b76      10d8           mov_s r0,0x0x10
            0x00004b78      ba0aefff       bl.d -1352 ;0x00004630
            0x00004b7c      e972           .short 0x72e9
            0x00004b7e      86e8           brne_s r0,0x0,12 ;0x00004b88
            0x00004b80      a61e841f00..   sth 0x0xffff,[r14,166]
            0x00004b88      4a160111       ldh r1,[r14,74]
            0x00004b8c      0a23802f00..   mov r19,0x0xffff
            0x00004b94      1109c004       breq.nt r1,r19,16 ;0x00004ba4
            0x00004b98      a6160011       ldh r0,[r14,166]
            0x00004b9c      09084300       brge.nt r0,r1,8 ;0x00004ba4
            0x00004ba0      4a1e0410       sth r0,[r14,74]
            0x00004ba4      5526c114       add2 r1,r14,0x0x13
            0x00004ba8      2cd8           mov_s r0,0x0x2c
            0x00004baa      8a0aefff       bl.d -1400 ;0x00004630
            0x00004bae      e972           .short 0x72e9
            0x00004bb0      88e8           brne_s r0,0x0,16 ;0x00004bc0
            0x00004bb2      4c1e4413       sth r13,[r14,76]
            0x00004bb6      2cd8           mov_s r0,0x0x2c
            0x00004bb8      00d9           mov_s r1,0x0
            0x00004bba      ce0a2000       bl.d 716 ;0x00004e84
            0x00004bbe      e972           .short 0x72e9
            0x00004bc0      56268114       add3 r1,r14,0x0x12
            0x00004bc4      70d8           mov_s r0,0x0x70
            0x00004bc6      6e0aefff       bl.d -1428 ;0x00004630
            0x00004bca      e972           .short 0x72e9
            0x00004bcc      88e8           brne_s r0,0x0,16 ;0x00004bdc
            0x00004bce      901e4413       sth r13,[r14,144]
            0x00004bd2      70d8           mov_s r0,0x0x70
            0x00004bd4      00d9           mov_s r1,0x0
            0x00004bd6      b20a2000       bl.d 688 ;0x00004e84
            0x00004bda      e972           .short 0x72e9
            0x00004bdc      4026811b       add r1,r14,0x0x2e
            0x00004be0      44d8           mov_s r0,0x0x44
            0x00004be2      520aefff       bl.d -1456 ;0x00004630
            0x00004be6      e972           .short 0x72e9
            0x00004be8      87e8           brne_s r0,0x0,14 ;0x00004bf6
            0x00004bea      b7b6           sth_s r13,[r14,0x0x2e]
            0x00004bec      44d8           mov_s r0,0x0x44
            0x00004bee      00d9           mov_s r1,0x0
            0x00004bf0      960a2000       bl.d 660 ;0x00004e84
            0x00004bf4      e972           .short 0x72e9
            0x00004bf6      5526411a       add2 r1,r14,0x0x29
            0x00004bfa      0cd8           mov_s r0,0x0xc
            0x00004bfc      360aefff       bl.d -1484 ;0x00004630
            0x00004c00      e972           .short 0x72e9
            0x00004c02      84e8           brne_s r0,0x0,8 ;0x00004c08
            0x00004c04      a41e4413       sth r13,[r14,164]
            0x00004c08      54d8           mov_s r0,0x0x54
            0x00004c0a      0a71           .short 0x710a
            0x00004c0c      260aefff       bl.d -1500 ;0x00004630
            0x00004c10      e972           .short 0x72e9
            0x00004c12      89e8           brne_s r0,0x0,18 ;0x00004c22
            0x00004c14      ac1e4413       sth r13,[r14,172]
            0x00004c18      54d8           mov_s r0,0x0x54
            0x00004c1a      00d9           mov_s r1,0x0
            0x00004c1c      6a0a2000       bl.d 616 ;0x00004e84
            0x00004c20      e972           .short 0x72e9
            0x00004c22      c2086006       bl.d 51392 ;0x000114e0
            0x00004c26      e970           .short 0x70e9
            0x00004c28      ac160110       ld r1,[r14,172]
            0x00004c2c      11083000       breq.d.nt r0,0x0,16 ;0x00004c3c
            0x00004c30      04218204       and r2,r1,r18
            0x00004c34      8eea           brne_s r2,0x0,28 ;0x00004c50
            0x00004c36      0d002000       b.d 12 ;0x00004c40
            0x00004c3a      8db9           bset_s r1,r1,0x0xd
            0x00004c3c      0aea           breq_s r2,0x0,20 ;0x00004c50
            0x00004c3e      adb9           bclr_s r1,r1,0x0xd
            0x00004c40      ac1e4010       st r1,[r14,172]
            0x00004c44      ac160111       ldh r1,[r14,172]
            0x00004c48      54d8           mov_s r0,0x0x54
            0x00004c4a      3e0a2000       bl.d 572 ;0x00004e84
            0x00004c4e      e972           .short 0x72e9
            0x00004c50      56160111       ldh r1,[r14,86]
            0x00004c54      5309b301       brge.d.nt r1,0x0x6,82 ;0x00004ca6
            0x00004c58      0a200027       mov r16,sp
            0x00004c5c      1cd8           mov_s r0,0x0x1c
            0x00004c5e      0a71           .short 0x710a
            0x00004c60      d209efff       bl.d -1584 ;0x00004630
            0x00004c64      e972           .short 0x72e9
            0x00004c66      21e8           breq_s r0,0x0,66 ;0x00004ca6
            0x00004c68      56160111       ldh r1,[r14,86]
            0x00004c6c      0d09d100       brne.nt r1,0x0x3,12 ;0x00004c78
            0x00004c70      0d002000       b.d 12 ;0x00004c7c
            0x00004c74      8a208708       mov r0,482
            0x00004c78      8a208402       mov r0,266
            0x00004c7c      81c1           add_s r1,sp,0x0x4
            0x00004c7e      b609efff       bl.d -1612 ;0x00004630
            0x00004c82      e972           .short 0x72e9
            0x00004c84      05e8           breq_s r0,0x0,10 ;0x00004c8e
            0x00004c86      17002000       b.d 22 ;0x00004c9a
            0x00004c8a      04140331       ldh r3,[sp,4]
            0x00004c8e      7ddb           mov_s r3,0x0x7d
            0x00004c90      06bb           asl_s r3,r3,0x0x6
            0x00004c92      041c843f00..   sth 0x0x1f40,[sp,4]
            0x00004c9a      00140131       ldh r1,[sp]
            0x00004c9e      0b09c300       brge.nt r1,r3,10 ;0x00004ca6
            0x00004ca2      941e4214       stb r17,[r14,148]
            0x00004ca6      52096004       bl.d 35152 ;0x0000d5f4
            0x00004caa      c970           .short 0x70c9
            0x00004cac      18d8           mov_s r0,0x0x18
            0x00004cae      0a71           .short 0x710a
            0x00004cb0      8209efff       bl.d -1664 ;0x00004630
            0x00004cb4      e972           .short 0x72e9
            0x00004cb6      89e8           brne_s r0,0x0,18 ;0x00004cc6
            0x00004cb8      001c4433       sth r13,[sp]
            0x00004cbc      18d8           mov_s r0,0x0x18
            0x00004cbe      00d9           mov_s r1,0x0
            0x00004cc0      c6092000       bl.d 452 ;0x00004e84
            0x00004cc4      e972           .short 0x72e9
            0x00004cc6      00140131       ldh r1,[sp]
            0x00004cca      00d8           mov_s r0,0x0
            0x00004ccc      04b9           asl_s r1,r1,0x0x4
            0x00004cce      3679           add3_s r1,r1,r1
            0x00004cd0      3579           add2_s r1,r1,r1
            0x00004cd2      3579           add2_s r1,r1,r1
            0x00004cd4      2fa6           st_s r1,[r14,0x0x3c]
            0x00004cd6      56264113       add3 r1,r14,0x0xd
            0x00004cda      5a09efff       bl.d -1704 ;0x00004630
            0x00004cde      e972           .short 0x72e9
            0x00004ce0      8ae8           brne_s r0,0x0,20 ;0x00004cf4
            0x00004ce2      681e4413       sth r13,[r14,104]
            0x00004ce6      b01e4213       stb r13,[r14,176]
            0x00004cea      00d8           mov_s r0,0x0
            0x00004cec      0871           .short 0x7108
            0x00004cee      9a092000       bl.d 408 ;0x00004e84
            0x00004cf2      e972           .short 0x72e9
            0x00004cf4      24d8           mov_s r0,0x0x24
            0x00004cf6      0a71           .short 0x710a
            0x00004cf8      3a09efff       bl.d -1736 ;0x00004630
            0x00004cfc      e972           .short 0x72e9
            0x00004cfe      8de8           brne_s r0,0x0,26 ;0x00004d16
            0x00004d00      001c843f00..   sth 0x0x5f41,[sp,0]
            0x00004d08      24d8           mov_s r0,0x0x24
            0x00004d0a      cf71           mov_s 0x0,1
            0x00004d0c      0000415f       beq 780288 ;0x000c350c
            0x00004d10      76092000       bl.d 372 ;0x00004e84
            0x00004d14      e972           .short 0x72e9
            0x00004d16      5426c119       add1 r1,r14,0x0x27
            0x00004d1a      40d8           mov_s r0,0x0x40
            0x00004d1c      1609efff       bl.d -1772 ;0x00004630
            0x00004d20      e972           .short 0x72e9
            0x00004d22      89e8           brne_s r0,0x0,18 ;0x00004d32
            0x00004d24      4e1e4413       sth r13,[r14,78]
            0x00004d28      40d8           mov_s r0,0x0x40
            0x00004d2a      00d9           mov_s r1,0x0
            0x00004d2c      5a092000       bl.d 344 ;0x00004e84
            0x00004d30      e972           .short 0x72e9
            0x00004d32      0026811f00..   add r1,r14,0x0x92
            0x00004d3a      34d8           mov_s r0,0x0x34
            0x00004d3c      f608efff       bl.d -1804 ;0x00004630
            0x00004d40      e972           .short 0x72e9
            0x00004d42      89e8           brne_s r0,0x0,18 ;0x00004d52
            0x00004d44      921e4413       sth r13,[r14,146]
            0x00004d48      34d8           mov_s r0,0x0x34
            0x00004d4a      00d9           mov_s r1,0x0
            0x00004d4c      3a092000       bl.d 312 ;0x00004e84
            0x00004d50      e972           .short 0x72e9
            0x00004d52      0026811f00..   add r1,r14,0x0x55
            0x00004d5a      8a20040f       mov r0,316
            0x00004d5e      01da           mov_s r2,0x0x1
            0x00004d60      da09efff       bl.d -1576 ;0x00004738
            0x00004d64      e973           .short 0x73e9
            0x00004d66      55168210       ldb r2,[r14,85]
            0x00004d6a      85ea           brne_s r2,0x0,10 ;0x00004d72
            0x00004d6c      04db           mov_s r3,0x0x4
            0x00004d6e      551ec210       stb r3,[r14,85]
            0x00004d72      5426c11b       add1 r1,r14,0x0x2f
            0x00004d76      8a20c40e       mov r0,315
            0x00004d7a      01da           mov_s r2,0x0x1
            0x00004d7c      be09efff       bl.d -1604 ;0x00004738
            0x00004d80      e973           .short 0x73e9
            0x00004d82      84e8           brne_s r0,0x0,8 ;0x00004d88
            0x00004d84      5e1e4213       stb r13,[r14,94]
            0x00004d88      6a0b200d       bl.d 107368 ;0x0001f0f0
            0x00004d8c      c970           .short 0x70c9
            0x00004d8e      601e0210       stb r0,[r14,96]
            0x00004d92      02d8           mov_s r0,0x0x2
            0x00004d94      760fa006       bl.d 55156 ;0x00012508
            0x00004d98      86168110       ldb r1,[r14,134]
            0x00004d9c      a268           add_s r13,r0,0x0x2
            0x00004d9e      5a0d2011       bl.d 140632 ;0x000272f4
            0x00004da2      c970           .short 0x70c9
            0x00004da4      ac78           mpy_s r0,r0,r13
            0x00004da6      86168010       ldb r0,[r14,134]
            0x00004daa      621e441e       sth r57,[r14,98]
            0x00004dae      2a0ae00d       bl.d 113192 ;0x000207d4
            0x00004db2      00d9           mov_s r1,0x0
            0x00004db4      0026811f00..   add r1,r14,0x0xae
            0x00004dbc      58d8           mov_s r0,0x0x58
            0x00004dbe      7608efff       bl.d -1932 ;0x00004630
            0x00004dc2      e972           .short 0x72e9
            0x00004dc4      89e8           brne_s r0,0x0,18 ;0x00004dd6
            0x00004dc6      ffd8           mov_s r0,0x0xff
            0x00004dc8      ae1e0410       sth r0,[r14,174]
            0x00004dcc      58d8           mov_s r0,0x0x58
            0x00004dce      ffd9           mov_s r1,0x0xff
            0x00004dd0      b6082000       bl.d 180 ;0x00004e84
            0x00004dd4      e972           .short 0x72e9
            0x00004dd6      0026811f00..   add r1,r14,0x0xb2
            0x00004dde      5cd8           mov_s r0,0x0x5c
            0x00004de0      5208efff       bl.d -1968 ;0x00004630
            0x00004de4      e972           .short 0x72e9
            0x00004de6      06e8           breq_s r0,0x0,12 ;0x00004df0
            0x00004de8      31002000       b.d 48 ;0x00004e18
            0x00004dec      b2160111       ldh r1,[r14,178]
            0x00004df0      b2160111       ldh r1,[r14,178]
            0x00004df4      2509c004       breq.nt r1,r19,36 ;0x00004e18
            0x00004df8      8e09e007       bl.d 63884 ;0x00014784
            0x00004dfc      c970           .short 0x70c9
            0x00004dfe      0d085100       brne.nt r0,0x0x1,12 ;0x00004e08
            0x00004e02      0b002000       b.d 10 ;0x00004e0a
            0x00004e06      03d9           mov_s r1,0x0x3
            0x00004e08      07d9           mov_s r1,0x0x7
            0x00004e0a      b21e4410       sth r1,[r14,178]
            0x00004e0e      5cd8           mov_s r0,0x0x5c
            0x00004e10      76082000       bl.d 116 ;0x00004e84
            0x00004e14      e972           .short 0x72e9
            0x00004e16      eaf1           b_s -44 ;0x00004de8
            0x00004e18      8621ff0e       bic r1,r1,-5
            0x00004e1c      9fe9           brne_s r1,0x0,62 ;0x00004e5a
            0x00004e1e      00dd           mov_s r13,0x0
            0x00004e20      0a0c6000       bl.d 3080 ;0x00005a28
            0x00004e24      c970           .short 0x70c9
            0x00004e26      0f085000       breq.nt r0,0x0x1,14 ;0x00004e32
            0x00004e2a      01e5           add_s r13,r13,0x0x1
            0x00004e2c      af7d           extb_s r13,r13
            0x00004e2e      f50dd290       brlt.nt r13,0x0x3,-12 ;0x00004e20
            0x00004e32      190df110       brne.d.nt r13,0x0x3,24 ;0x00004e48
            0x00004e36      b2160111       ldh r1,[r14,178]
            0x00004e3a      50218200       bclr r2,r1,0x0x2
            0x00004e3e      5079           exth_s r1,r2
            0x00004e40      13002000       b.d 18 ;0x00004e52
            0x00004e44      b21e8410       sth r2,[r14,178]
            0x00004e48      4f218000       bset r0,r1,0x0x2
            0x00004e4c      1079           exth_s r1,r0
            0x00004e4e      b21e0410       sth r0,[r14,178]
            0x00004e52      5cd8           mov_s r0,0x0x5c
            0x00004e54      32082000       bl.d 48 ;0x00004e84
            0x00004e58      e972           .short 0x72e9
            0x00004e5a      0a278035       mov blink,r22
            0x00004e5e      a2c0           add_s sp,sp,0x0x8
            0x00004e60      04141634       ld.ab r22,[sp,4]
            0x00004e64      04141534       ld.ab r21,[sp,4]
            0x00004e68      04141434       ld.ab r20,[sp,4]
            0x00004e6c      04141334       ld.ab r19,[sp,4]
            0x00004e70      04141234       ld.ab r18,[sp,4]
            0x00004e74      04141134       ld.ab r17,[sp,4]
            0x00004e78      04141034       ld.ab r16,[sp,4]
            0x00004e7c      c1c7           pop_s r15
            0x00004e7e      c1c6           pop_s r14
            0x00004e80      e07f           j_s.d [blink]
            0x00004e82      c1c5           pop_s r13
            0x00004e84      40208700       add r7,r0,0x0x2
            0x00004e88      56200304       add3 r3,r0,0x0x10
            0x00004e8c      707b           exth_s r3,r3
            0x00004e8e      402a4502       asl r5,r2,0x0x9
            0x00004e92      00250800       add r8,r5,r0
            0x00004e96      0a26800f80..   mov r6,0x0x801060
            0x00004e9e      74208911       ldh.aw r9,[r8,r6]
            0x00004ea2      40238400       add r4,r3,0x0x2
            0x00004ea6      2f27c801       exth r7,r7
            0x00004eaa      27096002       breq.d.nt r1,r9,38 ;0x00004ece
            0x00004eae      2f240801       exth r4,r4
            0x00004eb2      2f214a10       not r9,r1
            0x00004eb6      00274701       add r7,r7,r5
            0x00004eba      a073           add_s r3,r3,r5
            0x00004ebc      00244401       add r4,r4,r5
            0x00004ec0      00278701       add r7,r7,r6
            0x00004ec4      c073           add_s r3,r3,r6
            0x00004ec6      41002000       b.d 64 ;0x00004f04
            0x00004eca      00248401       add r4,r4,r6
            0x00004ece      00274701       add r7,r7,r5
            0x00004ed2      74278b01       ldh.aw r11,[r7,r6]
            0x00004ed6      2f214a10       not r9,r1
            0x00004eda      2f224812       exth r10,r9
            0x00004ede      110ba012       breq.d.nt r11,r10,16 ;0x00004eec
            0x00004ee2      a073           add_s r3,r3,r5
            0x00004ee4      e107efff       b.d -32 ;0x00004ec4
            0x00004ee8      00244401       add r4,r4,r5
            0x00004eec      74238b01       ldh.aw r11,[r3,r6]
            0x00004ef0      00244401       add r4,r4,r5
            0x00004ef4      1109e102       brne.d.nt r1,r11,16 ;0x00004f04
            0x00004ef8      00248401       add r4,r4,r6
            0x00004efc      00140501       ldh r5,[r4]
            0x00004f00      2f0a4011       breq.nt r10,r5,46 ;0x00004f2e
            0x00004f04      00184410       sth r1,[r8]
            0x00004f08      001f4402       sth r9,[r7]
            0x00004f0c      20b3           sth_s r1,[r3,0x0]
            0x00004f0e      22b8           lsr_s r0,r0,0x0x2
            0x00004f10      7c68           asr_s r3,r0,0x0x4
            0x00004f12      3bbb           lsr_s r3,r3,0x0x1b
            0x00004f14      7860           add_s r0,r0,r3
            0x00004f16      c4b8           bmsk_s r0,r0,0x0x4
            0x00004f18      6278           sub_s r0,r0,r3
            0x00004f1a      cf71           mov_s 0x0,1
            0x00004f1c      80008807       bnv 61568 ;0x00013f9c
            0x00004f20      5579           add2_s r1,r1,r2
            0x00004f22      6081           ld_s r3,[r1,0x0]
            0x00004f24      001c4402       sth r9,[r4]
            0x00004f28      0f230300       bset r3,r3,r0
            0x00004f2c      60a1           st_s r3,[r1,0x0]
            0x00004f2e      e07f           j_s.d [blink]
            0x00004f30      01d8           mov_s r0,0x0x1
            0x00004f32      e078           nop_s
            0x00004f34      e1c5           push_s r13
            0x00004f36      e1c6           push_s r14
            0x00004f38      e1c7           push_s r15
            0x00004f3a      fc1c08b4       st.aw r16,[sp,-4]
            0x00004f3e      fc1c48b4       st.aw r17,[sp,-4]
            0x00004f42      fc1c88b4       st.aw r18,[sp,-4]
            0x00004f46      fc1cc8b4       st.aw r19,[sp,-4]
            0x00004f4a      fc1c08b5       st.aw r20,[sp,-4]
            0x00004f4e      0a24c027       mov r20,blink
            0x00004f52      3a70           .short 0x703a
            0x00004f54      7a71           .short 0x717a
            0x00004f56      5a72           .short 0x725a
            0x00004f58      d60f6011       bl.d 143316 ;0x00027f2c
            0x00004f5c      6876           .short 0x7668
            0x00004f5e      e41202b6       ld.as r2,[gp,-28]
            0x00004f62      1708a100       brne.d.nt r0,r2,22 ;0x00004f76
            0x00004f66      0877           .short 0x7708
            0x00004f68      0a20802f80..   mov r16,0x0x800bf0
            0x00004f70      1b002000       b.d 26 ;0x00004f8a
            0x00004f74      ffd8           mov_s r0,0x0xff
            0x00004f76      f51201b6       ld.as r1,[gp,-11]
            0x00004f7a      2b0f4110       brne.nt r15,r1,42 ;0x00004fa2
            0x00004f7e      0a20802f80..   mov r16,0x0x800bc8
            0x00004f86      8fee           brne_s r14,0x0,30 ;0x00004fa2
            0x00004f88      03d8           mov_s r0,0x0x3
            0x00004f8a      8c2104a0       cmp r17,256
            0x00004f8e      4ef6           bge_s 28 ;0x00004fa8
            0x00004f90      00d9           mov_s r1,0x0
            0x00004f92      c972           .short 0x72c9
            0x00004f94      ae0d600c       bl.d 101804 ;0x0001dd40
            0x00004f98      00db           mov_s r3,0x0
            0x00004f9a      21083100       brne.d.nt r0,0x0,32 ;0x00004fb8
            0x00004f9e      00dd           mov_s r13,0x0
            0x00004fa0      41f0           b_s 130 ;0x00005022
            0x00004fa2      83002000       b.d 130 ;0x00005022
            0x00004fa6      00dd           mov_s r13,0x0
            0x00004fa8      01d9           mov_s r1,0x0x1
            0x00004faa      c972           .short 0x72c9
            0x00004fac      960d600c       bl.d 101780 ;0x0001dd40
            0x00004fb0      00db           mov_s r3,0x0
            0x00004fb2      73083000       breq.d.nt r0,0x0,114 ;0x00005022
            0x00004fb6      00dd           mov_s r13,0x0
            0x00004fb8      b0da           mov_s r2,0x0xb0
            0x00004fba      01188220       stb r2,[r16,1]
            0x00004fbe      02184224       stb r17,[r16,2]
            0x00004fc2      06d8           mov_s r0,0x0x6
            0x00004fc4      00180220       stb r0,[r16]
            0x00004fc8      04d9           mov_s r1,0x0x4
            0x00004fca      e41202b6       ld.as r2,[gp,-28]
            0x00004fce      1c188224       stb r18,[r16,28]
            0x00004fd2      03184220       stb r1,[r16,3]
            0x00004fd6      270fa110       brne.d.nt r15,r2,38 ;0x00004ffa
            0x00004fda      1d184223       stb r13,[r16,29]
            0x00004fde      1818c024       st r19,[r16,24]
            0x00004fe2      ffda           mov_s r2,0x0xff
            0x00004fe4      15120336       ld.as r3,[gp,21]
            0x00004fe8      24188220       stb r2,[r16,36]
            0x00004fec      2018c020       st r3,[r16,32]
            0x00004ff0      0a0b600c       bl.d 101128 ;0x0001daf8
            0x00004ff4      0a70           .short 0x700a
            0x00004ff6      b3e8           brne_s r0,0x0,102 ;0x0000505a
            0x00004ff8      15f0           b_s 42 ;0x00005022
            0x00004ffa      f51201b6       ld.as r1,[gp,-11]
            0x00004ffe      270f4110       brne.nt r15,r1,38 ;0x00005022
            0x00005002      91ee           brne_s r14,0x0,34 ;0x00005022
            0x00005004      8c2104a0       cmp r17,256
            0x00005008      46f6           bge_s 12 ;0x00005014
            0x0000500a      02d8           mov_s r0,0x0x2
            0x0000500c      0f002000       b.d 14 ;0x0000501a
            0x00005010      24180220       stb r0,[r16,36]
            0x00005014      01d8           mov_s r0,0x0x1
            0x00005016      24180220       stb r0,[r16,36]
            0x0000501a      560ac006       bl 55892 ;0x00012a6c
            0x0000501e      0d089007       breq.nt r0,0x0x1e,12 ;0x00005028
            0x00005022      3d002000       b.d 60 ;0x0000505c
            0x00005026      a970           .short 0x70a9
            0x00005028      24108020       ldb r0,[r16,36]
            0x0000502c      3a0ba00a       bl.d 86840 ;0x0001a364
            0x00005030      1dd9           mov_s r1,0x0x1d
            0x00005032      14c8           ld_s r0,[gp,80]
            0x00005034      0a71           .short 0x710a
            0x00005036      a972           .short 0x72a9
            0x00005038      4a0b6011       bl.d 142152 ;0x00027b80
            0x0000503c      a973           .short 0x73a9
            0x0000503e      8fe8           brne_s r0,0x0,30 ;0x0000505a
            0x00005040      24108020       ldb r0,[r16,36]
            0x00005044      220ba00a       bl.d 86816 ;0x0001a364
            0x00005048      1ed9           mov_s r1,0x0x1e
            0x0000504a      e608e00a       bl.d 88292 ;0x0001a92c
            0x0000504e      14c8           ld_s r0,[gp,80]
            0x00005050      0871           .short 0x7108
            0x00005052      520ba00d       bl.d 111440 ;0x000203a0
            0x00005056      28d8           mov_s r0,0x0x28
            0x00005058      e5f1           b_s -54 ;0x00005022
            0x0000505a      01d8           mov_s r0,0x0x1
            0x0000505c      0a270035       mov blink,r20
            0x00005060      04141434       ld.ab r20,[sp,4]
            0x00005064      04141334       ld.ab r19,[sp,4]
            0x00005068      04141234       ld.ab r18,[sp,4]
            0x0000506c      04141134       ld.ab r17,[sp,4]
            0x00005070      04141034       ld.ab r16,[sp,4]
            0x00005074      c1c7           pop_s r15
            0x00005076      c1c6           pop_s r14
            0x00005078      e07f           j_s.d [blink]
            0x0000507a      c1c5           pop_s r13
            0x0000507c      e1c5           push_s r13
            0x0000507e      e1c6           push_s r14
            0x00005080      e1c7           push_s r15
            0x00005082      fc1c08b4       st.aw r16,[sp,-4]
            0x00005086      fc1c48b4       st.aw r17,[sp,-4]
            0x0000508a      fc1c88b4       st.aw r18,[sp,-4]
            0x0000508e      fc1cc8b4       st.aw r19,[sp,-4]
            0x00005092      fc1c08b5       st.aw r20,[sp,-4]
            0x00005096      fc1c48b5       st.aw r21,[sp,-4]
            0x0000509a      0a25c027       mov r21,blink
            0x0000509e      9a70           .short 0x709a
            0x000050a0      2875           .short 0x7528
            0x000050a2      4877           .short 0x7748
            0x000050a4      7a73           .short 0x737a
            0x000050a6      8a0e6011       bl.d 142984 ;0x00027f2c
            0x000050aa      0a220021       mov r18,r4
            0x000050ae      e41203b6       ld.as r3,[gp,-28]
            0x000050b2      1308e100       brne.d.nt r0,r3,18 ;0x000050c2
            0x000050b6      3a70           .short 0x703a
            0x000050b8      0a20802f80..   mov r16,0x0x800bf0
            0x000050c0      0bf0           b_s 22 ;0x000050d6
            0x000050c2      f51202b6       ld.as r2,[gp,-11]
            0x000050c6      3272           cmp_s r2,r17
            0x000050c8      80f4           bne_s 256 ;0x000051c8
            0x000050ca      0a20802f80..   mov r16,0x0x800bc8
            0x000050d2      0d0a1020       breq.nt r18,0x0,12 ;0x000050dc
            0x000050d6      0f002000       b.d 14 ;0x000050e2
            0x000050da      ffd8           mov_s r0,0x0xff
            0x000050dc      ed0b1120       brne.nt r19,0x0,236 ;0x000051c8
            0x000050e0      03d8           mov_s r0,0x0x3
            0x000050e2      8c2404a0       cmp r20,256
            0x000050e6      4af6           bge_s 20 ;0x000050f8
            0x000050e8      00de           mov_s r14,0x0
            0x000050ea      c971           .short 0x71c9
            0x000050ec      6a72           .short 0x726a
            0x000050ee      560c600c       bl.d 101460 ;0x0001dd40
            0x000050f2      4a73           .short 0x734a
            0x000050f4      8ae8           brne_s r0,0x0,20 ;0x00005108
            0x000050f6      6af0           b_s 212 ;0x000051c8
            0x000050f8      01d9           mov_s r1,0x0x1
            0x000050fa      6a72           .short 0x726a
            0x000050fc      460c600c       bl.d 101444 ;0x0001dd40
            0x00005100      4a73           .short 0x734a
            0x00005102      c9081000       breq.nt r0,0x0,200 ;0x000051c8
            0x00005106      00de           mov_s r14,0x0
            0x00005108      b0d9           mov_s r1,0x0xb0
            0x0000510a      01184220       stb r1,[r16,1]
            0x0000510e      02180225       stb r20,[r16,2]
            0x00005112      08d9           mov_s r1,0x0x8
            0x00005114      00184220       stb r1,[r16]
            0x00005118      04d8           mov_s r0,0x0x4
            0x0000511a      03180220       stb r0,[r16,3]
            0x0000511e      1418c223       stb r15,[r16,20]
            0x00005122      1d188223       stb r14,[r16,29]
            0x00005126      1b0f7210       brlt.d.nt r15,0x0x1,26 ;0x0000513e
            0x0000512a      00da           mov_s r2,0x0
            0x0000512c      5865           add_s r0,r13,r2
            0x0000512e      00208320       add r3,r16,r2
            0x00005132      01e2           add_s r2,r2,0x0x1
            0x00005134      4f7a           extb_s r2,r2
            0x00005136      0088           ldb_s r0,[r0,0x0]
            0x00005138      f50ae283       brlt.d.nt r2,r15,-12 ;0x0000512c
            0x0000513c      04ab           stb_s r0,[r3,0x0x4]
            0x0000513e      e41203b6       ld.as r3,[gp,-28]
            0x00005142      1f0b4104       brne.nt r3,r17,30 ;0x0000515e
            0x00005146      ffd9           mov_s r1,0x0xff
            0x00005148      15120236       ld.as r2,[gp,21]
            0x0000514c      24184220       stb r1,[r16,36]
            0x00005150      20188020       st r2,[r16,32]
            0x00005154      a609600c       bl.d 100772 ;0x0001daf8
            0x00005158      0a70           .short 0x700a
            0x0000515a      94e8           brne_s r0,0x0,40 ;0x00005180
            0x0000515c      36f0           b_s 108 ;0x000051c8
            0x0000515e      f51202b6       ld.as r2,[gp,-11]
            0x00005162      690a4104       brne.nt r2,r17,104 ;0x000051c8
            0x00005166      230a1020       breq.nt r18,0x0,34 ;0x00005186
            0x0000516a      ffd9           mov_s r1,0x0xff
            0x0000516c      16120336       ld.as r3,[gp,22]
            0x00005170      24184220       stb r1,[r16,36]
            0x00005174      2018c020       st r3,[r16,32]
            0x00005178      8209600c       bl.d 100736 ;0x0001daf8
            0x0000517c      0a70           .short 0x700a
            0x0000517e      26e8           breq_s r0,0x0,76 ;0x000051c8
            0x00005180      4b002000       b.d 74 ;0x000051ca
            0x00005184      01d8           mov_s r0,0x0x1
            0x00005186      450b1120       brne.nt r19,0x0,68 ;0x000051c8
            0x0000518a      24188223       stb r14,[r16,36]
            0x0000518e      e208e006       bl.d 55520 ;0x00012a6c
            0x00005192      00d8           mov_s r0,0x0
            0x00005194      35089107       brne.nt r0,0x0x1e,52 ;0x000051c8
            0x00005198      24108020       ldb r0,[r16,36]
            0x0000519c      ca09a00a       bl.d 86472 ;0x0001a364
            0x000051a0      1dd9           mov_s r1,0x0x1d
            0x000051a2      14c8           ld_s r0,[gp,80]
            0x000051a4      0a71           .short 0x710a
            0x000051a6      00da           mov_s r2,0x0
            0x000051a8      da096011       bl.d 141784 ;0x00027b80
            0x000051ac      00db           mov_s r3,0x0
            0x000051ae      eae8           brne_s r0,0x0,-44 ;0x00005180
            0x000051b0      24108020       ldb r0,[r16,36]
            0x000051b4      b209a00a       bl.d 86448 ;0x0001a364
            0x000051b8      1ed9           mov_s r1,0x0x1e
            0x000051ba      760fa00a       bl.d 87924 ;0x0001a92c
            0x000051be      14c8           ld_s r0,[gp,80]
            0x000051c0      0871           .short 0x7108
            0x000051c2      e209a00d       bl.d 111072 ;0x000203a0
            0x000051c6      28d8           mov_s r0,0x0x28
            0x000051c8      00d8           mov_s r0,0x0
            0x000051ca      0a274035       mov blink,r21
            0x000051ce      04141534       ld.ab r21,[sp,4]
            0x000051d2      04141434       ld.ab r20,[sp,4]
            0x000051d6      04141334       ld.ab r19,[sp,4]
            0x000051da      04141234       ld.ab r18,[sp,4]
            0x000051de      04141134       ld.ab r17,[sp,4]
            0x000051e2      04141034       ld.ab r16,[sp,4]
            0x000051e6      c1c7           pop_s r15
            0x000051e8      c1c6           pop_s r14
            0x000051ea      e07f           j_s.d [blink]
            0x000051ec      c1c5           pop_s r13
            0x000051ee      e078           nop_s
            0x000051f0      e1c5           push_s r13
            0x000051f2      e1c6           push_s r14
            0x000051f4      e1c7           push_s r15
            0x000051f6      fc1c08b4       st.aw r16,[sp,-4]
            0x000051fa      0a20c027       mov r16,blink
            0x000051fe      00df           mov_s r15,0x0
            0x00005200      cf76           mov_s 0x0,6
            0x00005202      8000c607       bnc 63616 ;0x00014a80
            0x00005206      e6ae           stb_s r15,[r14,0x0x6]
            0x00005208      b20d6000       bl.d 3504 ;0x00005fb8
            0x0000520c      e970           .short 0x70e9
            0x0000520e      92e8           brne_s r0,0x0,36 ;0x00005230
            0x00005210      160ca001       bl.d 13332 ;0x00008624
            0x00005214      068e           ldb_s r0,[r14,0x0x6]
            0x00005216      01db           mov_s r3,0x0x1
            0x00005218      068e           ldb_s r0,[r14,0x0x6]
            0x0000521a      0a270034       mov blink,r16
            0x0000521e      1a66           add_s r2,r14,r0
            0x00005220      67aa           stb_s r3,[r2,0x0x7]
            0x00005222      68aa           stb_s r3,[r2,0x0x8]
            0x00005224      04141034       ld.ab r16,[sp,4]
            0x00005228      c1c7           pop_s r15
            0x0000522a      c1c6           pop_s r14
            0x0000522c      e07f           j_s.d [blink]
            0x0000522e      c1c5           pop_s r13
            0x00005230      22cb           ldb_s r0,[gp,-222]
            0x00005232      8b081100       brne.nt r0,0x0,138 ;0x000052ba
            0x00005236      960fe005       bl.d 49044 ;0x000111c8
            0x0000523a      068e           ldb_s r0,[r14,0x0x6]
            0x0000523c      a8100300       ld r3,[r0,168]
            0x00005240      0875           .short 0x7508
            0x00005242      412b4002       lsr r0,r3,0x0x9
            0x00005246      c1b8           bmsk_s r0,r0,0x0x1
            0x00005248      73089100       brne.nt r0,0x0x2,114 ;0x000052ba
            0x0000524c      068e           ldb_s r0,[r14,0x0x6]
            0x0000524e      b7e8           brne_s r0,0x0,110 ;0x000052ba
            0x00005250      1a66           add_s r2,r14,r0
            0x00005252      278a           ldb_s r1,[r2,0x0x7]
            0x00005254      15e9           breq_s r1,0x0,42 ;0x0000527e
            0x00005256      860c800d       bl 111748 ;0x000206d8
            0x0000525a      07e8           breq_s r0,0x0,14 ;0x00005266
            0x0000525c      068e           ldb_s r0,[r14,0x0x6]
            0x0000525e      1a66           add_s r2,r14,r0
            0x00005260      2d002000       b.d 44 ;0x0000528c
            0x00005264      e7aa           stb_s r15,[r2,0x0x7]
            0x00005266      a8150310       ld r3,[r13,168]
            0x0000526a      64158210       ldb r2,[r13,100]
            0x0000526e      80bb           bset_s r3,r3,0x0
            0x00005270      a81dc010       st r3,[r13,168]
            0x00005274      a1ba           bclr_s r2,r2,0x0x1
            0x00005276      19002000       b.d 24 ;0x0000528c
            0x0000527a      641d8210       stb r2,[r13,100]
            0x0000527e      a970           .short 0x70a9
            0x00005280      52082007       bl.d 57424 ;0x000132d0
            0x00005284      288a           ldb_s r1,[r2,0x0x8]
            0x00005286      068e           ldb_s r0,[r14,0x0x6]
            0x00005288      1a66           add_s r2,r14,r0
            0x0000528a      e8aa           stb_s r15,[r2,0x0x8]
            0x0000528c      2a0a2007       bl.d 57896 ;0x000134b4
            0x00005290      a970           .short 0x70a9
            0x00005292      3e082000       bl.d 60 ;0x000052cc
            0x00005296      068e           ldb_s r0,[r14,0x0x6]
            0x00005298      11e8           breq_s r0,0x0,34 ;0x000052ba
            0x0000529a      a8150310       ld r3,[r13,168]
            0x0000529e      0a270034       mov blink,r16
            0x000052a2      a0bb           bclr_s r3,r3,0x0
            0x000052a4      a81dc010       st r3,[r13,168]
            0x000052a8      01db           mov_s r3,0x0x1
            0x000052aa      8f1dc210       stb r3,[r13,143]
            0x000052ae      04141034       ld.ab r16,[sp,4]
            0x000052b2      c1c7           pop_s r15
            0x000052b4      c1c6           pop_s r14
            0x000052b6      e07f           j_s.d [blink]
            0x000052b8      c1c5           pop_s r13
            0x000052ba      0a270034       mov blink,r16
            0x000052be      04141034       ld.ab r16,[sp,4]
            0x000052c2      c1c7           pop_s r15
            0x000052c4      c1c6           pop_s r14
            0x000052c6      e07f           j_s.d [blink]
            0x000052c8      c1c5           pop_s r13
            0x000052ca      e078           nop_s
            0x000052cc      e1c5           push_s r13
            0x000052ce      eb75           .short 0x75eb
            0x000052d0      fa0ec005       bl 48888 ;0x000111c8
            0x000052d4      64108100       ldb r1,[r0,100]
            0x000052d8      44218200       and r2,r1,0x0x2
            0x000052dc      84ea           brne_s r2,0x0,8 ;0x000052e4
            0x000052de      11002000       b.d 16 ;0x000052ec
            0x000052e2      00d8           mov_s r0,0x0
            0x000052e4      a1b9           bclr_s r1,r1,0x0x1
            0x000052e6      64184200       stb r1,[r0,100]
            0x000052ea      01d8           mov_s r0,0x0x1
            0x000052ec      fb75           .short 0x75fb
            0x000052ee      e07f           j_s.d [blink]
            0x000052f0      c1c5           pop_s r13
            0x000052f2      e078           nop_s
            0x000052f4      e1c5           push_s r13
            0x000052f6      e1c6           push_s r14
            0x000052f8      e1c7           push_s r15
            0x000052fa      fc1c08b4       st.aw r16,[sp,-4]
            0x000052fe      0a20c027       mov r16,blink
            0x00005302      00dd           mov_s r13,0x0
            0x00005304      c60ee005       bl.d 48836 ;0x000111c8
            0x00005308      a970           .short 0x70a9
            0x0000530a      0876           .short 0x7608
            0x0000530c      87108000       ldb r0,[r0,135]
            0x00005310      4708d103       brne.nt r0,0x0xf,70 ;0x00005356
            0x00005314      7b1281b0       ldb r1,[gp,-133]
            0x00005318      c0b9           bmsk_s r1,r1,0x0
            0x0000531a      9fe9           brne_s r1,0x0,62 ;0x00005356
            0x0000531c      00df           mov_s r15,0x0
            0x0000531e      0e0d6002       bl.d 19724 ;0x0000a028
            0x00005322      e970           .short 0x70e9
            0x00005324      cf71           mov_s 0x0,1
            0x00005326      80000004       b 32896 ;0x0000d3a4
            0x0000532a      0989           ldb_s r0,[r1,0x0x9]
            0x0000532c      a0b8           bclr_s r0,r0,0x0
            0x0000532e      09a9           stb_s r0,[r1,0x0x9]
            0x00005330      8a0c6000       bl.d 3208 ;0x00005fb8
            0x00005334      a970           .short 0x70a9
            0x00005336      0fe8           breq_s r0,0x0,30 ;0x00005352
            0x00005338      a8160210       ld r2,[r14,168]
            0x0000533c      8622fb0f       bic r2,r2,-257
            0x00005340      04ea           breq_s r2,0x0,8 ;0x00005348
            0x00005342      0b002000       b.d 10 ;0x0000534a
            0x00005346      01db           mov_s r3,0x0x1
            0x00005348      05db           mov_s r3,0x0x5
            0x0000534a      0f002000       b.d 14 ;0x00005356
            0x0000534e      871ec210       stb r3,[r14,135]
            0x00005352      871ec213       stb r15,[r14,135]
            0x00005356      01e5           add_s r13,r13,0x0x1
            0x00005358      af7d           extb_s r13,r13
            0x0000535a      ad0d5290       brlt.nt r13,0x0x1,-84 ;0x00005304
            0x0000535e      0a270034       mov blink,r16
            0x00005362      04141034       ld.ab r16,[sp,4]
            0x00005366      c1c7           pop_s r15
            0x00005368      c1c6           pop_s r14
            0x0000536a      e07f           j_s.d [blink]
            0x0000536c      c1c5           pop_s r13
            0x0000536e      e078           nop_s
            0x00005370      e1c5           push_s r13
            0x00005372      e1c6           push_s r14
            0x00005374      eb76           .short 0x76eb
            0x00005376      00dd           mov_s r13,0x0
            0x00005378      520ee005       bl.d 48720 ;0x000111c8
            0x0000537c      a970           .short 0x70a9
            0x0000537e      01e5           add_s r13,r13,0x0x1
            0x00005380      af7d           extb_s r13,r13
            0x00005382      f90d5290       brlt.nt r13,0x0x1,-8 ;0x00005378
            0x00005386      fb76           .short 0x76fb
            0x00005388      c1c6           pop_s r14
            0x0000538a      e07f           j_s.d [blink]
            0x0000538c      c1c5           pop_s r13
            0x0000538e      e078           nop_s
            0x00005390      e1c5           push_s r13
            0x00005392      e1c6           push_s r14
            0x00005394      e1c7           push_s r15
            0x00005396      0875           .short 0x7508
            0x00005398      86108200       ldb r2,[r0,134]
            0x0000539c      cf76           mov_s 0x0,6
            0x0000539e      80003407       b.d 57472 ;0x0001341c
            0x000053a2      14268010       add1 r0,r14,r2
            0x000053a6      7290           ldh_s r3,[r0,0x0x24]
            0x000053a8      5a95           ldh_s r2,[r13,0x0x34]
            0x000053aa      eb77           .short 0x77eb
            0x000053ac      0b0ae300       brge.d.nt r2,r3,10 ;0x000053b6
            0x000053b0      2c95           ldh_s r1,[r13,0x0x18]
            0x000053b2      0f0a4300       brge.nt r2,r1,14 ;0x000053be
            0x000053b6      250b8300       brge.nt r3,r2,36 ;0x000053d8
            0x000053ba      21098200       brlt.nt r1,r2,32 ;0x000053d8
            0x000053be      cf73           mov_s 0x0,3
            0x000053c0      80000004       b 32896 ;0x0000d440
            0x000053c4      c4138000       ldb r0,[r3,196]
            0x000053c8      560e2001       bl.d 9812 ;0x00007a1c
            0x000053cc      89d9           mov_s r1,0x0x89
            0x000053ce      86158210       ldb r2,[r13,134]
            0x000053d2      2c95           ldh_s r1,[r13,0x0x18]
            0x000053d4      14268010       add1 r0,r14,r2
            0x000053d8      32b0           sth_s r1,[r0,0x0x24]
            0x000053da      fb77           .short 0x77fb
            0x000053dc      c1c7           pop_s r15
            0x000053de      c1c6           pop_s r14
            0x000053e0      e07f           j_s.d [blink]
            0x000053e2      c1c5           pop_s r13
            0x000053e4      e1c5           push_s r13
            0x000053e6      e1c6           push_s r14
            0x000053e8      eb76           .short 0x76eb
            0x000053ea      ea0b200c       bl.d 99304 ;0x0001d7d0
            0x000053ee      14dd           mov_s r13,0x0x14
            0x000053f0      760ca007       bl.d 62580 ;0x00014864
            0x000053f4      00d8           mov_s r0,0x0
            0x000053f6      10e8           breq_s r0,0x0,32 ;0x00005414
            0x000053f8      d20de005       bl.d 48592 ;0x000111c8
            0x000053fc      00d8           mov_s r0,0x0
            0x000053fe      4998           ldh_s.x r2,[r0,0x0x12]
            0x00005400      150d8310       brge.nt r13,r2,20 ;0x00005414
            0x00005404      c60de005       bl.d 48580 ;0x000111c8
            0x00005408      00d8           mov_s r0,0x0
            0x0000540a      44100101       ldh r1,[r0,68]
            0x0000540e      01e1           add_s r1,r1,0x0x1
            0x00005410      44184400       sth r1,[r0,68]
            0x00005414      fb76           .short 0x76fb
            0x00005416      c1c6           pop_s r14
            0x00005418      e07f           j_s.d [blink]
            0x0000541a      c1c5           pop_s r13
            0x0000541c      f1c0           push_s blink
            0x0000541e      720a4fff       bl -5520 ;0x00003e8c
            0x00005422      7e094fff       bl -5764 ;0x00003d9c
            0x00005426      06090006       bl 49412 ;0x00011528
            0x0000542a      9e0c4002       bl 19612 ;0x0000a0c4
            0x0000542e      9e0b4fff       bl -5220 ;0x00003fc8
            0x00005432      01d8           mov_s r0,0x0x1
            0x00005434      00d9           mov_s r1,0x0
            0x00005436      860e200d       bl.d 108164 ;0x0001fab8
            0x0000543a      2872           .short 0x7228
            0x0000543c      d1c0           pop_s blink
            0x0000543e      e07e           j_s [blink]
            0x00005440      e1c5           push_s r13
            0x00005442      eb75           .short 0x75eb
            0x00005444      9609000c       bl 98708 ;0x0001d5d8
            0x00005448      ca0f4fff       bl -4152 ;0x00004410
            0x0000544c      620f0fff       bl -6304 ;0x00003bac
            0x00005450      920d8010       bl 136592 ;0x000269e0
            0x00005454      520ca007       bl.d 62544 ;0x000148a4
            0x00005458      00d8           mov_s r0,0x0
            0x0000545a      8de8           brne_s r0,0x0,26 ;0x00005472
            0x0000545c      0a0ca007       bl.d 62472 ;0x00014864
            0x00005460      00d8           mov_s r0,0x0
            0x00005462      8fe8           brne_s r0,0x0,30 ;0x0000547e
            0x00005464      660de005       bl.d 48484 ;0x000111c8
            0x00005468      00d8           mov_s r0,0x0
            0x0000546a      1a80           ld_s r0,[r0,0x0x68]
            0x0000546c      8620ff07       bic r0,r0,-33
            0x00005470      07e8           breq_s r0,0x0,14 ;0x0000547e
            0x00005472      5a0de005       bl.d 48472 ;0x000111c8
            0x00005476      00d8           mov_s r0,0x0
            0x00005478      00d9           mov_s r1,0x0
            0x0000547a      44184400       sth r1,[r0,68]
            0x0000547e      fb75           .short 0x75fb
            0x00005480      e07f           j_s.d [blink]
            0x00005482      c1c5           pop_s r13
            0x00005484      f1c0           push_s blink
            0x00005486      e60d4fff       bl -4636 ;0x00004268
            0x0000548a      d1c0           pop_s blink
            0x0000548c      e07e           j_s [blink]
            0x0000548e      e078           nop_s
            0x00005490      e1c5           push_s r13
            0x00005492      e1c6           push_s r14
            0x00005494      eb76           .short 0x76eb
            0x00005496      00dd           mov_s r13,0x0
            0x00005498      8e0c2fff       bl.d -7028 ;0x00003924
            0x0000549c      a970           .short 0x70a9
            0x0000549e      cf70           mov_s 0x0,0
            0x000054a0      80003408       b.d 65664 ;0x00015520
            0x000054a4      a2a8           stb_s r13,[r0,0x0x2]
            0x000054a6      fb76           .short 0x76fb
            0x000054a8      c1c6           pop_s r14
            0x000054aa      e07f           j_s.d [blink]
            0x000054ac      c1c5           pop_s r13
            0x000054ae      e078           nop_s
            0x000054b0      f1c0           push_s blink
            0x000054b2      cf71           mov_s 0x0,1
            0x000054b4      80003408       b.d 65664 ;0x00015534
            0x000054b8      02a9           stb_s r0,[r1,0x0x2]
            0x000054ba      cf70           mov_s 0x0,0
            0x000054bc      00008813       bnv 159744 ;0x0002c4bc
            0x000054c0      660c0fff       bl -7068 ;0x00003924
            0x000054c4      060c6007       bl.d 60420 ;0x000140c8
            0x000054c8      01d8           mov_s r0,0x0x1
            0x000054ca      d1c0           pop_s blink
            0x000054cc      e07e           j_s [blink]
            0x000054ce      e078           nop_s
            0x000054d0      e1c5           push_s r13
            0x000054d2      e1c6           push_s r14
            0x000054d4      eb76           .short 0x76eb
            0x000054d6      be0f6008       bl.d 69564 ;0x00016490
            0x000054da      05d8           mov_s r0,0x0x5
            0x000054dc      9b085000       breq.nt r0,0x0x1,154 ;0x00005576
            0x000054e0      3e0f4011       bl 143164 ;0x0002841c
            0x000054e4      0875           .short 0x7508
            0x000054e6      71cb           ldb_s r0,[gp,-143]
            0x000054e8      c0b8           bmsk_s r0,r0,0x0
            0x000054ea      16e8           breq_s r0,0x0,44 ;0x00005514
            0x000054ec      320f4011       bl 143152 ;0x0002841c
            0x000054f0      0ce8           breq_s r0,0x0,24 ;0x00005508
            0x000054f2      5e08a011       bl.d 143452 ;0x0002854c
            0x000054f6      00d8           mov_s r0,0x0
            0x000054f8      cf71           mov_s 0x0,1
            0x000054fa      80000004       b 32896 ;0x0000d578
            0x000054fe      a9118300       ldb r3,[r1,169]
            0x00005502      a0bb           bclr_s r3,r3,0x0
            0x00005504      a919c200       stb r3,[r1,169]
            0x00005508      71cb           ldb_s r0,[gp,-143]
            0x0000550a      a0b8           bclr_s r0,r0,0x0
            0x0000550c      4b002000       b.d 74 ;0x00005556
            0x00005510      711a02b0       stb r0,[gp,-143]
            0x00005514      3e0f400b       bl 94012 ;0x0001c450
            0x00005518      cf71           mov_s 0x0,1
            0x0000551a      80000004       b 32896 ;0x0000d598
            0x0000551e      1708d100       brne.nt r0,0x0x3,22 ;0x00005532
            0x00005522      a6118200       ldb r2,[r1,166]
            0x00005526      c0ba           bmsk_s r2,r2,0x0
            0x00005528      85ea           brne_s r2,0x0,10 ;0x00005532
            0x0000552a      f60e4011       bl 143092 ;0x0002841c
            0x0000552e      15e8           breq_s r0,0x0,42 ;0x00005556
            0x00005530      05f0           b_s 10 ;0x0000553a
            0x00005532      a9118300       ldb r3,[r1,169]
            0x00005536      c0bb           bmsk_s r3,r3,0x0
            0x00005538      84eb           brne_s r3,0x0,8 ;0x00005540
            0x0000553a      1b002000       b.d 26 ;0x00005552
            0x0000553e      00d8           mov_s r0,0x0
            0x00005540      a6118200       ldb r2,[r1,166]
            0x00005544      c0ba           bmsk_s r2,r2,0x0
            0x00005546      86ea           brne_s r2,0x0,12 ;0x00005550
            0x00005548      9e118100       ldb r1,[r1,158]
            0x0000554c      0b095200       brlt.nt r1,0x0x1,10 ;0x00005556
            0x00005550      01d8           mov_s r0,0x0x1
            0x00005552      fe0f4011       bl 143356 ;0x0002854c
            0x00005556      ca0e4011       bl 143048 ;0x0002841c
            0x0000555a      a778           xor_s r0,r0,r13
            0x0000555c      0de8           breq_s r0,0x0,26 ;0x00005576
            0x0000555e      c20e4011       bl 143040 ;0x0002841c
            0x00005562      06e8           breq_s r0,0x0,12 ;0x0000556c
            0x00005564      cf71           mov_s 0x0,1
            0x00005566      0000c909       bgt 79872 ;0x00018d64
            0x0000556a      04f0           b_s 8 ;0x00005570
            0x0000556c      8a214f0b       mov r1,1005
            0x00005570      fe0f6008       bl.d 69628 ;0x0001656c
            0x00005574      05d8           mov_s r0,0x0x5
            0x00005576      fb76           .short 0x76fb
            0x00005578      c1c6           pop_s r14
            0x0000557a      e07f           j_s.d [blink]
            0x0000557c      c1c5           pop_s r13
            0x0000557e      e078           nop_s
            0x00005580      13099000       breq.nt r1,0x0x2,18 ;0x00005592
            0x00005584      cf71           mov_s 0x0,1
            0x00005586      8000600b       b.d 92288 ;0x0001be04
            0x0000558a      28118200       ldb r2,[r1,40]
            0x0000558e      0d088100       brne.nt r0,r2,12 ;0x00005598
            0x00005592      0b002000       b.d 10 ;0x0000559a
            0x00005596      00d8           mov_s r0,0x0
            0x00005598      80d8           mov_s r0,0x0x80
            0x0000559a      e07e           j_s [blink]
            0x0000559c      f1c0           push_s blink
            0x0000559e      a20b6008       bl.d 68512 ;0x0001613c
            0x000055a2      14d8           mov_s r0,0x0x14
            0x000055a4      a60b6008       bl.d 68516 ;0x00016148
            0x000055a8      7ed8           mov_s r0,0x0x7e
            0x000055aa      2e082000       bl.d 44 ;0x000055d4
            0x000055ae      7ed8           mov_s r0,0x0x7e
            0x000055b0      0e082000       bl.d 12 ;0x000055bc
            0x000055b4      14d8           mov_s r0,0x0x14
            0x000055b6      d1c0           pop_s blink
            0x000055b8      e07e           j_s [blink]
            0x000055ba      e078           nop_s
            0x000055bc      e1c5           push_s r13
            0x000055be      f1c0           push_s blink
            0x000055c0      0875           .short 0x7508
            0x000055c2      de0a6009       bl.d 76508 ;0x0001809c
            0x000055c6      f0d8           mov_s r0,0x0xf0
            0x000055c8      d60a6009       bl.d 76500 ;0x0001809c
            0x000055cc      a970           .short 0x70a9
            0x000055ce      d1c0           pop_s blink
            0x000055d0      e07f           j_s.d [blink]
            0x000055d2      c1c5           pop_s r13
            0x000055d4      e1c5           push_s r13
            0x000055d6      f1c0           push_s blink
            0x000055d8      0875           .short 0x7508
            0x000055da      c60a6009       bl.d 76484 ;0x0001809c
            0x000055de      e0d8           mov_s r0,0x0xe0
            0x000055e0      be0a6009       bl.d 76476 ;0x0001809c
            0x000055e4      f0d8           mov_s r0,0x0xf0
            0x000055e6      ba0a6009       bl.d 76472 ;0x0001809c
            0x000055ea      a970           .short 0x70a9
            0x000055ec      d1c0           pop_s blink
            0x000055ee      e07f           j_s.d [blink]
            0x000055f0      c1c5           pop_s r13
            0x000055f2      e078           nop_s
            0x000055f4      e1c5           push_s r13
            0x000055f6      1bcb           ldb_s r0,[gp,-229]
            0x000055f8      8620fe0f       bic r0,r0,-65
            0x000055fc      0d083000       breq.d.nt r0,0x0,12 ;0x00005608
            0x00005600      eb75           .short 0x75eb
            0x00005602      d60fefff       bl.d -44 ;0x000055d4
            0x00005606      12d8           mov_s r0,0x0x12
            0x00005608      fb75           .short 0x75fb
            0x0000560a      e07f           j_s.d [blink]
            0x0000560c      c1c5           pop_s r13
            0x0000560e      e078           nop_s
            0x00005610      e1c5           push_s r13
            0x00005612      1bcb           ldb_s r0,[gp,-229]
            0x00005614      8620fd0f       bic r0,r0,-129
            0x00005618      0d083000       breq.d.nt r0,0x0,12 ;0x00005624
            0x0000561c      eb75           .short 0x75eb
            0x0000561e      ba0fefff       bl.d -72 ;0x000055d4
            0x00005622      59d8           mov_s r0,0x0x59
            0x00005624      fb75           .short 0x75fb
            0x00005626      e07f           j_s.d [blink]
            0x00005628      c1c5           pop_s r13
            0x0000562a      e078           nop_s
            0x0000562c      e1c5           push_s r13
            0x0000562e      f1c0           push_s blink
            0x00005630      3e0e4011       bl 142908 ;0x0002846c
            0x00005634      04e8           breq_s r0,0x0,8 ;0x0000563c
            0x00005636      0b002000       b.d 10 ;0x0000563e
            0x0000563a      00d8           mov_s r0,0x0
            0x0000563c      01d8           mov_s r0,0x0x1
            0x0000563e      cf75           mov_s 0x0,5
            0x00005640      8000b708       bnm.d 69760 ;0x000166c0
            0x00005644      208d           ldb_s r1,[r13,0x0]
            0x00005646      5b084100       brne.nt r0,r1,90 ;0x0000569e
            0x0000564a      418d           ldb_s r2,[r13,0x0x1]
            0x0000564c      1edb           mov_s r3,0x0x1e
            0x0000564e      110ac300       brge.nt r2,r3,16 ;0x0000565c
            0x00005652      01e2           add_s r2,r2,0x0x1
            0x00005654      41ad           stb_s r2,[r13,0x0x1]
            0x00005656      d1c0           pop_s blink
            0x00005658      e07f           j_s.d [blink]
            0x0000565a      c1c5           pop_s r13
            0x0000565c      00da           mov_s r2,0x0
            0x0000565e      228d           ldb_s r1,[r13,0x0x2]
            0x00005660      41ad           stb_s r2,[r13,0x0x1]
            0x00005662      3b79           asl_s r1,r1
            0x00005664      09083000       breq.d.nt r0,0x0,8 ;0x0000566c
            0x00005668      2f79           extb_s r1,r1
            0x0000566a      01da           mov_s r2,0x0x1
            0x0000566c      4579           or_s r1,r1,r2
            0x0000566e      e60d600b       bl.d 93668 ;0x0001c450
            0x00005672      22ad           stb_s r1,[r13,0x0x2]
            0x00005674      228d           ldb_s r1,[r13,0x0x2]
            0x00005676      37083100       brne.d.nt r0,0x0,54 ;0x000056aa
            0x0000567a      c1b9           bmsk_s r1,r1,0x0x1
            0x0000567c      b7091000       breq.nt r1,0x0,182 ;0x00005732
            0x00005680      9d095000       breq.nt r1,0x0x1,156 ;0x0000571c
            0x00005684      af099100       brne.nt r1,0x0x2,174 ;0x00005732
            0x00005688      2a0eefff       bl.d -472 ;0x000054b0
            0x0000568c      64d8           mov_s r0,0x0x64
            0x0000568e      cf72           mov_s 0x0,2
            0x00005690      80000004       b 32896 ;0x0000d710
            0x00005694      b4128100       ldb r1,[r2,180]
            0x00005698      91002000       b.d 144 ;0x00005728
            0x0000569c      a0b9           bclr_s r1,r1,0x0
            0x0000569e      00ad           stb_s r0,[r13,0x0]
            0x000056a0      00da           mov_s r2,0x0
            0x000056a2      41ad           stb_s r2,[r13,0x0x1]
            0x000056a4      d1c0           pop_s blink
            0x000056a6      e07f           j_s.d [blink]
            0x000056a8      c1c5           pop_s r13
            0x000056aa      8b091000       breq.nt r1,0x0,138 ;0x00005732
            0x000056ae      71095000       breq.nt r1,0x0x1,112 ;0x0000571c
            0x000056b2      83099100       brne.nt r1,0x0x2,130 ;0x00005732
            0x000056b6      ed1201b6       ld.as r1,[gp,-19]
            0x000056ba      bde9           brne_s r1,0x0,122 ;0x00005732
            0x000056bc      d20c0001       bl 9424 ;0x00007b8c
            0x000056c0      0be8           breq_s r0,0x0,22 ;0x000056d6
            0x000056c2      73089100       brne.nt r0,0x0x2,114 ;0x00005732
            0x000056c6      3d1a02b0       stb r0,[gp,-195]
            0x000056ca      560f600f       bl.d 126804 ;0x0002461c
            0x000056ce      01d8           mov_s r0,0x0x1
            0x000056d0      d1c0           pop_s blink
            0x000056d2      e07f           j_s.d [blink]
            0x000056d4      c1c5           pop_s r13
            0x000056d6      4a0f600f       bl.d 126792 ;0x0002461c
            0x000056da      01d8           mov_s r0,0x0x1
            0x000056dc      cf72           mov_s 0x0,2
            0x000056de      80000004       b 32896 ;0x0000d75c
            0x000056e2      b4128100       ldb r1,[r2,180]
            0x000056e6      a0b9           bclr_s r1,r1,0x0
            0x000056e8      b41a4200       stb r1,[r2,180]
            0x000056ec      551282b0       ldb r2,[gp,-171]
            0x000056f0      83ea           brne_s r2,0x0,6 ;0x000056f6
            0x000056f2      120c0009       bl 74768 ;0x00017b00
            0x000056f6      2f120337       ldh.as r3,[gp,47]
            0x000056fa      0423800f00..   and r0,r3,0x0x8080
            0x00005702      3308810f00..   brne.nt r0,0x0x8000,50 ;0x00005732
            0x0000570a      0423830f00..   and r3,r3,0x0xfffe
            0x00005712      2f1adc30       sth.as r3,[gp,47]
            0x00005716      d1c0           pop_s blink
            0x00005718      e07f           j_s.d [blink]
            0x0000571a      c1c5           pop_s r13
            0x0000571c      cf72           mov_s 0x0,2
            0x0000571e      80000004       b 32896 ;0x0000d79c
            0x00005722      b4128100       ldb r1,[r2,180]
            0x00005726      80b9           bset_s r1,r1,0x0
            0x00005728      b41a4200       stb r1,[r2,180]
            0x0000572c      d1c0           pop_s blink
            0x0000572e      e07f           j_s.d [blink]
            0x00005730      c1c5           pop_s r13
            0x00005732      d1c0           pop_s blink
            0x00005734      e07f           j_s.d [blink]
            0x00005736      c1c5           pop_s r13
            0x00005738      2f120137       ldh.as r1,[gp,47]
            0x0000573c      0421820f00..   and r2,r1,0x0x91
            0x00005744      8c224284       cmp r2,145
            0x00005748      06f2           beq_s 12 ;0x00005754
            0x0000574a      11da           mov_s r2,0x0x11
            0x0000574c      8fba           bset_s r2,r2,0x0xf
            0x0000574e      4479           and_s r1,r1,r2
            0x00005750      17098100       brne.nt r1,r2,22 ;0x00005766
            0x00005754      cf71           mov_s 0x0,1
            0x00005756      f00000c6       b -474896 ;0xfffffffffff91844
            0x0000575a      5e118080       ldb r0,[r1,-162]
            0x0000575e      a0b8           bclr_s r0,r0,0x0
            0x00005760      5e190280       stb r0,[r1,-162]
            0x00005764      13f0           b_s 38 ;0x0000578a
            0x00005766      cf71           mov_s 0x0,1
            0x00005768      80000004       b 32896 ;0x0000d7e8
            0x0000576c      ad118000       ldb r0,[r1,173]
            0x00005770      cf71           mov_s 0x0,1
            0x00005772      f00000c6       b -474896 ;0xfffffffffff91860
            0x00005776      5e118280       ldb r2,[r1,-162]
            0x0000577a      0626037000..   bic r3,0x0x1,r0
            0x00005782      a0ba           bclr_s r2,r2,0x0
            0x00005784      657a           or_s r2,r2,r3
            0x00005786      5e198280       stb r2,[r1,-162]
            0x0000578a      e07e           j_s [blink]
            0x0000578c      f1c0           push_s blink
            0x0000578e      0871           .short 0x7108
            0x00005790      d60c600a       bl.d 85204 ;0x0001a464
            0x00005794      00d8           mov_s r0,0x0
            0x00005796      d1c0           pop_s blink
            0x00005798      e07e           j_s [blink]
            0x0000579a      e078           nop_s
            0x0000579c      f1c0           push_s blink
            0x0000579e      0871           .short 0x7108
            0x000057a0      e20d600a       bl.d 85472 ;0x0001a580
            0x000057a4      00d8           mov_s r0,0x0
            0x000057a6      d1c0           pop_s blink
            0x000057a8      e07e           j_s [blink]
            0x000057aa      e078           nop_s
            0x000057ac      f1c0           push_s blink
            0x000057ae      0871           .short 0x7108
            0x000057b0      b60c600a       bl.d 85172 ;0x0001a464
            0x000057b4      01d8           mov_s r0,0x0x1
            0x000057b6      d1c0           pop_s blink
            0x000057b8      e07e           j_s [blink]
            0x000057ba      e078           nop_s
            0x000057bc      f1c0           push_s blink
            0x000057be      0871           .short 0x7108
            0x000057c0      c20d600a       bl.d 85440 ;0x0001a580
            0x000057c4      01d8           mov_s r0,0x0x1
            0x000057c6      d1c0           pop_s blink
            0x000057c8      e07e           j_s [blink]
            0x000057ca      e078           nop_s
            0x000057cc      f1c0           push_s blink
            0x000057ce      0871           .short 0x7108
            0x000057d0      960c600a       bl.d 85140 ;0x0001a464
            0x000057d4      02d8           mov_s r0,0x0x2
            0x000057d6      d1c0           pop_s blink
            0x000057d8      e07e           j_s [blink]
            0x000057da      e078           nop_s
            0x000057dc      f1c0           push_s blink
            0x000057de      0871           .short 0x7108
            0x000057e0      a20d600a       bl.d 85408 ;0x0001a580
            0x000057e4      02d8           mov_s r0,0x0x2
            0x000057e6      d1c0           pop_s blink
            0x000057e8      e07e           j_s [blink]
            0x000057ea      e078           nop_s
            0x000057ec      6969           sub_s r3,r1,0x0x1
            0x000057ee      51093000       breq.d.nt r1,0x0,80 ;0x0000583c
            0x000057f2      6f7b           extb_s r3,r3
            0x000057f4      8a260200       mov r6,128
            0x000057f8      00108500       ldb r5,[r0]
            0x000057fc      80d9           mov_s r1,0x0x80
            0x000057fe      04228401       and r4,r2,r6
            0x00005802      5b7a           asl_s r2,r2
            0x00005804      0d0c3000       breq.d.nt r4,0x0,12 ;0x00005810
            0x00005808      4f7a           extb_s r2,r2
            0x0000580a      4722c201       xor r2,r2,0x0x7
            0x0000580e      4f7a           extb_s r2,r2
            0x00005810      04254400       and r4,r5,r1
            0x00005814      0b0c1000       breq.nt r4,0x0,10 ;0x0000581e
            0x00005818      4722c201       xor r2,r2,0x0x7
            0x0000581c      4f7a           extb_s r2,r2
            0x0000581e      4129c407       lsr r4,r1,0x0x1f
            0x00005822      00244400       add r4,r4,r1
            0x00005826      2f240101       asr r4,r4
            0x0000582a      2f210701       extb r1,r4
            0x0000582e      e9e9           brne_s r1,0x0,-46 ;0x000057fe
            0x00005830      01e0           add_s r0,r0,0x0x1
            0x00005832      6871           .short 0x7168
            0x00005834      61bb           sub_s r3,r3,0x0x1
            0x00005836      c5093180       brne.d.nt r1,0x0,-60 ;0x000057f8
            0x0000583a      6f7b           extb_s r3,r3
            0x0000583c      e07f           j_s.d [blink]
            0x0000583e      4870           .short 0x7048
            0x00005840      e1c5           push_s r13
            0x00005842      e1c6           push_s r14
            0x00005844      e1c7           push_s r15
            0x00005846      fc1c08b4       st.aw r16,[sp,-4]
            0x0000584a      0a20c027       mov r16,blink
            0x0000584e      b608c005       bl 47284 ;0x00011100
            0x00005852      7a09c005       bl 47480 ;0x000111c8
            0x00005856      0876           .short 0x7608
            0x00005858      ac90           ldh_s r13,[r0,0x0x18]
            0x0000585a      00d8           mov_s r0,0x0
            0x0000585c      c60d6006       bl.d 52676 ;0x00012620
            0x00005860      01d9           mov_s r1,0x0x1
            0x00005862      0877           .short 0x7708
            0x00005864      82ef           brne_s r15,0x0,4 ;0x00005868
            0x00005866      03df           mov_s r15,0x0x3
            0x00005868      3a86           ld_s r1,[r14,0x0x68]
            0x0000586a      8621ff07       bic r1,r1,-33
            0x0000586e      10e9           breq_s r1,0x0,32 ;0x0000588c
            0x00005870      720ce005       bl.d 48240 ;0x000114e0
            0x00005874      86168010       ldb r0,[r14,134]
            0x00005878      0873           .short 0x7308
            0x0000587a      250b3100       brne.d.nt r3,0x0,36 ;0x0000589c
            0x0000587e      c970           .short 0x70c9
            0x00005880      be0a6006       bl.d 51900 ;0x0001233c
            0x00005884      5ed9           mov_s r1,0x0x5e
            0x00005886      ab002000       b.d 170 ;0x0000592e
            0x0000588a      027d           sub_s r13,r13,r0
            0x0000588c      c970           .short 0x70c9
            0x0000588e      b20a6006       bl.d 51888 ;0x0001233c
            0x00005892      4ad9           mov_s r1,0x0x4a
            0x00005894      0872           .short 0x7208
            0x00005896      150a6503       brhs.d.nt r2,r13,20 ;0x000058a8
            0x0000589a      c970           .short 0x70c9
            0x0000589c      a20a6006       bl.d 51872 ;0x0001233c
            0x000058a0      4ad9           mov_s r1,0x0x4a
            0x000058a2      8f002000       b.d 142 ;0x0000592e
            0x000058a6      027d           sub_s r13,r13,r0
            0x000058a8      960a6006       bl.d 51860 ;0x0001233c
            0x000058ac      31d9           mov_s r1,0x0x31
            0x000058ae      0871           .short 0x7108
            0x000058b0      13096503       brhs.d.nt r1,r13,18 ;0x000058c2
            0x000058b4      c970           .short 0x70c9
            0x000058b6      8a0a6006       bl.d 51848 ;0x0001233c
            0x000058ba      31d9           mov_s r1,0x0x31
            0x000058bc      73002000       b.d 114 ;0x0000592e
            0x000058c0      027d           sub_s r13,r13,r0
            0x000058c2      7e0a6006       bl.d 51836 ;0x0001233c
            0x000058c6      18d9           mov_s r1,0x0x18
            0x000058c8      0873           .short 0x7308
            0x000058ca      150b6503       brhs.d.nt r3,r13,20 ;0x000058dc
            0x000058ce      c970           .short 0x70c9
            0x000058d0      6e0a6006       bl.d 51820 ;0x0001233c
            0x000058d4      18d9           mov_s r1,0x0x18
            0x000058d6      5b002000       b.d 90 ;0x0000592e
            0x000058da      027d           sub_s r13,r13,r0
            0x000058dc      620a6006       bl.d 51808 ;0x0001233c
            0x000058e0      0ad9           mov_s r1,0x0xa
            0x000058e2      0872           .short 0x7208
            0x000058e4      130a6503       brhs.d.nt r2,r13,18 ;0x000058f6
            0x000058e8      c970           .short 0x70c9
            0x000058ea      560a6006       bl.d 51796 ;0x0001233c
            0x000058ee      0ad9           mov_s r1,0x0xa
            0x000058f0      3f002000       b.d 62 ;0x0000592e
            0x000058f4      027d           sub_s r13,r13,r0
            0x000058f6      4a0a6006       bl.d 51784 ;0x0001233c
            0x000058fa      05d9           mov_s r1,0x0x5
            0x000058fc      0871           .short 0x7108
            0x000058fe      15096503       brhs.d.nt r1,r13,20 ;0x00005910
            0x00005902      c970           .short 0x70c9
            0x00005904      3a0a6006       bl.d 51768 ;0x0001233c
            0x00005908      05d9           mov_s r1,0x0x5
            0x0000590a      27002000       b.d 38 ;0x0000592e
            0x0000590e      027d           sub_s r13,r13,r0
            0x00005910      2e0a6006       bl.d 51756 ;0x0001233c
            0x00005914      01d9           mov_s r1,0x0x1
            0x00005916      15084503       brhs.nt r0,r13,20 ;0x00005928
            0x0000591a      c970           .short 0x70c9
            0x0000591c      220a6006       bl.d 51744 ;0x0001233c
            0x00005920      01d9           mov_s r1,0x0x1
            0x00005922      0f002000       b.d 14 ;0x0000592e
            0x00005926      027d           sub_s r13,r13,r0
            0x00005928      cf75           mov_s 0x0,5
            0x0000592a      0000ffff       b.d -2048 ;0x00005128
            0x0000592e      cf76           mov_s 0x0,6
            0x00005930      0000ffff       b.d -2048 ;0x00005130
            0x00005934      5f0d8013       breq.nt r13,r14,94 ;0x00005992
            0x00005938      126d           asl_s r0,r13,0x0x2
            0x0000593a      1578           add2_s r0,r0,r0
            0x0000593c      1478           add1_s r0,r0,r0
            0x0000593e      3a09affe       bl.d -11976 ;0x00002a74
            0x00005942      e971           .short 0x71e9
            0x00005944      cf73           mov_s 0x0,3
            0x00005946      8888           ldb_s r12,[r0,0x0x8]
            0x00005948      8988           ldb_s r12,[r0,0x0x9]
            0x0000594a      052b3e00       divu 0x0,r3,r0
            0x0000594e      6f72           mov_s fp,2
            0x00005950      25ba           lsr_s r2,r2,0x0x5
            0x00005952      326a           asl_s r1,r2,0x0x2
            0x00005954      3579           add2_s r1,r1,r1
            0x00005956      3479           add1_s r1,r1,r1
            0x00005958      02204200       sub r2,r0,r1
            0x0000595c      0b0a3000       breq.d.nt r2,0x0,10 ;0x00005966
            0x00005960      0875           .short 0x7508
            0x00005962      427d           sub_s r13,r13,r2
            0x00005964      3ce5           add_s r13,r13,0x0x3c
            0x00005966      190d151f       brhs.nt r13,0x0x3c,24 ;0x0000597c
            0x0000596a      3cd8           mov_s r0,0x0x3c
            0x0000596c      0a270034       mov blink,r16
            0x00005970      04141034       ld.ab r16,[sp,4]
            0x00005974      c1c7           pop_s r15
            0x00005976      c1c6           pop_s r14
            0x00005978      e07f           j_s.d [blink]
            0x0000597a      c1c5           pop_s r13
            0x0000597c      170e4513       brhs.nt r14,r13,22 ;0x00005992
            0x00005980      d078           exth_s r0,r14
            0x00005982      0a270034       mov blink,r16
            0x00005986      04141034       ld.ab r16,[sp,4]
            0x0000598a      c1c7           pop_s r15
            0x0000598c      c1c6           pop_s r14
            0x0000598e      e07f           j_s.d [blink]
            0x00005990      c1c5           pop_s r13
            0x00005992      b078           exth_s r0,r13
            0x00005994      0a270034       mov blink,r16
            0x00005998      04141034       ld.ab r16,[sp,4]
            0x0000599c      c1c7           pop_s r15
            0x0000599e      c1c6           pop_s r14
            0x000059a0      e07f           j_s.d [blink]
            0x000059a2      c1c5           pop_s r13
            0x000059a4      e1c5           push_s r13
            0x000059a6      e1c6           push_s r14
            0x000059a8      0875           .short 0x7508
            0x000059aa      0bcb           ldb_s r0,[gp,-245]
            0x000059ac      0f083000       breq.d.nt r0,0x0,14 ;0x000059ba
            0x000059b0      eb76           .short 0x76eb
            0x000059b2      ffdb           mov_s r3,0x0xff
            0x000059b4      29002000       b.d 40 ;0x000059dc
            0x000059b8      60ad           stb_s r3,[r13,0x0]
            0x000059ba      560b6008       bl.d 68436 ;0x0001650c
            0x000059be      0fd8           mov_s r0,0x0xf
            0x000059c0      84e8           brne_s r0,0x0,8 ;0x000059c8
            0x000059c2      1b002000       b.d 26 ;0x000059da
            0x000059c6      00d9           mov_s r1,0x0
            0x000059c8      cf72           mov_s 0x0,2
            0x000059ca      b7d1           ld_s r1,[pcl,0x0x2dc] ;0x00005ca4
            0x000059cc      5917052a       ld.di.aw r5,[r23,89]
            0x000059d0      3e006f71       bpnz.d 927806 ;0x000e820e
            0x000059d4      2cb9           lsr_s r1,r1,0x0xc
            0x000059d6      01e1           add_s r1,r1,0x0x1
            0x000059d8      2f79           extb_s r1,r1
            0x000059da      20ad           stb_s r1,[r13,0x0]
            0x000059dc      fb76           .short 0x76fb
            0x000059de      c1c6           pop_s r14
            0x000059e0      e07f           j_s.d [blink]
            0x000059e2      c1c5           pop_s r13
            0x000059e4      e1c5           push_s r13
            0x000059e6      408a           ldb_s r2,[r2,0x0]
            0x000059e8      1f0a3000       breq.d.nt r2,0x0,30 ;0x00005a06
            0x000059ec      eb75           .short 0x75eb
            0x000059ee      8c22c38f       cmp r2,255
            0x000059f2      13f2           beq_s 38 ;0x00005a16
            0x000059f4      052a820f00..   divu r2,r2,0x0x1388
            0x000059fc      0fd8           mov_s r0,0x0xf
            0x000059fe      720b6008       bl.d 68464 ;0x0001656c
            0x00005a02      2f71           mov_s r25,1
            0x00005a04      04f0           b_s 8 ;0x00005a0c
            0x00005a06      920b6008       bl.d 68496 ;0x00016594
            0x00005a0a      0fd8           mov_s r0,0x0xf
            0x00005a0c      00d9           mov_s r1,0x0
            0x00005a0e      17002000       b.d 22 ;0x00005a22
            0x00005a12      0b1a42b0       stb r1,[gp,-245]
            0x00005a16      820b6008       bl.d 68480 ;0x00016594
            0x00005a1a      0fd8           mov_s r0,0x0xf
            0x00005a1c      01d8           mov_s r0,0x0x1
            0x00005a1e      0b1a02b0       stb r0,[gp,-245]
            0x00005a22      fb75           .short 0x75fb
            0x00005a24      e07f           j_s.d [blink]
            0x00005a26      c1c5           pop_s r13
            0x00005a28      e1c5           push_s r13
            0x00005a2a      e1c6           push_s r14
            0x00005a2c      eb76           .short 0x76eb
            0x00005a2e      04d9           mov_s r1,0x0x4
            0x00005a30      cf72           mov_s 0x0,2
            0x00005a32      8000c80b       bnv 96384 ;0x0001d2b0
            0x00005a36      23aa           stb_s r1,[r2,0x0x3]
            0x00005a38      b4d9           mov_s r1,0x0xb4
            0x00005a3a      21aa           stb_s r1,[r2,0x0x1]
            0x00005a3c      cf71           mov_s 0x0,1
            0x00005a3e      0200f8a3       bnt.d -755710 ;0xfffffffffff4d23e
            0x00005a42      3c110400       ld r4,[r1,60]
            0x00005a46      08db           mov_s r3,0x0x8
            0x00005a48      3081           ld_s r1,[r1,0x0x40]
            0x00005a4a      60aa           stb_s r3,[r2,0x0]
            0x00005a4c      62aa           stb_s r3,[r2,0x0x2]
            0x00005a4e      041a0001       st r4,[r2,4]
            0x00005a52      22a2           st_s r1,[r2,0x0x8]
            0x00005a54      74aa           stb_s r3,[r2,0x0x14]
            0x00005a56      ffdb           mov_s r3,0x0xff
            0x00005a58      16120136       ld.as r1,[gp,22]
            0x00005a5c      241ac200       stb r3,[r2,36]
            0x00005a60      28a2           st_s r1,[r2,0x0x20]
            0x00005a62      00dd           mov_s r13,0x0
            0x00005a64      bdaa           stb_s r13,[r2,0x0x1d]
            0x00005a66      9608200c       bl.d 98452 ;0x0001daf8
            0x00005a6a      4870           .short 0x7048
            0x00005a6c      04e8           breq_s r0,0x0,8 ;0x00005a74
            0x00005a6e      0b002000       b.d 10 ;0x00005a76
            0x00005a72      01d8           mov_s r0,0x0x1
            0x00005a74      a970           .short 0x70a9
            0x00005a76      fb76           .short 0x76fb
            0x00005a78      c1c6           pop_s r14
            0x00005a7a      e07f           j_s.d [blink]
            0x00005a7c      c1c5           pop_s r13
            0x00005a7e      e078           nop_s
            0x00005a80      e1c5           push_s r13
            0x00005a82      e1c6           push_s r14
            0x00005a84      e1c7           push_s r15
            0x00005a86      f1c0           push_s blink
            0x00005a88      0876           .short 0x7608
            0x00005a8a      87108d00       ldb r13,[r0,135]
            0x00005a8e      cf77           mov_s 0x0,-1
            0x00005a90      80006007       b.d 59520 ;0x00014310
            0x00005a94      088f           ldb_s r0,[r15,0x0x8]
            0x00005a96      11e8           breq_s r0,0x0,34 ;0x00005ab6
            0x00005a98      61b8           sub_s r0,r0,0x0x1
            0x00005a9a      08af           stb_s r0,[r15,0x0x8]
            0x00005a9c      1e0d2000       bl.d 1308 ;0x00005fb8
            0x00005aa0      ffd8           mov_s r0,0x0xff
            0x00005aa2      89e8           brne_s r0,0x0,18 ;0x00005ab2
            0x00005aa4      1e1e841f00..   sth 0x0x8c0,[r14,30]
            0x00005aac      0b002000       b.d 10 ;0x00005ab6
            0x00005ab0      08dd           mov_s r13,0x0x8
            0x00005ab2      00d9           mov_s r1,0x0
            0x00005ab4      28af           stb_s r1,[r15,0x0x8]
            0x00005ab6      e6092000       bl.d 484 ;0x00005c98
            0x00005aba      c970           .short 0x70c9
            0x00005abc      ca0ae000       bl.d 6856 ;0x00007584
            0x00005ac0      c970           .short 0x70c9
            0x00005ac2      4e0d6000       bl.d 3404 ;0x0000680c
            0x00005ac6      c970           .short 0x70c9
            0x00005ac8      65bd           sub_s r13,r13,0x0x5
            0x00005aca      670d1513       brhs.nt r13,0x0xc,102 ;0x00005b2e
            0x00005ace      f026427300..   ld.as r2,[0x0x5ad8,r13]
            0x00005ad6      007a           j_s [r2]
            0x00005ad8      2e5b           jli_s 0x0x32e
            0x00005ada      00002e5b       bls.d 745472 ;0x000bbad8
            0x00005ade      00002e5b       bls.d 745472 ;0x000bbadc
            0x00005ae2      0000085b       bnv 745472 ;0x000bbae0
            0x00005ae6      00002e5b       bls.d 745472 ;0x000bbae4
            0x00005aea      00002e5b       bls.d 745472 ;0x000bbae8
            0x00005aee      0000185b       bnt 745472 ;0x000bbaec
            0x00005af2      00002e5b       bls.d 745472 ;0x000bbaf0
            0x00005af6      00002e5b       bls.d 745472 ;0x000bbaf4
            0x00005afa      00002e5b       bls.d 745472 ;0x000bbaf8
            0x00005afe      00002e5b       bls.d 745472 ;0x000bbafc
            0x00005b02      00002e5b       bls.d 745472 ;0x000bbb00
            0x00005b06      0000760b       b.d 92160 ;0x0001c304
            0x00005b0a      2001c970       bgt 923936 ;0x000e7428
            0x00005b0e      d1c0           pop_s blink
            0x00005b10      c1c7           pop_s r15
            0x00005b12      c1c6           pop_s r14
            0x00005b14      e07f           j_s.d [blink]
            0x00005b16      c1c5           pop_s r13
            0x00005b18      1a0d8ffe       bl -10984 ;0x00003030
            0x00005b1c      09e8           breq_s r0,0x0,18 ;0x00005b2e
            0x00005b1e      c60aa00b       bl.d 94916 ;0x0001cde0
            0x00005b22      c970           .short 0x70c9
            0x00005b24      d1c0           pop_s blink
            0x00005b26      c1c7           pop_s r15
            0x00005b28      c1c6           pop_s r14
            0x00005b2a      e07f           j_s.d [blink]
            0x00005b2c      c1c5           pop_s r13
            0x00005b2e      fa0a2001       bl.d 8952 ;0x00007e24
            0x00005b32      c970           .short 0x70c9
            0x00005b34      d1c0           pop_s blink
            0x00005b36      c1c7           pop_s r15
            0x00005b38      c1c6           pop_s r14
            0x00005b3a      e07f           j_s.d [blink]
            0x00005b3c      c1c5           pop_s r13
            0x00005b3e      e078           nop_s
            0x00005b40      0d083100       brne.d.nt r0,0x0,12 ;0x00005b4c
            0x00005b44      eb72           .short 0x72eb
            0x00005b46      9e0be009       bl.d 80796 ;0x000196e0
            0x00005b4a      00d8           mov_s r0,0x0
            0x00005b4c      fb72           .short 0x72fb
            0x00005b4e      e07e           j_s [blink]
            0x00005b50      f1c0           push_s blink
            0x00005b52      00da           mov_s r2,0x0
            0x00005b54      86108100       ldb r1,[r0,134]
            0x00005b58      0a24800f80..   mov r4,0x0x800760
            0x00005b60      00244500       add r5,r4,r1
            0x00005b64      6f90           ldh_s r3,[r0,0x0x1e]
            0x00005b66      0e1d8200       stb r2,[r5,14]
            0x00005b6a      021cc400       sth r3,[r4,2]
            0x00005b6e      5190           ldh_s r2,[r0,0x0x22]
            0x00005b70      3b79           asl_s r1,r1
            0x00005b72      4371           add_s r1,r1,gp
            0x00005b74      ffdb           mov_s r3,0x0xff
            0x00005b76      ee199c80       sth.as r2,[r1,-18]
            0x00005b7a      0a1dc200       stb r3,[r5,10]
            0x00005b7e      0c1dc200       stb r3,[r5,12]
            0x00005b82      3890           ldh_s r1,[r0,0x0x30]
            0x00005b84      cf70           mov_s 0x0,0
            0x00005b86      6666           ld_s r14,[r14,r3]
            0x00005b88      6766           ld_s r15,[r14,r3]
            0x00005b8a      2c78           mpy_s r0,r0,r1
            0x00005b8c      3fb9           lsr_s r1,r1,0x0x1f
            0x00005b8e      6f70           mov_s fp,0
            0x00005b90      43b8           asr_s r0,r0,0x0x3
            0x00005b92      3860           add_s r0,r0,r1
            0x00005b94      5a0d2008       bl.d 66904 ;0x000160ec
            0x00005b98      1078           exth_s r0,r0
            0x00005b9a      1108b300       brge.d.nt r0,0x0x2,16 ;0x00005ba8
            0x00005b9e      001c0200       stb r0,[r4]
            0x00005ba2      02d8           mov_s r0,0x0x2
            0x00005ba4      001c0200       stb r0,[r4]
            0x00005ba8      0528800f00..   divu r0,r0,0x0x2710
            0x00005bb0      cf72           mov_s 0x0,2
            0x00005bb2      8080           ld_s r12,[r0,0x0]
            0x00005bb4      8180           ld_s r12,[r0,0x0x4]
            0x00005bb6      0c1a02b0       stb r0,[gp,-244]
            0x00005bba      052a7e0e       divu 0x0,r2,r57
            0x00005bbe      412bc071       lsr r0,r59,0x0x7
            0x00005bc2      1078           exth_s r0,r0
            0x00005bc4      be0deffe       bl.d -8772 ;0x00003980
            0x00005bc8      00d9           mov_s r1,0x0
            0x00005bca      01d8           mov_s r0,0x0x1
            0x00005bcc      760fefff       bl.d -140 ;0x00005b40
            0x00005bd0      00d9           mov_s r1,0x0
            0x00005bd2      d1c0           pop_s blink
            0x00005bd4      e07e           j_s [blink]
            0x00005bd6      e078           nop_s
            0x00005bd8      e1c5           push_s r13
            0x00005bda      e1c6           push_s r14
            0x00005bdc      f1c0           push_s blink
            0x00005bde      4998           ldh_s.x r2,[r0,0x0x12]
            0x00005be0      0f0a3100       brne.d.nt r2,0x0,14 ;0x00005bee
            0x00005be4      2875           .short 0x7528
            0x00005be6      5b108100       ldb r1,[r0,91]
            0x00005bea      0f095301       brge.nt r1,0x0x5,14 ;0x00005bf6
            0x00005bee      cf76           mov_s 0x0,6
            0x00005bf0      80006007       b.d 59520 ;0x00014470
            0x00005bf4      05f0           b_s 10 ;0x00005bfe
            0x00005bf6      cf76           mov_s 0x0,6
            0x00005bf8      80006007       b.d 59520 ;0x00014478
            0x00005bfc      a08e           ldb_s r13,[r14,0x0]
            0x00005bfe      86108100       ldb r1,[r0,134]
            0x00005c02      3b79           asl_s r1,r1
            0x00005c04      4371           add_s r1,r1,gp
            0x00005c06      ee110087       ldh.as r0,[r1,-18]
            0x00005c0a      07e8           breq_s r0,0x0,14 ;0x00005c16
            0x00005c0c      e20c0008       bl 66784 ;0x000160ec
            0x00005c10      07084303       brge.nt r0,r13,6 ;0x00005c16
            0x00005c14      0875           .short 0x7508
            0x00005c16      3e08400b       bl 92220 ;0x0001c450
            0x00005c1a      85e8           brne_s r0,0x0,10 ;0x00005c22
            0x00005c1c      27002000       b.d 38 ;0x00005c42
            0x00005c20      0196           ldh_s r0,[r14,0x0x2]
            0x00005c22      61cb           ldb_s r0,[gp,-159]
            0x00005c24      09085000       breq.nt r0,0x0x1,8 ;0x00005c2c
            0x00005c28      2508d100       brne.nt r0,0x0x3,36 ;0x00005c4c
            0x00005c2c      cf73           mov_s 0x0,3
            0x00005c2e      80000004       b 32896 ;0x0000dcac
            0x00005c32      a0138200       ldb r2,[r3,160]
            0x00005c36      85ea           brne_s r2,0x0,10 ;0x00005c3e
            0x00005c38      a1138300       ldb r3,[r3,161]
            0x00005c3c      22eb           breq_s r3,0x0,68 ;0x00005c80
            0x00005c3e      8a200d0c       mov r0,880
            0x00005c42      ae0c0008       bl 66732 ;0x000160ec
            0x00005c46      09084303       brge.nt r0,r13,8 ;0x00005c4c
            0x00005c4a      0875           .short 0x7508
            0x00005c4c      ffe5           cmp_s r13,0x0x7f
            0x00005c4e      c3f6           ble_s 6 ;0x00005c52
            0x00005c50      7fdd           mov_s r13,0x0x7f
            0x00005c52      31cc           ldh_s r0,[gp,98]
            0x00005c54      09e8           breq_s r0,0x0,18 ;0x00005c66
            0x00005c56      9a0c0008       bl 66712 ;0x000160ec
            0x00005c5a      0f084303       brge.nt r0,r13,14 ;0x00005c66
            0x00005c5e      920c2008       bl.d 66704 ;0x000160ec
            0x00005c62      31cc           ldh_s r0,[gp,98]
            0x00005c64      0875           .short 0x7508
            0x00005c66      088e           ldb_s r0,[r14,0x0x8]
            0x00005c68      04e8           breq_s r0,0x0,8 ;0x00005c70
            0x00005c6a      090d9310       brge.nt r13,0x0x2,8 ;0x00005c70
            0x00005c6e      02dd           mov_s r13,0x0x2
            0x00005c70      a970           .short 0x70a9
            0x00005c72      720ae009       bl.d 80496 ;0x000196e0
            0x00005c76      00d9           mov_s r1,0x0
            0x00005c78      d1c0           pop_s blink
            0x00005c7a      c1c6           pop_s r14
            0x00005c7c      e07f           j_s.d [blink]
            0x00005c7e      c1c5           pop_s r13
            0x00005c80      d20f000b       bl 92112 ;0x0001c450
            0x00005c84      0d08d100       brne.nt r0,0x0x3,12 ;0x00005c90
            0x00005c88      bb07efff       b.d -70 ;0x00005c42
            0x00005c8c      8a209907       mov r0,1630
            0x00005c90      b307efff       b.d -78 ;0x00005c42
            0x00005c94      8a201d0b       mov r0,1900
            0x00005c98      e1c5           push_s r13
            0x00005c9a      e1c6           push_s r14
            0x00005c9c      eb76           .short 0x76eb
            0x00005c9e      0875           .short 0x7508
            0x00005ca0      ae0a2000       bl.d 684 ;0x00005f4c
            0x00005ca4      86108000       ldb r0,[r0,134]
            0x00005ca8      06e8           breq_s r0,0x0,12 ;0x00005cb4
            0x00005caa      02d8           mov_s r0,0x0x2
            0x00005cac      5e086006       bl.d 51292 ;0x00012508
            0x00005cb0      86158110       ldb r1,[r13,134]
            0x00005cb4      fb76           .short 0x76fb
            0x00005cb6      c1c6           pop_s r14
            0x00005cb8      e07f           j_s.d [blink]
            0x00005cba      c1c5           pop_s r13
            0x00005cbc      cf72           mov_s 0x0,2
            0x00005cbe      80009008       b 69760 ;0x00016d3c
            0x00005cc2      2c8a           ldb_s r1,[r2,0x0xc]
            0x00005cc4      c3b9           bmsk_s r1,r1,0x0x3
            0x00005cc6      08e9           breq_s r1,0x0,16 ;0x00005cd4
            0x00005cc8      611283b0       ldb r3,[gp,-159]
            0x00005ccc      090b5000       breq.nt r3,0x0x1,8 ;0x00005cd4
            0x00005cd0      0b0bd100       brne.nt r3,0x0x3,10 ;0x00005cda
            0x00005cd4      09002000       b.d 8 ;0x00005cdc
            0x00005cd8      01d8           mov_s r0,0x0x1
            0x00005cda      00d8           mov_s r0,0x0
            0x00005cdc      e07e           j_s [blink]
            0x00005cde      e078           nop_s
            0x00005ce0      f1c0           push_s blink
            0x00005ce2      720f000b       bl 92016 ;0x0001c450
            0x00005ce6      ade8           brne_s r0,0x0,90 ;0x00005d3e
            0x00005ce8      d60fcfff       bl -44 ;0x00005cbc
            0x00005cec      a9e8           brne_s r0,0x0,82 ;0x00005d3e
            0x00005cee      0a24800f80..   mov r4,0x0x800d84
            0x00005cf6      00148000       ldb r0,[r4]
            0x00005cfa      65b8           sub_s r0,r0,0x0x5
            0x00005cfc      0de8           breq_s r0,0x0,26 ;0x00005d16
            0x00005cfe      27085000       breq.nt r0,0x0x1,38 ;0x00005d22
            0x00005d02      2f089000       breq.nt r0,0x0x2,46 ;0x00005d2e
            0x00005d06      3b08d100       brne.nt r0,0x0x3,58 ;0x00005d3e
            0x00005d0a      cf73           mov_s 0x0,3
            0x00005d0c      8000bc08       b.d 69760 ;0x00016d8c
            0x00005d10      27002000       b.d 38 ;0x00005d36
            0x00005d14      7093           ldh_s r3,[r3,0x0x20]
            0x00005d16      cf73           mov_s 0x0,3
            0x00005d18      8000bc08       b.d 69760 ;0x00016d98
            0x00005d1c      1b002000       b.d 26 ;0x00005d36
            0x00005d20      6c93           ldh_s r3,[r3,0x0x18]
            0x00005d22      cf73           mov_s 0x0,3
            0x00005d24      8000bc08       b.d 69760 ;0x00016da4
            0x00005d28      0f002000       b.d 14 ;0x00005d36
            0x00005d2c      6d93           ldh_s r3,[r3,0x0x1a]
            0x00005d2e      cf73           mov_s 0x0,3
            0x00005d30      8000bc08       b.d 69760 ;0x00016db0
            0x00005d34      6e93           ldh_s r3,[r3,0x0x1c]
            0x00005d36      02140201       ldh r2,[r4,2]
            0x00005d3a      0f0b8300       brge.nt r3,r2,14 ;0x00005d46
            0x00005d3e      76084001       bl 10356 ;0x000085b0
            0x00005d42      d1c0           pop_s blink
            0x00005d44      e07e           j_s [blink]
            0x00005d46      08140100       ld r1,[r4,8]
            0x00005d4a      53210000       bmsk r0,r1,0x0
            0x00005d4e      06e8           breq_s r0,0x0,12 ;0x00005d58
            0x00005d50      920e4007       bl 61072 ;0x00014be0
            0x00005d54      d1c0           pop_s blink
            0x00005d56      e07e           j_s [blink]
            0x00005d58      04140001       ldh r0,[r4,4]
            0x00005d5c      4168           add_s r2,r0,0x0x1
            0x00005d5e      5078           exth_s r0,r2
            0x00005d60      8c200986       cmp r0,600
            0x00005d64      18002b00       blt.d 24 ;0x00005d7c
            0x00005d68      041c8400       sth r2,[r4,4]
            0x00005d6c      00da           mov_s r2,0x0
            0x00005d6e      041c8400       sth r2,[r4,4]
            0x00005d72      80b9           bset_s r1,r1,0x0
            0x00005d74      d1c0           pop_s blink
            0x00005d76      e07f           j_s.d [blink]
            0x00005d78      081c4000       st r1,[r4,8]
            0x00005d7c      d1c0           pop_s blink
            0x00005d7e      e07e           j_s [blink]
            0x00005d80      e1c5           push_s r13
            0x00005d82      e1c6           push_s r14
            0x00005d84      e1c7           push_s r15
            0x00005d86      fc1c08b4       st.aw r16,[sp,-4]
            0x00005d8a      cf75           mov_s 0x0,5
            0x00005d8c      80009008       b 69760 ;0x00016e0c
            0x00005d90      458d           ldb_s r2,[r13,0x0x5]
            0x00005d92      c3ba           bmsk_s r2,r2,0x0x3
            0x00005d94      110af103       brne.d.nt r2,0x0xf,16 ;0x00005da4
            0x00005d98      0a20c027       mov r16,blink
            0x00005d9c      4a8d           ldb_s r2,[r13,0x0xa]
            0x00005d9e      8c22c38f       cmp r2,255
            0x00005da2      0df4           bne_s 26 ;0x00005dba
            0x00005da4      00de           mov_s r14,0x0
            0x00005da6      d6ad           stb_s r14,[r13,0x0x16]
            0x00005da8      d7ad           stb_s r14,[r13,0x0x17]
            0x00005daa      0a270034       mov blink,r16
            0x00005dae      04141034       ld.ab r16,[sp,4]
            0x00005db2      c1c7           pop_s r15
            0x00005db4      c1c6           pop_s r14
            0x00005db6      e07f           j_s.d [blink]
            0x00005db8      c1c5           pop_s r13
            0x00005dba      0e0da00b       bl.d 95500 ;0x0001d2c4
            0x00005dbe      01d8           mov_s r0,0x0x1
            0x00005dc0      0873           .short 0x7308
            0x00005dc2      04b5           sth_s r0,[r13,0x0x8]
            0x00005dc4      77cb           ldb_s r0,[gp,-137]
            0x00005dc6      0f08d200       brlt.nt r0,0x0x3,14 ;0x00005dd2
            0x00005dca      cf76           mov_s 0x0,6
            0x00005dcc      eb51           ldi_s r1,[0x0x73]
            0x00005dce      1f85           ld_s r0,[r13,0x0x7c]
            0x00005dd0      19f0           b_s 50 ;0x00005e02
            0x00005dd2      126b           asl_s r0,r3,0x0x2
            0x00005dd4      1578           add2_s r0,r0,r0
            0x00005dd6      1578           add2_s r0,r0,r0
            0x00005dd8      9e0c6ffe       bl.d -13156 ;0x00002a74
            0x00005ddc      43120137       ldh.as r1,[gp,67]
            0x00005de0      620ca00e       bl.d 119904 ;0x00023240
            0x00005de4      0877           .short 0x7708
            0x00005de6      1860           add_s r0,r0,r0
            0x00005de8      1678           add3_s r0,r0,r0
            0x00005dea      1578           add2_s r0,r0,r0
            0x00005dec      cf76           mov_s 0x0,6
            0x00005dee      eb51           ldi_s r1,[0x0x73]
            0x00005df0      1f85           ld_s r0,[r13,0x0x7c]
            0x00005df2      052e3e10       divu 0x0,r14,r0
            0x00005df6      412b4171       lsr r1,r59,0x0x5
            0x00005dfa      5709e403       brlo.d.nt r1,r15,86 ;0x00005e4e
            0x00005dfe      77cb           ldb_s r0,[gp,-137]
            0x00005e00      6495           ldh_s r3,[r13,0x0x8]
            0x00005e02      2f085200       brlt.nt r0,0x0x1,46 ;0x00005e2e
            0x00005e06      126b           asl_s r0,r3,0x0x2
            0x00005e08      1578           add2_s r0,r0,r0
            0x00005e0a      1578           add2_s r0,r0,r0
            0x00005e0c      6a0c6ffe       bl.d -13208 ;0x00002a74
            0x00005e10      43120137       ldh.as r1,[gp,67]
            0x00005e14      2e0ca00e       bl.d 119852 ;0x00023240
            0x00005e18      0877           .short 0x7708
            0x00005e1a      02b8           asl_s r0,r0,0x0x2
            0x00005e1c      1578           add2_s r0,r0,r0
            0x00005e1e      052e3e10       divu 0x0,r14,r0
            0x00005e22      412b4371       lsr r3,r59,0x0x5
            0x00005e26      707b           exth_s r3,r3
            0x00005e28      2d0fc410       brlo.nt r15,r3,44 ;0x00005e54
            0x00005e2c      6495           ldh_s r3,[r13,0x0x8]
            0x00005e2e      4685           ld_s r2,[r13,0x0x18]
            0x00005e30      852a410a       divu r2,r2,105
            0x00005e34      052e7e1e       divu 0x0,r14,r57
            0x00005e38      412b4171       lsr r1,r59,0x0x5
            0x00005e3c      2b09c500       brhs.nt r1,r3,42 ;0x00005e66
            0x00005e40      578d           ldb_s r2,[r13,0x0x17]
            0x00005e42      216a           add_s r1,r2,0x0x1
            0x00005e44      2f7a           extb_s r2,r1
            0x00005e46      37ad           stb_s r1,[r13,0x0x17]
            0x00005e48      47002000       b.d 70 ;0x00005e8e
            0x00005e4c      00de           mov_s r14,0x0
            0x00005e4e      0d002000       b.d 12 ;0x00005e58
            0x00005e52      01e0           add_s r0,r0,0x0x1
            0x00005e54      77cb           ldb_s r0,[gp,-137]
            0x00005e56      61b8           sub_s r0,r0,0x0x1
            0x00005e58      458d           ldb_s r2,[r13,0x0x5]
            0x00005e5a      771a02b0       stb r0,[gp,-137]
            0x00005e5e      a1ba           bclr_s r2,r2,0x0x1
            0x00005e60      cd07efff       b.d -52 ;0x00005e2c
            0x00005e64      45ad           stb_s r2,[r13,0x0x5]
            0x00005e66      852ac107       divu r2,r2,95
            0x00005e6a      052e7e1e       divu 0x0,r14,r57
            0x00005e6e      412b4271       lsr r2,r59,0x0x5
            0x00005e72      190b8500       brhs.nt r3,r2,24 ;0x00005e88
            0x00005e76      768d           ldb_s r3,[r13,0x0x16]
            0x00005e78      00de           mov_s r14,0x0
            0x00005e7a      016b           add_s r0,r3,0x0x1
            0x00005e7c      0f7b           extb_s r3,r0
            0x00005e7e      16ad           stb_s r0,[r13,0x0x16]
            0x00005e80      d7ad           stb_s r14,[r13,0x0x17]
            0x00005e82      13002000       b.d 18 ;0x00005e92
            0x00005e86      c972           .short 0x72c9
            0x00005e88      00de           mov_s r14,0x0
            0x00005e8a      d7ad           stb_s r14,[r13,0x0x17]
            0x00005e8c      c972           .short 0x72c9
            0x00005e8e      d6ad           stb_s r14,[r13,0x0x16]
            0x00005e90      00db           mov_s r3,0x0
            0x00005e92      0b0a5301       brge.nt r2,0x0x5,10 ;0x00005e9a
            0x00005e96      2f0b5201       brlt.nt r3,0x0x5,46 ;0x00005ec2
            0x00005e9a      cf73           mov_s 0x0,3
            0x00005e9c      80000004       b 32896 ;0x0000df1c
            0x00005ea0      dc138000       ldb r0,[r3,220]
            0x00005ea4      7a0be000       bl.d 7032 ;0x00007a1c
            0x00005ea8      acd9           mov_s r1,0x0xac
            0x00005eaa      6495           ldh_s r3,[r13,0x0x8]
            0x00005eac      d7ad           stb_s r14,[r13,0x0x17]
            0x00005eae      66a5           st_s r3,[r13,0x0x18]
            0x00005eb0      d6ad           stb_s r14,[r13,0x0x16]
            0x00005eb2      0a270034       mov blink,r16
            0x00005eb6      04141034       ld.ab r16,[sp,4]
            0x00005eba      c1c7           pop_s r15
            0x00005ebc      c1c6           pop_s r14
            0x00005ebe      e07f           j_s.d [blink]
            0x00005ec0      c1c5           pop_s r13
            0x00005ec2      0a270034       mov blink,r16
            0x00005ec6      04141034       ld.ab r16,[sp,4]
            0x00005eca      c1c7           pop_s r15
            0x00005ecc      c1c6           pop_s r14
            0x00005ece      e07f           j_s.d [blink]
            0x00005ed0      c1c5           pop_s r13
            0x00005ed2      e078           nop_s
            0x00005ed4      6f083306       brge.d.nt r0,0x0x18,110 ;0x00005f42
            0x00005ed8      4a240000       mov r4,0x0
            0x00005edc      09081202       brlt.nt r0,0x0x8,8 ;0x00005ee4
            0x00005ee0      63089202       brlt.nt r0,0x0xa,98 ;0x00005f42
            0x00005ee4      09089204       brlt.nt r0,0x0x12,8 ;0x00005eec
            0x00005ee8      5b081205       brlt.nt r0,0x0x14,90 ;0x00005f42
            0x00005eec      57091302       brge.nt r1,0x0x8,86 ;0x00005f42
            0x00005ef0      530a1301       brge.nt r2,0x0x4,82 ;0x00005f42
            0x00005ef4      cf73           mov_s 0x0,3
            0x00005ef6      0200dc8f       b -919550 ;0xfffffffffff256f6
            0x00005efa      157b           add2_s r3,r3,r0
            0x00005efc      6083           ld_s r3,[r3,0x0]
            0x00005efe      110a3100       brne.d.nt r2,0x0,16 ;0x00005f0c
            0x00005f02      357b           add2_s r3,r3,r1
            0x00005f04      31002000       b.d 48 ;0x00005f34
            0x00005f08      4a240000       mov r4,0x0
            0x00005f0c      0f0a5100       brne.nt r2,0x0x1,14 ;0x00005f1a
            0x00005f10      0a24800f00..   mov r4,0x0x1000
            0x00005f18      0ef0           b_s 28 ;0x00005f34
            0x00005f1a      110a9100       brne.nt r2,0x0x2,16 ;0x00005f28
            0x00005f1e      0a24800f00..   mov r4,0x0x2000
            0x00005f26      08f0           b_s 16 ;0x00005f34
            0x00005f28      0d0ad100       brne.nt r2,0x0x3,12 ;0x00005f34
            0x00005f2c      0a24800f00..   mov r4,0x0x3000
            0x00005f34      0083           ld_s r0,[r3,0x0]
            0x00005f36      0420800f00..   and r0,r0,0x0x3600
            0x00005f3e      0d080001       breq.nt r0,r4,12 ;0x00005f48
            0x00005f42      0b002000       b.d 10 ;0x00005f4a
            0x00005f46      09d8           mov_s r0,0x0x9
            0x00005f48      00d8           mov_s r0,0x0
            0x00005f4a      e07e           j_s [blink]
            0x00005f4c      e1c5           push_s r13
            0x00005f4e      e1c6           push_s r14
            0x00005f50      eb76           .short 0x76eb
            0x00005f52      13087100       brne.d.nt r0,0x0x1,18 ;0x00005f62
            0x00005f56      9870           .short 0x7098
            0x00005f58      00d8           mov_s r0,0x0
            0x00005f5a      fb76           .short 0x76fb
            0x00005f5c      c1c6           pop_s r14
            0x00005f5e      e07f           j_s.d [blink]
            0x00005f60      c1c5           pop_s r13
            0x00005f62      8c24c38f       cmp r4,255
            0x00005f66      12f4           bne_s 36 ;0x00005f88
            0x00005f68      e60fefff       bl.d -28 ;0x00005f4c
            0x00005f6c      00d8           mov_s r0,0x0
            0x00005f6e      11083100       brne.d.nt r0,0x0,16 ;0x00005f7c
            0x00005f72      00dd           mov_s r13,0x0
            0x00005f74      da0fefff       bl.d -40 ;0x00005f4c
            0x00005f78      01d8           mov_s r0,0x0x1
            0x00005f7a      03e8           breq_s r0,0x0,6 ;0x00005f7e
            0x00005f7c      01dd           mov_s r13,0x0x1
            0x00005f7e      af78           extb_s r0,r13
            0x00005f80      fb76           .short 0x76fb
            0x00005f82      c1c6           pop_s r14
            0x00005f84      e07f           j_s.d [blink]
            0x00005f86      c1c5           pop_s r13
            0x00005f88      32082000       bl.d 48 ;0x00005fb8
            0x00005f8c      00da           mov_s r2,0x0
            0x00005f8e      11e8           breq_s r0,0x0,34 ;0x00005fae
            0x00005f90      14240301       add1 r3,r4,r4
            0x00005f94      03bb           asl_s r3,r3,0x0x3
            0x00005f96      cf71           mov_s 0x0,1
            0x00005f98      80003814       bnt.d 163968 ;0x0002e018
            0x00005f9c      02230301       sub r3,r3,r4
            0x00005fa0      7679           add3_s r1,r1,r3
            0x00005fa2      a8110000       ld r0,[r1,168]
            0x00005fa6      8620fb0f       bic r0,r0,-257
            0x00005faa      83e8           brne_s r0,0x0,6 ;0x00005fae
            0x00005fac      01da           mov_s r2,0x0x1
            0x00005fae      4f78           extb_s r0,r2
            0x00005fb0      fb76           .short 0x76fb
            0x00005fb2      c1c6           pop_s r14
            0x00005fb4      e07f           j_s.d [blink]
            0x00005fb6      c1c5           pop_s r13
            0x00005fb8      09085100       brne.nt r0,0x0x1,8 ;0x00005fc0
            0x00005fbc      e07f           j_s.d [blink]
            0x00005fbe      00d8           mov_s r0,0x0
            0x00005fc0      8c20c38f       cmp r0,255
            0x00005fc4      07f4           bne_s 14 ;0x00005fd2
            0x00005fc6      08cb           ldb_s r0,[gp,-248]
            0x00005fc8      03e8           breq_s r0,0x0,6 ;0x00005fce
            0x00005fca      e07f           j_s.d [blink]
            0x00005fcc      01d8           mov_s r0,0x0x1
            0x00005fce      00d8           mov_s r0,0x0
            0x00005fd0      e07e           j_s [blink]
            0x00005fd2      85e8           brne_s r0,0x0,10 ;0x00005fda
            0x00005fd4      09002000       b.d 8 ;0x00005fdc
            0x00005fd8      01d9           mov_s r1,0x0x1
            0x00005fda      02d9           mov_s r1,0x0x2
            0x00005fdc      08cb           ldb_s r0,[gp,-248]
            0x00005fde      2478           and_s r0,r0,r1
            0x00005fe0      e07f           j_s.d [blink]
            0x00005fe2      0f78           extb_s r0,r0
            0x00005fe4      a8100100       ld r1,[r0,168]
            0x00005fe8      50218201       bclr r2,r1,0x0x6
            0x00005fec      4f228101       bset r1,r2,0x0x6
            0x00005ff0      a8184000       st r1,[r0,168]
            0x00005ff4      0b90           ldh_s r0,[r0,0x0x16]
            0x00005ff6      15085300       brge.nt r0,0x0x1,20 ;0x00006008
            0x00005ffa      0422820f00..   and r2,r2,0x0
