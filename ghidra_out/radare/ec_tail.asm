WARN: Cannot find asm.parser for arc
INFO: Fallback to null
WARN: Cannot find asm.parser for arc
            0x00027000      0a85           ld_s r0,[r13,0x0x28]
            0x00027002      06e8           breq_s r0,0x0,12 ;0x0002700c
            0x00027004      62096fff       bl.d -5792 ;0x00025964
            0x00027008      40250016       add r0,r13,0x0x18
            0x0002700c      cf76           mov_s 0x0,6
            0x0002700e      80002c15       ble.d 172160 ;0x0005108c
            0x00027012      56260015       add3 r0,r14,0x0x14
            0x00027016      ba08afff       bl.d -3912 ;0x000260cc
            0x0002701a      e971           .short 0x71e9
            0x0002701c      9e098fff       bl -3684 ;0x000261b8
            0x00027020      f91201b6       ld.as r1,[gp,-7]
            0x00027024      510d4110       brne.nt r13,r1,80 ;0x00027074
            0x00027028      cf71           mov_s 0x0,1
            0x0002702a      80008809       bnv 77952 ;0x0003a0a8
            0x0002702e      0681           ld_s r0,[r1,0x0x18]
            0x00027030      0ee8           breq_s r0,0x0,28 ;0x0002704c
            0x00027032      ab26487000..   sr 0x0x3,[aux_irq_hint]
            0x0002703a      e078           nop_s
            0x0002703c      e078           nop_s
            0x0002703e      e078           nop_s
            0x00027040      e078           nop_s
            0x00027042      d1c0           pop_s blink
            0x00027044      c1c7           pop_s r15
            0x00027046      c1c6           pop_s r14
            0x00027048      e07f           j_s.d [blink]
            0x0002704a      c1c5           pop_s r13
            0x0002704c      a0160310       ld r3,[r14,160]
            0x00027050      4381           ld_s r2,[r1,0x0xc]
            0x00027052      170b8100       brne.nt r3,r2,22 ;0x00027066
            0x00027056      00db           mov_s r3,0x0
            0x00027058      f91ad8b0       st.as r3,[gp,-7]
            0x0002705c      d1c0           pop_s blink
            0x0002705e      c1c7           pop_s r15
            0x00027060      c1c6           pop_s r14
            0x00027062      e07f           j_s.d [blink]
            0x00027064      c1c5           pop_s r13
            0x00027066      2e080000       bl 44 ;0x00027090
            0x0002706a      d1c0           pop_s blink
            0x0002706c      c1c7           pop_s r15
            0x0002706e      c1c6           pop_s r14
            0x00027070      e07f           j_s.d [blink]
            0x00027072      c1c5           pop_s r13
            0x00027074      d1c0           pop_s blink
            0x00027076      c1c7           pop_s r15
            0x00027078      c1c6           pop_s r14
            0x0002707a      e07f           j_s.d [blink]
            0x0002707c      c1c5           pop_s r13
            0x0002707e      e078           nop_s
            0x00027080      cf71           mov_s 0x0,1
            0x00027082      80008809       bnv 77952 ;0x0003a100
            0x00027086      0781           ld_s r0,[r1,0x0x1c]
            0x00027088      01e0           add_s r0,r0,0x0x1
            0x0002708a      07a1           st_s r0,[r1,0x0x1c]
            0x0002708c      e07e           j_s [blink]
            0x0002708e      e078           nop_s
            0x00027090      0a24800f80..   mov r4,0x0x800988
            0x00027098      1c140100       ld r1,[r4,28]
            0x0002709c      05e9           breq_s r1,0x0,10 ;0x000270a6
            0x0002709e      01d8           mov_s r0,0x0x1
            0x000270a0      241c0000       st r0,[r4,36]
            0x000270a4      2af0           b_s 84 ;0x000270f8
            0x000270a6      14140300       ld r3,[r4,20]
            0x000270aa      0a25800f80..   mov r5,0x0x80152c
            0x000270b2      02bb           asl_s r3,r3,0x0x2
            0x000270b4      757b           add2_s r3,r3,r3
            0x000270b6      a073           add_s r3,r3,r5
            0x000270b8      2083           ld_s r1,[r3,0x0]
            0x000270ba      8ee9           brne_s r1,0x0,28 ;0x000270d4
            0x000270bc      14140000       ld r0,[r4,20]
            0x000270c0      61b8           sub_s r0,r0,0x0x1
            0x000270c2      141c0000       st r0,[r4,20]
            0x000270c6      14140200       ld r2,[r4,20]
            0x000270ca      02ba           asl_s r2,r2,0x0x2
            0x000270cc      557a           add2_s r2,r2,r2
            0x000270ce      a072           add_s r2,r2,r5
            0x000270d0      0082           ld_s r0,[r2,0x0]
            0x000270d2      76e8           breq_s r0,0x0,-20 ;0x000270bc
            0x000270d4      14140100       ld r1,[r4,20]
            0x000270d8      a872           .short 0x72a8
            0x000270da      02b9           asl_s r1,r1,0x0x2
            0x000270dc      3579           add2_s r1,r1,r1
            0x000270de      5961           add_s r1,r1,r2
            0x000270e0      6181           ld_s r3,[r1,0x0x4]
            0x000270e2      40210202       add r2,r1,0x0x8
            0x000270e6      6183           ld_s r3,[r3,0x0x4]
            0x000270e8      0b0ba100       brne.d.nt r3,r2,10 ;0x000270f2
            0x000270ec      61a1           st_s r3,[r1,0x0x4]
            0x000270ee      6183           ld_s r3,[r3,0x0x4]
            0x000270f0      61a1           st_s r3,[r1,0x0x4]
            0x000270f2      6383           ld_s r3,[r3,0x0xc]
            0x000270f4      f91ad8b0       st.as r3,[gp,-7]
            0x000270f8      e07e           j_s [blink]
            0x000270fa      e078           nop_s
            0x000270fc      f1c0           push_s blink
            0x000270fe      360e6000       bl.d 3636 ;0x00027f30
            0x00027102      a1c1           sub_s sp,sp,0x0x4
            0x00027104      2e0e6000       bl.d 3628 ;0x00027f30
            0x00027108      40c0           st_s r0,[sp,0x0]
            0x0002710a      0875           .short 0x7508
            0x0002710c      00df           mov_s r15,0x0
            0x0002710e      e970           .short 0x70e9
            0x00027110      da08eff3       bl.d -100136 ;0x0000e9e8
            0x00027114      8a211a01       mov r1,1668
            0x00027118      0a21802f00..   mov r17,0x0xea60
            0x00027120      4a204020       mov r16,0x0x1
            0x00027124      cf76           mov_s 0x0,6
            0x00027126      80006409       bn.d 75904 ;0x000399a4
            0x0002712a      0d002000       b.d 12 ;0x00027134
            0x0002712e      0a220027       mov r18,sp
            0x00027132      e0ae           stb_s r15,[r14,0x0]
            0x00027134      c609eff8       bl.d -58940 ;0x00018af8
            0x00027138      00d8           mov_s r0,0x0
            0x0002713a      fa0d4000       bl 3576 ;0x00027f30
            0x0002713e      a278           sub_s r0,r0,r13
       ┌┌─< 0x00027140      13090520       brhs.nt r17,r0,18 ;0x00027152
       │└─> 0x00027144      9a080000       bl 152 ;0x000271dc
       │    0x00027148      4a080000       bl 72 ;0x00027190
       │    0x0002714c      e60d4000       bl 3556 ;0x00027f30
       │    0x00027150      0875           .short 0x7508
       │    0x00027152      560ccffa       bl -41900 ;0x0001cda4
       │    0x00027156      e61201b6       ld.as r1,[gp,-26]
       │    0x0002715a      04e9           breq_s r1,0x0,8 ;0x00027160
       │    0x0002715c      da0c4ff2       bl -111400 ;0x0000be34
       │    0x00027160      001e0214       stb r16,[r14]
       │    0x00027164      4a70           .short 0x704a
       │    0x00027166      ca0aefff       bl.d -1336 ;0x00026c2c
       │    0x0002716a      05d9           mov_s r1,0x0x5
       │    0x0002716c      c60d4000       bl 3524 ;0x00027f30
       │    0x00027170      0a0eaffc       bl.d -27128 ;0x00020778
       │    0x00027174      40c0           st_s r0,[sp,0x0]
       │    0x00027176      5fe8           breq_s r0,0x0,-66 ;0x00027132
       │    0x00027178      ab26487000..   sr 0x0x3,[aux_irq_hint]
       │    0x00027180      e078           nop_s
       │    0x00027182      e078           nop_s
       │    0x00027184      e078           nop_s
       │    0x00027186      e078           nop_s
       │    0x00027188      f20d8ffc       bl -27152 ;0x00020778
       │    0x0002718c      f6e8           brne_s r0,0x0,-20 ;0x00027178
       │    0x0002718e      d3f1           b_s -90 ;0x00027132
       │    0x00027190      e1c5           push_s r13
       │    0x00027192      eb75           .short 0x75eb
       │    0x00027194      be0a8ffa       bl -44356 ;0x0001c450
       │    0x00027198      9ee8           brne_s r0,0x0,60 ;0x000271d4
       │    0x0002719a      0e088fff       bl -4084 ;0x000261a4
       │    0x0002719e      47120137       ldh.as r1,[gp,71]
       │    0x000271a2      1109830f00..   brge.nt r1,0x0xffff,16 ;0x000271b0
       │    0x000271aa      01e1           add_s r1,r1,0x0x1
       │    0x000271ac      471a5c30       sth.as r1,[gp,71]
       │    0x000271b0      0a088fff       bl -4088 ;0x000261b8
       │    0x000271b4      47120137       ldh.as r1,[gp,71]
       │    0x000271b8      1d09820f00..   brlt.nt r1,0x0x8000,28 ;0x000271d4
       │    0x000271c0      2f79           extb_s r1,r1
       │    0x000271c2      8ae9           brne_s r1,0x0,20 ;0x000271d4
       │    0x000271c4      cf72           mov_s 0x0,2
       │    0x000271c6      80000004       b 32896 ;0x0002f244
       │    0x000271ca      ce128000       ldb r0,[r2,206]
       │    0x000271ce      52086ff0       bl.d -128944 ;0x00007a1c
       │    0x000271d2      94d9           mov_s r1,0x0x94
       │    0x000271d4      fb75           .short 0x75fb
       │    0x000271d6      e07f           j_s.d [blink]
       │    0x000271d8      c1c5           pop_s r13
       │    0x000271da      e078           nop_s
       │    0x000271dc      cf71           mov_s 0x0,1
       │    0x000271de      80000004       b 32896 ;0x0002f25c
       │    0x000271e2      f7118000       ldb r0,[r1,247]
       │    0x000271e6      6168           add_s r3,r0,0x0x1
       │    0x000271e8      6f78           extb_s r0,r3
       │    0x000271ea      b108320f       brlt.d.nt r0,0x0x3c,176 ;0x00027298
       │    0x000271ee      f719c200       stb r3,[r1,247]
       │    0x000271f2      00da           mov_s r2,0x0
       │    0x000271f4      f6118300       ldb r3,[r1,246]
       │    0x000271f8      f7198200       stb r2,[r1,247]
       │    0x000271fc      016b           add_s r0,r3,0x0x1
       │    0x000271fe      0f7b           extb_s r3,r0
       │    0x00027200      990b3206       brlt.d.nt r3,0x0x18,152 ;0x00027298
       │    0x00027204      f6190200       stb r0,[r1,246]
       │    0x00027208      44cb           ldb_s r0,[gp,-188]
       │    0x0002720a      6a68           sub_s r3,r0,0x0x2
       │    0x0002720c      5b0bb502       brhs.d.nt r3,0x0xa,90 ;0x00027266
       │    0x00027210      f6198200       stb r2,[r1,246]
       │    0x00027214      f026c27002..   ld.as r2,[0x0x27220,r3]
       │    0x0002721c      007a           j_s [r2]
       │    0x0002721e      e078           nop_s
       │    0x00027220      4872           .short 0x7248
       │    0x00027222      02006672       bnc.d 935938 ;0x0010ba22
       │    0x00027226      02006072       b.d 935938 ;0x0010ba26
       │    0x0002722a      02006672       bnc.d 935938 ;0x0010ba2a
       │    0x0002722e      02006072       b.d 935938 ;0x0010ba2e
       │    0x00027232      02006672       bnc.d 935938 ;0x0010ba32
       │    0x00027236      02006672       bnc.d 935938 ;0x0010ba36
       │    0x0002723a      02006072       b.d 935938 ;0x0010ba3a
       │    0x0002723e      02006672       bnc.d 935938 ;0x0010ba3e
       │    0x00027242      02006072       b.d 935938 ;0x0010ba42
       │    0x00027246      02004512       bc 149506 ;0x0004ba46
       │    0x0002724a      81b0           sth_s r12,[r0,0x0x2]
       │    0x0002724c      c1b9           bmsk_s r1,r1,0x0x1
       │    0x0002724e      0f093100       brne.d.nt r1,0x0,14 ;0x0002725a
       │    0x00027252      02d8           mov_s r0,0x0x2
       │    0x00027254      15002000       b.d 20 ;0x00027268
       │    0x00027258      1dda           mov_s r2,0x0x1d
       │    0x0002725a      11002000       b.d 16 ;0x00027268
       │    0x0002725e      1cda           mov_s r2,0x0x1c
       │    0x00027260      09002000       b.d 8 ;0x00027268
       │    0x00027264      1eda           mov_s r2,0x0x1e
       │    0x00027266      1fda           mov_s r2,0x0x1f
       │    0x00027268      411283b0       ldb r3,[gp,-191]
       │    0x0002726c      216b           add_s r1,r3,0x0x1
       │    0x0002726e      2f7b           extb_s r3,r1
       │    0x00027270      290ae300       brge.d.nt r2,r3,40 ;0x00027298
       │    0x00027274      411a42b0       stb r1,[gp,-191]
       │    0x00027278      01db           mov_s r3,0x0x1
       │    0x0002727a      2168           add_s r1,r0,0x0x1
       │    0x0002727c      2f78           extb_s r0,r1
       │    0x0002727e      411ac2b0       stb r3,[gp,-191]
       │    0x00027282      19087203       brlt.d.nt r0,0x0xd,24 ;0x00027298
       │    0x00027286      441a42b0       stb r1,[gp,-188]
       │    0x0002728a      451281b0       ldb r1,[gp,-187]
       │    0x0002728e      441ac2b0       stb r3,[gp,-188]
       │    0x00027292      01e1           add_s r1,r1,0x0x1
       │    0x00027294      451a42b0       stb r1,[gp,-187]
       │    0x00027298      e07e           j_s [blink]
       │    0x0002729a      e078           nop_s
       │    0x0002729c      e1c5           push_s r13
       │    0x0002729e      e1c6           push_s r14
       │    0x000272a0      eb76           .short 0x76eb
       │    0x000272a2      0875           .short 0x7508
       │    0x000272a4      02d8           mov_s r0,0x0x2
       │    0x000272a6      660aaff5       bl.d -85404 ;0x00012508
       │    0x000272aa      86158110       ldb r1,[r13,134]
       │    0x000272ae      2268           add_s r1,r0,0x0x2
       │    0x000272b0      ce0fafed       bl.d -149556 ;0x00002a7c
       │    0x000272b4      1695           ldh_s r0,[r13,0x0x2c]
       │    0x000272b6      fb76           .short 0x76fb
       │    0x000272b8      82208205       sub r0,r0,150
       │    0x000272bc      1078           exth_s r0,r0
       │    0x000272be      c1c6           pop_s r14
       │    0x000272c0      e07f           j_s.d [blink]
       │    0x000272c2      c1c5           pop_s r13
       │    0x000272c4      e1c5           push_s r13
       │    0x000272c6      e1c6           push_s r14
       │    0x000272c8      e1c7           push_s r15
       │    0x000272ca      eb77           .short 0x77eb
       │    0x000272cc      0876           .short 0x7608
       │    0x000272ce      2875           .short 0x7528
       │    0x000272d0      02d8           mov_s r0,0x0x2
       │    0x000272d2      3a0aaff5       bl.d -85448 ;0x00012508
       │    0x000272d6      86168110       ldb r1,[r14,134]
       │    0x000272da      02e0           add_s r0,r0,0x0x2
       │    0x000272dc      8025831e       add r13,r13,250
       │    0x000272e0      0c7d           mpy_s r13,r13,r0
       │    0x000272e2      1696           ldh_s r0,[r14,0x0x2c]
       │    0x000272e4      fb77           .short 0x77fb
       │    0x000272e6      0220400e       sub r0,r0,r57
       │    0x000272ea      1078           exth_s r0,r0
       │    0x000272ec      c1c7           pop_s r15
       │    0x000272ee      c1c6           pop_s r14
       │    0x000272f0      e07f           j_s.d [blink]
       │    0x000272f2      c1c5           pop_s r13
       │    0x000272f4      e1c5           push_s r13
       │    0x000272f6      e1c6           push_s r14
       │    0x000272f8      e1c7           push_s r15
       │    0x000272fa      fc1c08b4       st.aw r16,[sp,-4]
       │    0x000272fe      fc1c48b4       st.aw r17,[sp,-4]
       │    0x00027302      fc1c88b4       st.aw r18,[sp,-4]
       │    0x00027306      fc1cc8b4       st.aw r19,[sp,-4]
       │    0x0002730a      fc1c08b5       st.aw r20,[sp,-4]
       │    0x0002730e      a1c1           sub_s sp,sp,0x0x4
       │    0x00027310      5e108400       ldb r4,[r0,94]
       │    0x00027314      0877           .short 0x7708
       │    0x00027316      0a24c027       mov r20,blink
       │    0x0002731a      110c3000       breq.d.nt r4,0x0,16 ;0x00027328
       │    0x0002731e      00dd           mov_s r13,0x0
       │    0x00027320      5f178110       ldb r1,[r15,95]
       │    0x00027324      19099100       brne.nt r1,0x0x2,24 ;0x0002733c
       │    0x00027328      cf76           mov_s 0x0,6
       │    0x0002732a      8000c80b       bnv 96384 ;0x0003eba8
       │    0x0002732e      3a76           .short 0x763a
       │    0x00027330      4a200021       mov r16,0x0x4
       │    0x00027334      4f002000       b.d 78 ;0x00027382
       │    0x00027338      8a23c32f       mov r19,255
       │    0x0002733c      4a228020       mov r18,0x0x2
       │    0x00027340      cf76           mov_s 0x0,6
       │    0x00027342      8000c80b       bnv 96384 ;0x0003ebc0
       │    0x00027346      001e8214       stb r18,[r14]
       │    0x0002734a      4a200021       mov r16,0x0x4
       │    0x0002734e      031e0214       stb r16,[r14,3]
       │    0x00027352      b4d8           mov_s r0,0x0xb4
       │    0x00027354      01ae           stb_s r0,[r14,0x0x1]
       │    0x00027356      021e8214       stb r18,[r14,2]
       │    0x0002735a      16c8           ld_s r0,[gp,88]
       │    0x0002735c      041e8214       stb r18,[r14,4]
       │    0x00027360      08a6           st_s r0,[r14,0x0x20]
       │    0x00027362      1d1e8214       stb r18,[r14,29]
       │    0x00027366      8a23c32f       mov r19,255
       │    0x0002736a      241ec214       stb r19,[r14,36]
       │    0x0002736e      8e0f2ffb       bl.d -39028 ;0x0001daf8
       │    0x00027372      c970           .short 0x70c9
       │    0x00027374      37083000       breq.d.nt r0,0x0,54 ;0x000273aa
       │    0x00027378      3a76           .short 0x763a
       │    0x0002737a      5e178410       ldb r4,[r15,94]
       │    0x0002737e      5f1f8214       stb r18,[r15,95]
       │    0x00027382      03da           mov_s r2,0x0x3
       │    0x00027384      40ae           stb_s r2,[r14,0x0]
       │    0x00027386      031e0214       stb r16,[r14,3]
       │    0x0002738a      b4db           mov_s r3,0x0xb4
       │    0x0002738c      61ae           stb_s r3,[r14,0x0x1]
       │    0x0002738e      3eda           mov_s r2,0x0x3e
       │    0x00027390      8b70           .short 0x708b
       │    0x00027392      06a6           st_s r0,[r14,0x0x18]
       │    0x00027394      16c8           ld_s r0,[gp,88]
       │    0x00027396      42ae           stb_s r2,[r14,0x0x2]
       │    0x00027398      08a6           st_s r0,[r14,0x0x20]
       │    0x0002739a      410c3000       breq.d.nt r4,0x0,64 ;0x000273d8
       │    0x0002739e      241ec214       stb r19,[r14,36]
       │    0x000273a2      01d9           mov_s r1,0x0x1
       │    0x000273a4      39002000       b.d 56 ;0x000273dc
       │    0x000273a8      3dae           stb_s r1,[r14,0x0x1d]
       │    0x000273aa      64178110       ldb r1,[r15,100]
       │    0x000273ae      a970           .short 0x70a9
       │    0x000273b0      82b9           bset_s r1,r1,0x0x2
       │    0x000273b2      641f4210       stb r1,[r15,100]
       │    0x000273b6      0a270035       mov blink,r20
       │    0x000273ba      a1c0           add_s sp,sp,0x0x4
       │    0x000273bc      04141434       ld.ab r20,[sp,4]
      ┌─┌─< 0x000273c0      04141334       ld.ab r19,[sp,4]
      ││└─> 0x000273c4      04141234       ld.ab r18,[sp,4]
      ││    0x000273c8      04141134       ld.ab r17,[sp,4]
      ││    0x000273cc      04141034       ld.ab r16,[sp,4]
      ││    0x000273d0      c1c7           pop_s r15
      ││    0x000273d2      c1c6           pop_s r14
      ││    0x000273d4      e07f           j_s.d [blink]
      ││    0x000273d6      c1c5           pop_s r13
      ││    0x000273d8      00db           mov_s r3,0x0
      ││    0x000273da      7dae           stb_s r3,[r14,0x0x1d]
      ││    0x000273dc      1e0f2ffb       bl.d -39140 ;0x0001daf8
      ││    0x000273e0      2a70           .short 0x702a
      ││    0x000273e2      1de8           breq_s r0,0x0,58 ;0x0002741a
      ││    0x000273e4      01148130       ldb r1,[sp,1]
      ││    0x000273e8      20c5           ldb_s r13,[sp,0x0]
      ││    0x000273ea      08b9           asl_s r1,r1,0x0x8
      ││    0x000273ec      05254d90       or.f r13,r13,r1
      ││    0x000273f0      0a270035       mov blink,r20
      ││    0x000273f4      c0256410       add.n r13,r13,0x0x1
      ││    0x000273f8      bc7d           asr_s r13,r13
      ││    0x000273fa      b078           exth_s r0,r13
      ││    0x000273fc      a1c0           add_s sp,sp,0x0x4
      ││    0x000273fe      04141434       ld.ab r20,[sp,4]
      ││    0x00027402      04141334       ld.ab r19,[sp,4]
      ││    0x00027406      04141234       ld.ab r18,[sp,4]
      ││    0x0002740a      04141134       ld.ab r17,[sp,4]
      ││    0x0002740e      04141034       ld.ab r16,[sp,4]
      ││    0x00027412      c1c7           pop_s r15
      ││    0x00027414      c1c6           pop_s r14
      ││    0x00027416      e07f           j_s.d [blink]
      ││    0x00027418      c1c5           pop_s r13
      ││    0x0002741a      a970           .short 0x70a9
      ││    0x0002741c      0a270035       mov blink,r20
      ││    0x00027420      a1c0           add_s sp,sp,0x0x4
      ││    0x00027422      04141434       ld.ab r20,[sp,4]
      ││    0x00027426      04141334       ld.ab r19,[sp,4]
      ││    0x0002742a      04141234       ld.ab r18,[sp,4]
      ││    0x0002742e      04141134       ld.ab r17,[sp,4]
      ││    0x00027432      04141034       ld.ab r16,[sp,4]
      ││    0x00027436      c1c7           pop_s r15
      ││    0x00027438      c1c6           pop_s r14
      ││    0x0002743a      e07f           j_s.d [blink]
      ││    0x0002743c      c1c5           pop_s r13
      ││    0x0002743e      e078           nop_s
      ││    0x00027440      cf73           mov_s 0x0,3
      ││    0x00027442      f0000008       b 65776 ;0x00037530
      ││    0x00027446      0c130500       ld r5,[r3,12]
      ││    0x0002744a      0a24800ff0..   mov r4,0x0xf06400
      ││    0x00027452      80da           mov_s r2,0x0x80
      ││    0x00027454      10148100       ldb r1,[r4,16]
      ││    0x00027458      4479           and_s r1,r1,r2
      ││    0x0002745a      89e9           brne_s r1,0x0,18 ;0x0002746a
      ││    0x0002745c      0383           ld_s r0,[r3,0x0xc]
      ││    0x0002745e      02204001       sub r0,r0,r5
      ││    0x00027462      f508848f00..   brlo.nt r0,0x0x4f2e,-12 ;0x00027454
      ││    0x0002746a      e07e           j_s [blink]
      ││    0x0002746c      c77080000004   add_s 0x0,0x0x800400,0
      ││    0x00027472      e07f           j_s.d [blink]
      ││    0x00027474      20a8           stb_s r1,[r0,0x0]
      ││    0x00027476      e078           nop_s
      ││    0x00027478      e07e           j_s [blink]
      ││    0x0002747a      e078           nop_s
      ││    0x0002747c      e1c5           push_s r13
      ││    0x0002747e      e1c6           push_s r14
      ││    0x00027480      e1c7           push_s r15
      ││    0x00027482      fc1c08b4       st.aw r16,[sp,-4]
      ││    0x00027486      fc1c48b4       st.aw r17,[sp,-4]
      ││    0x0002748a      0a21c027       mov r17,blink
      ││    0x0002748e      1a70           .short 0x701a
      ││    0x00027490      2877           .short 0x7728
      ││    0x00027492      b20fefff       bl.d -80 ;0x00027440
      ││    0x00027496      00de           mov_s r14,0x0
      ││    0x00027498      cf75           mov_s 0x0,5
      ││    0x0002749a      f0000064       b 819440 ;0x000ef588
      ││    0x0002749e      508d           ldb_s r2,[r13,0x0x10]
      ││    0x000274a0      c0ba           bmsk_s r2,r2,0x0
      ││    0x000274a2      90ea           brne_s r2,0x0,32 ;0x000274c0
      ││    0x000274a4      1d0f5210       brlt.nt r15,0x0x1,28 ;0x000274c0
      ││    0x000274a8      00208223       add r2,r16,r14
      ││    0x000274ac      208a           ldb_s r1,[r2,0x0]
      ││    0x000274ae      01e6           add_s r14,r14,0x0x1
      ││    0x000274b0      20ad           stb_s r1,[r13,0x0]
      ││    0x000274b2      308d           ldb_s r1,[r13,0x0x10]
      ││    0x000274b4      c0b9           bmsk_s r1,r1,0x0
      ││    0x000274b6      0d093100       brne.d.nt r1,0x0,12 ;0x000274c0
      ││    0x000274ba      cf7e           extb_s r14,r14
      ││    0x000274bc      ed0ec293       brlt.nt r14,r15,-20 ;0x000274a8
      ││    0x000274c0      820fcfff       bl -128 ;0x00027440
      ││    0x000274c4      088d           ldb_s r0,[r13,0x0x8]
      ││    0x000274c6      cf71           mov_s 0x0,1
      ││    0x000274c8      f0000008       b 65776 ;0x000375b8
      ││    0x000274cc      86b8           bset_s r0,r0,0x0x6
      ││    0x000274ce      08ad           stb_s r0,[r13,0x0x8]
      ││    0x000274d0      4381           ld_s r2,[r1,0x0xc]
      ││    0x000274d2      6c8d           ldb_s r3,[r13,0x0xc]
      ││    0x000274d4      86237f0f       bic r3,r3,-3
      ││    0x000274d8      87eb           brne_s r3,0x0,14 ;0x000274e6
      ││    0x000274da      0381           ld_s r0,[r1,0x0xc]
      ││    0x000274dc      4278           sub_s r0,r0,r2
      ││    0x000274de      f708848f00..   brlo.nt r0,0x0x4f2e,-10 ;0x000274d2
      ││    0x000274e6      0a274034       mov blink,r17
      ││    0x000274ea      04141134       ld.ab r17,[sp,4]
      ││    0x000274ee      04141034       ld.ab r16,[sp,4]
      ││    0x000274f2      c1c7           pop_s r15
      ││    0x000274f4      c1c6           pop_s r14
      ││    0x000274f6      e07f           j_s.d [blink]
      ││    0x000274f8      c1c5           pop_s r13
      ││    0x000274fa      e078           nop_s
      ││    0x000274fc      e1c5           push_s r13
      ││    0x000274fe      e1c6           push_s r14
      ││    0x00027500      f1c0           push_s blink
      ││    0x00027502      01dd           mov_s r13,0x0x1
      ││    0x00027504      8e0f6ff7       bl.d -69748 ;0x00016490
      ││    0x00027508      a970           .short 0x70a9
      ││    0x0002750a      0d085100       brne.nt r0,0x0x1,12 ;0x00027514
      ││    0x0002750e      0b002000       b.d 10 ;0x00027516
      ││    0x00027512      a971           .short 0x71a9
      ││    0x00027514      00d9           mov_s r1,0x0
      ││    0x00027516      cf76           mov_s 0x0,6
      ││    0x00027518      80003408       b.d 65664 ;0x00037598
      ││    0x0002751c      2f1e4210       stb r1,[r14,47]
      ││    0x00027520      30168d10       ldb r13,[r14,48]
      ││    0x00027524      7e0f6000       bl.d 3964 ;0x000284a0
      ││    0x00027528      bb7d           asl_s r13,r13
      ││    0x0002752a      05204203       or r2,r0,r13
      ││    0x0002752e      4f7d           extb_s r13,r2
      ││    0x00027530      301e8210       stb r2,[r14,48]
      ││    0x00027534      bc7b           asr_s r3,r13
      ││    0x00027536      a77b           xor_s r3,r3,r13
      ││    0x00027538      c0bb           bmsk_s r3,r3,0x0
      ││    0x0002753a      31168010       ldb r0,[r14,49]
      ││    0x0002753e      150b3000       breq.d.nt r3,0x0,20 ;0x00027550
      ││    0x00027542      1b79           asl_s r1,r0
      ││    0x00027544      c0b8           bmsk_s r0,r0,0x0
      ││    0x00027546      2578           or_s r0,r0,r1
      ││    0x00027548      11002000       b.d 16 ;0x00027558
      ││    0x0002754c      311e0210       stb r0,[r14,49]
      ││    0x00027550      c0ba           bmsk_s r2,r2,0x0
      ││    0x00027552      4579           or_s r1,r1,r2
      ││    0x00027554      311e4210       stb r1,[r14,49]
      ││    0x00027558      cf75           mov_s 0x0,5
      ││    0x0002755a      80000004       b 32896 ;0x0002f5d8
      ││    0x0002755e      a6158310       ldb r3,[r13,166]
      ││    0x00027562      44238100       and r1,r3,0x0x2
      ││    0x00027566      0ee9           breq_s r1,0x0,28 ;0x00027580
      ││    0x00027568      80bb           bset_s r3,r3,0x0
      ││    0x0002756a      a61dc210       stb r3,[r13,166]
      ││    0x0002756e      01da           mov_s r2,0x0x1
      ││    0x00027570      41ae           stb_s r2,[r14,0x0x1]
      ││    0x00027572      00d9           mov_s r1,0x0
      ││    0x00027574      721a42b0       stb r1,[gp,-142]
      ││    0x00027578      d1c0           pop_s blink
      ││    0x0002757a      c1c6           pop_s r14
      ││    0x0002757c      e07f           j_s.d [blink]
      ││    0x0002757e      c1c5           pop_s r13
      ││    0x00027580      d20e4ffa       bl -45360 ;0x0001c450
      ││    0x00027584      0fe8           breq_s r0,0x0,30 ;0x000275a2
      ││    0x00027586      a8158210       ldb r2,[r13,168]
      ││    0x0002758a      8622ff0e       bic r2,r2,-5
      ││    0x0002758e      8bea           brne_s r2,0x0,22 ;0x000275a2
      ││    0x00027590      a9158110       ldb r1,[r13,169]
      ││    0x00027594      86217f0f       bic r1,r1,-3
      ││    0x00027598      85e9           brne_s r1,0x0,10 ;0x000275a2
      ││    0x0002759a      1a0f4000       bl 3864 ;0x000284b0
      ││    0x0002759e      80e0           cmp_s r0,0x0
      ││    0x000275a0      8af2           beq_s 276 ;0x000276b4
      ││    0x000275a2      31168010       ldb r0,[r14,49]
      ││    0x000275a6      c1b8           bmsk_s r0,r0,0x0x1
      ││    0x000275a8      9f081000       breq.nt r0,0x0,158 ;0x00027646
      ││    0x000275ac      2b085000       breq.nt r0,0x0x1,42 ;0x000275d6
      ││    0x000275b0      69089000       breq.nt r0,0x0x2,104 ;0x00027618
      ││    0x000275b4      d108d100       brne.nt r0,0x0x3,208 ;0x00027684
      ││    0x000275b8      2f168310       ldb r3,[r14,47]
      ││    0x000275bc      01da           mov_s r2,0x0x1
      ││    0x000275be      c90b3100       brne.d.nt r3,0x0,200 ;0x00027684
      ││    0x000275c2      41ae           stb_s r2,[r14,0x0x1]
      ││    0x000275c4      a6158310       ldb r3,[r13,166]
      ││    0x000275c8      53230100       bmsk r1,r3,0x0
      ││    0x000275cc      b9093100       brne.d.nt r1,0x0,184 ;0x00027684
      ││    0x000275d0      721a82b0       stb r2,[gp,-142]
      ││    0x000275d4      14f0           b_s 40 ;0x000275fc
      ││    0x000275d6      72cb           ldb_s r0,[gp,-142]
      ││    0x000275d8      01da           mov_s r2,0x0x1
      ││    0x000275da      0b083000       breq.d.nt r0,0x0,10 ;0x000275e2
      ││    0x000275de      41ae           stb_s r2,[r14,0x0x1]
      ││    0x000275e0      02da           mov_s r2,0x0x2
      ││    0x000275e2      721a82b0       stb r2,[gp,-142]
      ││    0x000275e6      b20f6ff7       bl.d -69712 ;0x00016594
      ││    0x000275ea      07d8           mov_s r0,0x0x7
      ││    0x000275ec      2f168310       ldb r3,[r14,47]
      ││    0x000275f0      91eb           brne_s r3,0x0,34 ;0x00027612
      ││    0x000275f2      a6158310       ldb r3,[r13,166]
      ││    0x000275f6      53230100       bmsk r1,r3,0x0
      ││    0x000275fa      8de9           brne_s r1,0x0,26 ;0x00027612
      ││    0x000275fc      80bb           bset_s r3,r3,0x0
      ││    0x000275fe      560e6ffa       bl.d -45484 ;0x0001c450
      ││    0x00027602      a61dc210       stb r3,[r13,166]
      ││    0x00027606      87e8           brne_s r0,0x0,14 ;0x00027612
      ││    0x00027608      cd158010       ldb r0,[r13,205]
      ││    0x0002760c      120c2ff0       bl.d -130032 ;0x00007a1c
      ││    0x00027610      93d9           mov_s r1,0x0x93
      ││    0x00027612      69002000       b.d 104 ;0x00027678
      ││    0x00027616      01d8           mov_s r0,0x0x1
      ││    0x00027618      00d9           mov_s r1,0x0
      ││    0x0002761a      21ae           stb_s r1,[r14,0x0x1]
      ││    0x0002761c      02da           mov_s r2,0x0x2
      ││    0x0002761e      360e6ffa       bl.d -45516 ;0x0001c450
      ││    0x00027622      721a82b0       stb r2,[gp,-142]
      ││    0x00027626      88e8           brne_s r0,0x0,16 ;0x00027634
      ││    0x00027628      cf71           mov_s 0x0,1
      ││    0x0002762a      00003075       b.d 958464 ;0x00111628
      ││    0x0002762e      420f6ff7       bl.d -69824 ;0x0001656c
      ││    0x00027632      07d8           mov_s r0,0x0x7
      ││    0x00027634      2f168310       ldb r3,[r14,47]
      ││    0x00027638      9feb           brne_s r3,0x0,62 ;0x00027676
      ││    0x0002763a      a6158310       ldb r3,[r13,166]
      ││    0x0002763e      53230100       bmsk r1,r3,0x0
      ││    0x00027642      1be9           breq_s r1,0x0,54 ;0x00027676
      ││    0x00027644      0ef0           b_s 28 ;0x00027660
      ││    0x00027646      2f168310       ldb r3,[r14,47]
      ││    0x0002764a      00d9           mov_s r1,0x0
      ││    0x0002764c      390b3100       brne.d.nt r3,0x0,56 ;0x00027684
      ││    0x00027650      21ae           stb_s r1,[r14,0x0x1]
      ││    0x00027652      a6158310       ldb r3,[r13,166]
      ││    0x00027656      721a42b0       stb r1,[gp,-142]
      ││    0x0002765a      53230100       bmsk r1,r3,0x0
      ││    0x0002765e      14e9           breq_s r1,0x0,40 ;0x00027684
      ││    0x00027660      a0bb           bclr_s r3,r3,0x0
      ││    0x00027662      f20d6ffa       bl.d -45584 ;0x0001c450
      ││    0x00027666      a61dc210       stb r3,[r13,166]
      ││    0x0002766a      87e8           brne_s r0,0x0,14 ;0x00027676
      ││    0x0002766c      cd158010       ldb r0,[r13,205]
      ││    0x00027670      ae0b2ff0       bl.d -130132 ;0x00007a1c
      ││    0x00027674      93d9           mov_s r1,0x0x93
      ││    0x00027676      02d8           mov_s r0,0x0x2
      ││    0x00027678      26084ffd       bl -22492 ;0x00021e9c
      ││    0x0002767c      0871           .short 0x7108
      ││    0x0002767e      f20e6ff7       bl.d -69904 ;0x0001656c
      ││    0x00027682      01d8           mov_s r0,0x0x1
      ││    0x00027684      0e0e6ff7       bl.d -70132 ;0x00016490
      ││    0x00027688      07d8           mov_s r0,0x0x7
      ││    0x0002768a      23089100       brne.nt r0,0x0x2,34 ;0x000276aa
      ││    0x0002768e      9e158110       ldb r1,[r13,158]
      ││    0x00027692      0f095300       brge.nt r1,0x0x1,14 ;0x0002769e
      ││    0x00027696      71cb           ldb_s r0,[gp,-143]
      ││    0x00027698      80b8           bset_s r0,r0,0x0
      ││    0x0002769a      711a02b0       stb r0,[gp,-143]
      ││    0x0002769e      0f095300       brge.nt r1,0x0x1,14 ;0x000276aa
      ││    0x000276a2      71cb           ldb_s r0,[gp,-143]
      ││    0x000276a4      82b8           bset_s r0,r0,0x0x2
      ││    0x000276a6      711a02b0       stb r0,[gp,-143]
      ││    0x000276aa      31168010       ldb r0,[r14,49]
      ││    0x000276ae      3d002000       b.d 60 ;0x000276e8
      ││    0x000276b2      c1b8           bmsk_s r0,r0,0x0x1
      ││    0x000276b4      31168010       ldb r0,[r14,49]
      ││    0x000276b8      00d9           mov_s r1,0x0
      ││    0x000276ba      c1b8           bmsk_s r0,r0,0x0x1
      ││    0x000276bc      29083000       breq.d.nt r0,0x0,40 ;0x000276e4
      ││    0x000276c0      721a42b0       stb r1,[gp,-142]
      ││    0x000276c4      0d085000       breq.nt r0,0x0x1,12 ;0x000276d0
      ││    0x000276c8      11089000       breq.nt r0,0x0x2,16 ;0x000276d8
      ││    0x000276cc      1d08d100       brne.nt r0,0x0x3,28 ;0x000276e8
      ││    0x000276d0      01da           mov_s r2,0x0x1
      ││    0x000276d2      19002000       b.d 24 ;0x000276e8
      ││    0x000276d6      41ae           stb_s r2,[r14,0x0x1]
      ││    0x000276d8      21ae           stb_s r1,[r14,0x0x1]
      ││    0x000276da      02d8           mov_s r0,0x0x2
      ││    0x000276dc      ce08affe       bl.d -12084 ;0x000247a8
      ││    0x000276e0      01da           mov_s r2,0x0x1
      ││    0x000276e2      e5f1           b_s -54 ;0x000276aa
      ││    0x000276e4      2870           .short 0x7028
      ││    0x000276e6      21ae           stb_s r1,[r14,0x0x1]
      ││    0x000276e8      19085000       breq.nt r0,0x0x1,24 ;0x00027700
      ││    0x000276ec      49089100       brne.nt r0,0x0x2,72 ;0x00027734
      ││    0x000276f0      6286           ld_s r3,[r14,0x0x8]
      ││    0x000276f2      22eb           breq_s r3,0x0,68 ;0x00027734
      ││    0x000276f4      00d9           mov_s r1,0x0
      ││    0x000276f6      22a6           st_s r1,[r14,0x0x8]
      ││    0x000276f8      d1c0           pop_s blink
      ││    0x000276fa      c1c6           pop_s r14
      ││    0x000276fc      e07f           j_s.d [blink]
      ││    0x000276fe      c1c5           pop_s r13
      ││    0x00027700      6d8d           ldb_s r3,[r13,0x0xd]
      ││    0x00027702      c0bb           bmsk_s r3,r3,0x0
      ││    0x00027704      310b5100       brne.nt r3,0x0x1,48 ;0x00027734
      ││    0x00027708      0c8e           ldb_s r0,[r14,0x0xc]
      ││    0x0002770a      09e8           breq_s r0,0x0,18 ;0x0002771a
      ││    0x0002770c      8a22040b       mov r2,300
      ││    0x00027710      42a6           st_s r2,[r14,0x0x8]
      ││    0x00027712      d1c0           pop_s blink
      ││    0x00027714      c1c6           pop_s r14
      ││    0x00027716      e07f           j_s.d [blink]
      ││    0x00027718      c1c5           pop_s r13
      ││    0x0002771a      3a0d4ffa       bl -45768 ;0x0001c450
      ││    0x0002771e      1908d100       brne.nt r0,0x0x3,24 ;0x00027734
      ││    0x00027722      fe0e6ffe       bl.d -12548 ;0x0002461c
      ││    0x00027726      08d8           mov_s r0,0x0x8
      ││    0x00027728      da0b0ff8       bl -64552 ;0x00017b00
      ││    0x0002772c      d1c0           pop_s blink
      ││    0x0002772e      c1c6           pop_s r14
      ││    0x00027730      e07f           j_s.d [blink]
      ││    0x00027732      c1c5           pop_s r13
      ││    0x00027734      d1c0           pop_s blink
      ││    0x00027736      c1c6           pop_s r14
      ││    0x00027738      e07f           j_s.d [blink]
      ││    0x0002773a      c1c5           pop_s r13
      ││    0x0002773c      e1c5           push_s r13
      ││    0x0002773e      e1c6           push_s r14
      ││    0x00027740      e1c7           push_s r15
      ││    0x00027742      fc1c08b4       st.aw r16,[sp,-4]
      ││    0x00027746      0a20c027       mov r16,blink
      ││    0x0002774a      cf76           mov_s 0x0,6
      ││    0x0002774c      80006c09       ble.d 75904 ;0x00039fcc
      ││    0x00027750      cf72           mov_s 0x0,2
      ││    0x00027752      f00000c8       b -458512 ;0xfffffffffffb7840
      ││    0x00027756      0b128180       ldb r1,[r2,-245]
      ││    0x0002775a      f18e           ldb_s r15,[r14,0x0x11]
      ││    0x0002775c      23b9           lsr_s r1,r1,0x0x3
      ││    0x0002775e      c0b9           bmsk_s r1,r1,0x0
      ││    0x00027760      6e0d6000       bl.d 3436 ;0x000284cc
      ││    0x00027764      31ae           stb_s r1,[r14,0x0x11]
      ││    0x00027766      a9083000       breq.d.nt r0,0x0,168 ;0x0002780c
      ││    0x0002776a      00dd           mov_s r13,0x0
      ││    0x0002776c      318e           ldb_s r1,[r14,0x0x11]
      ││    0x0002776e      83e9           brne_s r1,0x0,6 ;0x00027772
      ││    0x00027770      87ef           brne_s r15,0x0,14 ;0x0002777e
      ││    0x00027772      cf70           mov_s 0x0,0
      ││    0x00027774      f0000008       b 65776 ;0x00037864
      ││    0x00027778      11002000       b.d 16 ;0x00027788
      ││    0x0002777c      6586           ld_s r3,[r14,0x0x14]
      ││    0x0002777e      cf70           mov_s 0x0,0
      ││    0x00027780      f0000008       b 65776 ;0x00037870
      ││    0x00027784      6380           ld_s r3,[r0,0x0xc]
      ││    0x00027786      65a6           st_s r3,[r14,0x0x14]
      ││    0x00027788      4380           ld_s r2,[r0,0x0xc]
      ││    0x0002778a      318e           ldb_s r1,[r14,0x0x11]
      ││    0x0002778c      1f093100       brne.d.nt r1,0x0,30 ;0x000277aa
      ││    0x00027790      627a           sub_s r2,r2,r3
      ││    0x00027792      0f0e8570cf..   brhs.nt 0x0x1cff188,r2,14 ;0x0002779e
      ││    0x0002779a      01d8           mov_s r0,0x0x1
      ││    0x0002779c      18ae           stb_s r0,[r14,0x0x18]
      ││    0x0002779e      0f0e8570b0..   brhs.nt 0x0x1eb01c10,r2,14 ;0x000277aa
      ││    0x000277a6      01d8           mov_s r0,0x0x1
      ││    0x000277a8      19ae           stb_s r0,[r14,0x0x19]
      ││    0x000277aa      32e9           breq_s r1,0x0,100 ;0x0002780c
      ││    0x000277ac      b0ef           brne_s r15,0x0,96 ;0x0002780c
      ││    0x000277ae      d7729a00d8a5   cmp_s 0x0x9aa5d8,2
      ││    0x000277b4      0e002e00       bls.d 14 ;0x000277c2
      ││    0x000277b8      19168410       ldb r4,[r14,25]
      ││    0x000277bc      788e           ldb_s r3,[r14,0x0x18]
      ││    0x000277be      83eb           brne_s r3,0x0,6 ;0x000277c2
      ││    0x000277c0      01dd           mov_s r13,0x0x1
      ││    0x000277c2      00d9           mov_s r1,0x0
      ││    0x000277c4      4e21c300       rsub r3,r1,0x0x3
      ││    0x000277c8      db63           add_s r3,r3,r14
      ││    0x000277ca      608b           ldb_s r3,[r3,0x0]
      ││    0x000277cc      4e210001       rsub r0,r1,0x0x4
      ││    0x000277d0      01e1           add_s r1,r1,0x0x1
      ││    0x000277d2      2f79           extb_s r1,r1
      ││    0x000277d4      d860           add_s r0,r0,r14
      ││    0x000277d6      f1093281       brlt.d.nt r1,0x0x4,-16 ;0x000277c4
      ││    0x000277da      60a8           stb_s r3,[r0,0x0]
      ││    0x000277dc      0d0c1000       breq.nt r4,0x0,12 ;0x000277e8
      ││    0x000277e0      fed9           mov_s r1,0x0xfe
      ││    0x000277e2      27002000       b.d 38 ;0x00027806
      ││    0x000277e6      20ae           stb_s r1,[r14,0x0]
      ││    0x000277e8      cf73           mov_s 0x0,3
      ││    0x000277ea      ebce           add_s r0,gp,940
      ││    0x000277ec      39f8           bl_s 228 ;0x000278d0
      ││    0x000277ee      052bbe00       divu 0x0,r3,r2
      ││    0x000277f2      cf71           mov_s 0x0,1
      ││    0x000277f4      eb51           ldi_s r1,[0x0x73]
      ││    0x000277f6      1f85           ld_s r0,[r13,0x0x7c]
      ││    0x000277f8      412b8073       lsr r0,r59,0x0xe
      ││    0x000277fc      05293e00       divu 0x0,r1,r0
      ││    0x00027800      412b4271       lsr r2,r59,0x0x5
      ││    0x00027804      40ae           stb_s r2,[r14,0x0]
      ││    0x00027806      00d9           mov_s r1,0x0
      ││    0x00027808      38ae           stb_s r1,[r14,0x0x18]
      ││    0x0002780a      39ae           stb_s r1,[r14,0x0x19]
      ││    0x0002780c      cf76           mov_s 0x0,6
      ││    0x0002780e      80000004       b 32896 ;0x0002f88c
      ││    0x00027812      bc168310       ldb r3,[r14,188]
      ││    0x00027816      8623ff0e       bic r3,r3,-5
      ││    0x0002781a      12eb           breq_s r3,0x0,36 ;0x0002783c
      ││    0x0002781c      360c4ffa       bl -46028 ;0x0001c450
      ││    0x00027820      0ee8           breq_s r0,0x0,28 ;0x0002783c
      ││    0x00027822      0eed           breq_s r13,0x0,28 ;0x0002783c
      ││    0x00027824      fa0d6ffe       bl.d -12808 ;0x0002461c
      ││    0x00027828      04d8           mov_s r0,0x0x4
      ││    0x0002782a      660b0ff0       bl -130204 ;0x00007b8c
      ││    0x0002782e      06e8           breq_s r0,0x0,12 ;0x00027838
      ││    0x00027830      0d002000       b.d 12 ;0x0002783c
      ││    0x00027834      3d1a02b0       stb r0,[gp,-195]
      ││    0x00027838      ca0a0ff8       bl -64824 ;0x00017b00
      ││    0x0002783c      06ed           breq_s r13,0x0,12 ;0x00027848
      ││    0x0002783e      e7168010       ldb r0,[r14,231]
      ││    0x00027842      de092ff0       bl.d -130596 ;0x00007a1c
      ││    0x00027846      fad9           mov_s r1,0x0xfa
      ││    0x00027848      0a270034       mov blink,r16
      ││    0x0002784c      04141034       ld.ab r16,[sp,4]
      ││    0x00027850      c1c7           pop_s r15
      ││    0x00027852      c1c6           pop_s r14
      ││    0x00027854      e07f           j_s.d [blink]
      ││    0x00027856      c1c5           pop_s r13
      ││    0x00027858      cf70           mov_s 0x0,0
      ││    0x0002785a      8000bc09       b.d 77952 ;0x0003a8d8
      ││    0x0002785e      e07f           j_s.d [blink]
      ││    0x00027860      0480           ld_s r0,[r0,0x0x10]
      ││    0x00027862      e078           nop_s
      ││    0x00027864      e1c5           push_s r13
      ││    0x00027866      eb75           .short 0x75eb
      ││    0x00027868      3e0a0ffe       bl -15812 ;0x00023aa4
      ││    0x0002786c      6f223f00       swi
      ││    0x00027870      01d8           mov_s r0,0x0x1
      ││    0x00027872      fb75           .short 0x75fb
      ││    0x00027874      e07f           j_s.d [blink]
      ││    0x00027876      c1c5           pop_s r13
      ││    0x00027878      e1c5           push_s r13
      ││    0x0002787a      e1c6           push_s r14
      ││    0x0002787c      eb76           .short 0x76eb
      ││    0x0002787e      2875           .short 0x7528
      ││    0x00027880      00d9           mov_s r1,0x0
      ││    0x00027882      6e082000       bl.d 108 ;0x000278ec
      ││    0x00027886      02da           mov_s r2,0x0x2
      ││    0x00027888      02e8           breq_s r0,0x0,4 ;0x0002788c
      ││    0x0002788a      aea0           st_s r13,[r0,0x0x38]
      ││    0x0002788c      fb76           .short 0x76fb
      ││    0x0002788e      c1c6           pop_s r14
      ││    0x00027890      e07f           j_s.d [blink]
      ││    0x00027892      c1c5           pop_s r13
      ││    0x00027894      e1c5           push_s r13
      ││    0x00027896      e1c6           push_s r14
      ││    0x00027898      e1c7           push_s r15
      ││    0x0002789a      eb77           .short 0x77eb
      ││    0x0002789c      260b2ffe       bl.d -15580 ;0x00023bc0
      ││    0x000278a0      4cd8           mov_s r0,0x0x4c
      ││    0x000278a2      0875           .short 0x7508
      ││    0x000278a4      3b0d3010       breq.d.nt r13,0x0,58 ;0x000278de
      ││    0x000278a8      00de           mov_s r14,0x0
      ││    0x000278aa      c1a5           st_s r14,[r13,0x0x4]
      ││    0x000278ac      c0a5           st_s r14,[r13,0x0]
      ││    0x000278ae      c2a5           st_s r14,[r13,0x0x8]
      ││    0x000278b0      c3a5           st_s r14,[r13,0x0xc]
      ││    0x000278b2      cea5           st_s r14,[r13,0x0x38]
      ││    0x000278b4      01d8           mov_s r0,0x0x1
      ││    0x000278b6      0fa5           st_s r0,[r13,0x0x3c]
      ││    0x000278b8      d0a5           st_s r14,[r13,0x0x40]
      ││    0x000278ba      8a21ff0f       mov r1,-1
      ││    0x000278be      31a5           st_s r1,[r13,0x0x44]
      ││    0x000278c0      32a5           st_s r1,[r13,0x0x48]
      ││    0x000278c2      aa0f2fff       bl.d -6232 ;0x00026068
      ││    0x000278c6      40250014       add r0,r13,0x0x10
      ││    0x000278ca      a20f2fff       bl.d -6240 ;0x00026068
      ││    0x000278ce      40250019       add r0,r13,0x0x24
      ││    0x000278d2      a970           .short 0x70a9
      ││    0x000278d4      c971           .short 0x71c9
      ││    0x000278d6      c972           .short 0x72c9
      ││    0x000278d8      aa0a2000       bl.d 680 ;0x00027b80
      ││    0x000278dc      c973           .short 0x73c9
      ││    0x000278de      a970           .short 0x70a9
      ││    0x000278e0      fb77           .short 0x77fb
      ││    0x000278e2      c1c7           pop_s r15
      ││    0x000278e4      c1c6           pop_s r14
      ││    0x000278e6      e07f           j_s.d [blink]
      ││    0x000278e8      c1c5           pop_s r13
      ││    0x000278ea      e078           nop_s
      ││    0x000278ec      e1c5           push_s r13
      ││    0x000278ee      e1c6           push_s r14
      ││    0x000278f0      e1c7           push_s r15
      ││    0x000278f2      fc1c08b4       st.aw r16,[sp,-4]
      ││    0x000278f6      fc1c48b4       st.aw r17,[sp,-4]
      ││    0x000278fa      0a21c027       mov r17,blink
      ││    0x000278fe      0875           .short 0x7508
      ││    0x00027900      1a71           .short 0x711a
      ││    0x00027902      650d3010       breq.d.nt r13,0x0,100 ;0x00027964
      ││    0x00027906      00df           mov_s r15,0x0
      ││    0x00027908      ba0a2ffe       bl.d -15688 ;0x00023bc0
      ││    0x0002790c      4cd8           mov_s r0,0x0x4c
      ││    0x0002790e      0876           .short 0x7608
      ││    0x00027910      2aee           breq_s r14,0x0,84 ;0x00027964
      ││    0x00027912      05287e23       divu 0x0,r16,r13
      ││    0x00027916      ae0a2ffe       bl.d -15700 ;0x00023bc0
      ││    0x0002791a      40214070       add r0,r57,0x0x1
      ││    0x0002791e      2d083000       breq.d.nt r0,0x0,44 ;0x00027948
      ││    0x00027922      00a6           st_s r0,[r14,0x0]
      ││    0x00027924      afa6           st_s r13,[r14,0x0x3c]
      ││    0x00027926      401e0014       st r16,[r14,64]
      ││    0x0002792a      c970           .short 0x70c9
      ││    0x0002792c      b6092000       bl.d 436 ;0x00027ae0
      ││    0x00027930      01d9           mov_s r1,0x0x1
      ││    0x00027932      c970           .short 0x70c9
      ││    0x00027934      0a274034       mov blink,r17
      ││    0x00027938      04141134       ld.ab r17,[sp,4]
      ││    0x0002793c      04141034       ld.ab r16,[sp,4]
      ││    0x00027940      c1c7           pop_s r15
      ││    0x00027942      c1c6           pop_s r14
      ││    0x00027944      e07f           j_s.d [blink]
      ││    0x00027946      c1c5           pop_s r13
      ││    0x00027948      8e086fff       bl.d -6004 ;0x000261d4
      ││    0x0002794c      c970           .short 0x70c9
      ││    0x0002794e      e970           .short 0x70e9
      ││    0x00027950      0a274034       mov blink,r17
      ││    0x00027954      04141134       ld.ab r17,[sp,4]
      ││    0x00027958      04141034       ld.ab r16,[sp,4]
      ││    0x0002795c      c1c7           pop_s r15
      ││    0x0002795e      c1c6           pop_s r14
      ││    0x00027960      e07f           j_s.d [blink]
      ││    0x00027962      c1c5           pop_s r13
      ││    0x00027964      e970           .short 0x70e9
      ││    0x00027966      0a274034       mov blink,r17
      ││    0x0002796a      04141134       ld.ab r17,[sp,4]
      ││    0x0002796e      04141034       ld.ab r16,[sp,4]
      ││    0x00027972      c1c7           pop_s r15
      ││    0x00027974      c1c6           pop_s r14
      ││    0x00027976      e07f           j_s.d [blink]
      ││    0x00027978      c1c5           pop_s r13
      ││    0x0002797a      e078           nop_s
      ││    0x0002797c      a1c1           sub_s sp,sp,0x0x4
      ││    0x0002797e      e1c5           push_s r13
      ││    0x00027980      e1c6           push_s r14
      ││    0x00027982      e1c7           push_s r15
      ││    0x00027984      fc1c08b4       st.aw r16,[sp,-4]
      ││    0x00027988      fc1c48b4       st.aw r17,[sp,-4]
      ││    0x0002798c      fc1c88b4       st.aw r18,[sp,-4]
      ││    0x00027990      fc1cc8b4       st.aw r19,[sp,-4]
      ││    0x00027994      a2c1           sub_s sp,sp,0x0x8
      ││    0x00027996      0a23c027       mov r19,blink
      ││    0x0002799a      49c2           st_s r2,[sp,0x0x24]
      ││    0x0002799c      0875           .short 0x7508
      ││    0x0002799e      1a71           .short 0x711a
      ││    0x000279a0      6877           .short 0x7768
      ││    0x000279a2      00de           mov_s r14,0x0
      ││    0x000279a4      02084fff       bl -6144 ;0x000261a4
      ││    0x000279a8      6e85           ld_s r3,[r13,0x0x38]
      ││    0x000279aa      a10b1100       brne.nt r3,0x0,160 ;0x00027a48
      ││    0x000279ae      09c0           ld_s r0,[sp,0x0x24]
      ││    0x000279b0      f3081000       breq.nt r0,0x0,242 ;0x00027aa2
      ││    0x000279b4      0a210027       mov r17,sp
      ││    0x000279b8      110e3110       brne.d.nt r14,0x0,16 ;0x000279c8
      ││    0x000279bc      40241239       add r18,sp,0x0x24
      ││    0x000279c0      d20dafff       bl.d -2608 ;0x00026f90
      ││    0x000279c4      2a70           .short 0x702a
      ││    0x000279c6      01de           mov_s r14,0x0x1
      ││    0x000279c8      f20f0fff       bl -6160 ;0x000261b8
      ││    0x000279cc      b60e8fff       bl -2380 ;0x00027080
      ││    0x000279d0      d60f0fff       bl -6188 ;0x000261a4
      ││    0x000279d4      5185           ld_s r2,[r13,0x0x44]
      ││    0x000279d6      8c22ff8f       cmp r2,-1
      ││    0x000279da      04f4           bne_s 8 ;0x000279e0
      ││    0x000279dc      00d8           mov_s r0,0x0
      ││    0x000279de      11a5           st_s r0,[r13,0x0x44]
      ││    0x000279e0      7285           ld_s r3,[r13,0x0x48]
      ││    0x000279e2      8c23ff8f       cmp r3,-1
      ││    0x000279e6      04f4           bne_s 8 ;0x000279ec
      ││    0x000279e8      00d8           mov_s r0,0x0
      ││    0x000279ea      12a5           st_s r0,[r13,0x0x48]
      ││    0x000279ec      ce0f0fff       bl -6196 ;0x000261b8
      ││    0x000279f0      2a70           .short 0x702a
      ││    0x000279f2      b20b2000       bl.d 944 ;0x00027da0
      ││    0x000279f6      4a71           .short 0x714a
      ││    0x000279f8      0871           .short 0x7108
      ││    0x000279fa      bd093100       brne.d.nt r1,0x0,188 ;0x00027ab4
      ││    0x000279fe      a970           .short 0x70a9
      ││    0x00027a00      06080ffe       bl -16380 ;0x00023a04
      ││    0x00027a04      a5081000       breq.nt r0,0x0,164 ;0x00027aa8
      ││    0x00027a08      4085           ld_s r2,[r13,0x0]
      ││    0x00027a0a      190a3100       brne.d.nt r2,0x0,24 ;0x00027a20
      ││    0x00027a0e      40251119       add r17,r13,0x0x24
      ││    0x00027a12      960f0fff       bl -6252 ;0x000261a4
      ││    0x00027a16      c20bafff       bl.d -3136 ;0x00026dd4
      ││    0x00027a1a      0185           ld_s r0,[r13,0x0x4]
      ││    0x00027a1c      9e0f0fff       bl -6244 ;0x000261b8
      ││    0x00027a20      2a70           .short 0x702a
      ││    0x00027a22      160bafff       bl.d -3308 ;0x00026d34
      ││    0x00027a26      09c1           ld_s r1,[sp,0x0x24]
      ││    0x00027a28      e2082ffe       bl.d -16160 ;0x00023b08
      ││    0x00027a2c      a970           .short 0x70a9
      ││    0x00027a2e      560f0000       bl 1876 ;0x00028180
      ││    0x00027a32      75081180       brne.nt r0,0x0,-140 ;0x000279a4
      ││    0x00027a36      ab26487000..   sr 0x0x3,[aux_irq_hint]
      ││    0x00027a3e      e078           nop_s
      ││    0x00027a40      e078           nop_s
      ││    0x00027a42      e078           nop_s
      ││    0x00027a44      e078           nop_s
      ││    0x00027a46      b0f1           b_s -160 ;0x000279a4
      ││    0x00027a48      c385           ld_s r14,[r13,0x0xc]
      ││    0x00027a4a      a970           .short 0x70a9
      ││    0x00027a4c      a60deffd       bl.d -16988 ;0x000237f0
      ││    0x00027a50      0a71           .short 0x710a
      ││    0x00027a52      93ef           brne_s r15,0x0,38 ;0x00027a76
      ││    0x00027a54      2e85           ld_s r1,[r13,0x0x38]
      ││    0x00027a56      4085           ld_s r2,[r13,0x0]
      ││    0x00027a58      61b9           sub_s r1,r1,0x0x1
      ││    0x00027a5a      2ea5           st_s r1,[r13,0x0x38]
      ││    0x00027a5c      84ea           brne_s r2,0x0,8 ;0x00027a64
      ││    0x00027a5e      d20c0000       bl 1232 ;0x00027f2c
      ││    0x00027a62      01a5           st_s r0,[r13,0x0x4]
      ││    0x00027a64      0485           ld_s r0,[r13,0x0x10]
      ││    0x00027a66      1ae8           breq_s r0,0x0,52 ;0x00027a98
      ││    0x00027a68      a20e2000       bl.d 1696 ;0x00028108
      ││    0x00027a6c      40250014       add r0,r13,0x0x10
      ││    0x00027a70      29085100       brne.nt r0,0x0x1,40 ;0x00027a98
      ││    0x00027a74      0af0           b_s 20 ;0x00027a88
      ││    0x00027a76      2985           ld_s r1,[r13,0x0x24]
      ││    0x00027a78      21093000       breq.d.nt r1,0x0,32 ;0x00027a98
      ││    0x00027a7c      c3a5           st_s r14,[r13,0x0xc]
      ││    0x00027a7e      8e0e2000       bl.d 1676 ;0x00028108
     ││││   0x00027a82      40250019       add r0,r13,0x0x24
     │││    0x00027a86      0ae8           breq_s r0,0x0,20 ;0x00027a98
     │││    0x00027a88      ab26487000..   sr 0x0x3,[aux_irq_hint]
     │││    0x00027a90      e078           nop_s
     │││    0x00027a92      e078           nop_s
     │││    0x00027a94      e078           nop_s
     │││    0x00027a96      e078           nop_s
     │││    0x00027a98      220f0fff       bl -6368 ;0x000261b8
     │││    0x00027a9c      23002000       b.d 34 ;0x00027abe
     │││    0x00027aa0      01d8           mov_s r0,0x0x1
     │││    0x00027aa2      1a0f0fff       bl -6376 ;0x000261b8
     │││    0x00027aa6      0cf0           b_s 24 ;0x00027abc
     │││    0x00027aa8      62082ffe       bl.d -16288 ;0x00023b08
     │││    0x00027aac      a970           .short 0x70a9
     │││    0x00027aae      d60e0000       bl 1748 ;0x00028180
     │││    0x00027ab2      7af1           b_s -268 ;0x000279a4
     │││    0x00027ab4      56080ffe       bl -16300 ;0x00023b08
     │││    0x00027ab8      ca0e0000       bl 1736 ;0x00028180
     │││    0x00027abc      00d8           mov_s r0,0x0
     │││    0x00027abe      0a27c034       mov blink,r19
     │││    0x00027ac2      a2c0           add_s sp,sp,0x0x8
     │││    0x00027ac4      04141334       ld.ab r19,[sp,4]
     │││    0x00027ac8      04141234       ld.ab r18,[sp,4]
     │││    0x00027acc      04141134       ld.ab r17,[sp,4]
     │││    0x00027ad0      04141034       ld.ab r16,[sp,4]
     │││    0x00027ad4      c1c7           pop_s r15
     │││    0x00027ad6      c1c6           pop_s r14
     │││    0x00027ad8      c1c5           pop_s r13
     │││    0x00027ada      e07f           j_s.d [blink]
     │││    0x00027adc      a1c0           add_s sp,sp,0x0x4
     │││    0x00027ade      e078           nop_s
     │││    0x00027ae0      e1c5           push_s r13
     │││    0x00027ae2      e1c6           push_s r14
     │││    0x00027ae4      e1c7           push_s r15
     │││    0x00027ae6      eb77           .short 0x77eb
     │││    0x00027ae8      0875           .short 0x7508
     │││    0x00027aea      be0e2fff       bl.d -6468 ;0x000261a4
     │││    0x00027aee      2876           .short 0x7628
     │││    0x00027af0      4f85           ld_s r2,[r13,0x0x3c]
     │││    0x00027af2      40150410       ld r4,[r13,64]
     │││    0x00027af6      2085           ld_s r1,[r13,0x0]
     │││    0x00027af8      052cbe00       divu 0x0,r4,r2
     │││    0x00027afc      00db           mov_s r3,0x0
     │││    0x00027afe      61ba           sub_s r2,r2,0x0x1
     │││    0x00027b00      0021400e       add r0,r1,r57
     │││    0x00027b04      01a5           st_s r0,[r13,0x0x4]
     │││    0x00027b06      6ea5           st_s r3,[r13,0x0x38]
     │││    0x00027b08      052a3e01       divu 0x0,r2,r4
     │││    0x00027b0c      22a5           st_s r1,[r13,0x0x8]
     │││    0x00027b0e      8a23ff0f       mov r3,-1
     │││    0x00027b12      71a5           st_s r3,[r13,0x0x44]
     │││    0x00027b14      72a5           st_s r3,[r13,0x0x48]
     │││    0x00027b16      2771           add_s r25,r25,1
     │││    0x00027b18      370e3110       brne.d.nt r14,0x0,54 ;0x00027b4e
     │││    0x00027b1c      23a5           st_s r1,[r13,0x0xc]
     │││    0x00027b1e      0485           ld_s r0,[r13,0x0x10]
     │││    0x00027b20      27e8           breq_s r0,0x0,78 ;0x00027b6e
     │││    0x00027b22      ea0d2000       bl.d 1512 ;0x00028108
     │││    0x00027b26      40250014       add r0,r13,0x0x10
     │││    0x00027b2a      47085100       brne.nt r0,0x0x1,70 ;0x00027b6e
     │││    0x00027b2e      ab26487000..   sr 0x0x3,[aux_irq_hint]
     │││    0x00027b36      e078           nop_s
     │││    0x00027b38      e078           nop_s
     │││    0x00027b3a      e078           nop_s
     │││    0x00027b3c      e078           nop_s
     │││    0x00027b3e      7e0e0fff       bl -6532 ;0x000261b8
     │││    0x00027b42      01d8           mov_s r0,0x0x1
     │││    0x00027b44      fb77           .short 0x77fb
     │││    0x00027b46      c1c7           pop_s r15
     │││    0x00027b48      c1c6           pop_s r14
     │││    0x00027b4a      e07f           j_s.d [blink]
     │││    0x00027b4c      c1c5           pop_s r13
     │││    0x00027b4e      1e0d2fff       bl.d -6884 ;0x00026068
     │││    0x00027b52      40250014       add r0,r13,0x0x10
     │││    0x00027b56      160d2fff       bl.d -6892 ;0x00026068
     │││    0x00027b5a      40250019       add r0,r13,0x0x24
     │││    0x00027b5e      5e0e0fff       bl -6564 ;0x000261b8
     │││    0x00027b62      01d8           mov_s r0,0x0x1
     │││    0x00027b64      fb77           .short 0x77fb
     │││    0x00027b66      c1c7           pop_s r15
     │││    0x00027b68      c1c6           pop_s r14
     │││    0x00027b6a      e07f           j_s.d [blink]
     │││    0x00027b6c      c1c5           pop_s r13
     │││    0x00027b6e      4e0e0fff       bl -6580 ;0x000261b8
     │││    0x00027b72      01d8           mov_s r0,0x0x1
     │││    0x00027b74      fb77           .short 0x77fb
     │││    0x00027b76      c1c7           pop_s r15
     │││    0x00027b78      c1c6           pop_s r14
     │││    0x00027b7a      e07f           j_s.d [blink]
     │││    0x00027b7c      c1c5           pop_s r13
     │││    0x00027b7e      e078           nop_s
     │││    0x00027b80      a1c1           sub_s sp,sp,0x0x4
     │││    0x00027b82      e1c5           push_s r13
     │││    0x00027b84      e1c6           push_s r14
     │││    0x00027b86      e1c7           push_s r15
     │││    0x00027b88      fc1c08b4       st.aw r16,[sp,-4]
     │││    0x00027b8c      fc1c48b4       st.aw r17,[sp,-4]
     │││    0x00027b90      fc1c88b4       st.aw r18,[sp,-4]
     │││    0x00027b94      fc1cc8b4       st.aw r19,[sp,-4]
     │││    0x00027b98      a2c1           sub_s sp,sp,0x0x8
     │││    0x00027b9a      0a23c027       mov r19,blink
     │││    0x00027b9e      49c2           st_s r2,[sp,0x0x24]
     │││    0x00027ba0      0876           .short 0x7608
     │││    0x00027ba2      1a71           .short 0x711a
     │││    0x00027ba4      6877           .short 0x7768
     │││    0x00027ba6      00dd           mov_s r13,0x0
     │││    0x00027ba8      fe0d0fff       bl -6660 ;0x000261a4
     │││    0x00027bac      6e86           ld_s r3,[r14,0x0x38]
     │││    0x00027bae      2f86           ld_s r1,[r14,0x0x3c]
     │││    0x00027bb0      890b4400       brlo.nt r3,r1,136 ;0x00027c38
     │││    0x00027bb4      850f9010       breq.nt r15,0x0x2,132 ;0x00027c38
     │││    0x00027bb8      09c1           ld_s r1,[sp,0x0x24]
     │││    0x00027bba      b5091000       breq.nt r1,0x0,180 ;0x00027c6c
     │││    0x00027bbe      0a210027       mov r17,sp
     │││    0x00027bc2      130d3110       brne.d.nt r13,0x0,18 ;0x00027bd2
     │││    0x00027bc6      40241239       add r18,sp,0x0x24
     │││    0x00027bca      ca0bafff       bl.d -3128 ;0x00026f90
     │││    0x00027bce      2a70           .short 0x702a
     │││    0x00027bd0      01dd           mov_s r13,0x0x1
     │││    0x00027bd2      ea0d0fff       bl -6680 ;0x000261b8
     │││    0x00027bd6      ae0c8fff       bl -2900 ;0x00027080
     │││    0x00027bda      ce0d0fff       bl -6708 ;0x000261a4
     │││    0x00027bde      7186           ld_s r3,[r14,0x0x44]
     │││    0x00027be0      8c23ff8f       cmp r3,-1
     │││    0x00027be4      03f4           bne_s 6 ;0x00027bea
     │││    0x00027be6      00d8           mov_s r0,0x0
     │││    0x00027be8      11a6           st_s r0,[r14,0x0x44]
     │││    0x00027bea      1286           ld_s r0,[r14,0x0x48]
     │││    0x00027bec      8c20ff8f       cmp r0,-1
     │││    0x00027bf0      03f4           bne_s 6 ;0x00027bf6
     │││    0x00027bf2      00d8           mov_s r0,0x0
     │││    0x00027bf4      12a6           st_s r0,[r14,0x0x48]
     │││    0x00027bf6      c60d0fff       bl -6716 ;0x000261b8
     │││    0x00027bfa      2a70           .short 0x702a
     │││    0x00027bfc      a6092000       bl.d 420 ;0x00027da0
     │││    0x00027c00      4a71           .short 0x714a
     │││    0x00027c02      0872           .short 0x7208
     │││    0x00027c04      7b0a3100       brne.d.nt r2,0x0,122 ;0x00027c7e
     │││    0x00027c08      c970           .short 0x70c9
     │││    0x00027c0a      260ecffd       bl -16860 ;0x00023a2c
     │││    0x00027c0e      33e8           breq_s r0,0x0,102 ;0x00027c72
     │││    0x00027c10      40260014       add r0,r14,0x0x10
     │││    0x00027c14      2209afff       bl.d -3808 ;0x00026d34
     │││    0x00027c18      09c1           ld_s r1,[sp,0x0x24]
     │││    0x00027c1a      f20eeffd       bl.d -16656 ;0x00023b08
     │││    0x00027c1e      c970           .short 0x70c9
     │││    0x00027c20      620d0000       bl 1376 ;0x00028180
     │││    0x00027c24      c2e8           brne_s r0,0x0,-124 ;0x00027ba8
     │││    0x00027c26      ab26487000..   sr 0x0x3,[aux_irq_hint]
     │││    0x00027c2e      e078           nop_s
     │││    0x00027c30      e078           nop_s
     │││    0x00027c32      e078           nop_s
     │││    0x00027c34      e078           nop_s
     │││    0x00027c36      baf1           b_s -140 ;0x00027ba8
     │││    0x00027c38      c970           .short 0x70c9
     │││    0x00027c3a      0a71           .short 0x710a
     │││    0x00027c3c      e60beffd       bl.d -17436 ;0x00023820
     │││    0x00027c40      e972           .short 0x72e9
     │││    0x00027c42      4986           ld_s r2,[r14,0x0x24]
     │││    0x00027c44      0fea           breq_s r2,0x0,30 ;0x00027c62
     │││    0x00027c46      c60c2000       bl.d 1220 ;0x00028108
     │││    0x00027c4a      40260019       add r0,r14,0x0x24
     │││    0x00027c4e      17085100       brne.nt r0,0x0x1,22 ;0x00027c62
     │││    0x00027c52      ab26487000..   sr 0x0x3,[aux_irq_hint]
     │││    0x00027c5a      e078           nop_s
     │││    0x00027c5c      e078           nop_s
     │││    0x00027c5e      e078           nop_s
     │││    0x00027c60      e078           nop_s
     │││    0x00027c62      5a0d0fff       bl -6824 ;0x000261b8
     │││    0x00027c66      25002000       b.d 36 ;0x00027c88
     │││    0x00027c6a      01d8           mov_s r0,0x0x1
     │││    0x00027c6c      4e0d0fff       bl -6836 ;0x000261b8
     │││    0x00027c70      0bf0           b_s 22 ;0x00027c86
     │││    0x00027c72      9a0eeffd       bl.d -16744 ;0x00023b08
     │││    0x00027c76      c970           .short 0x70c9
     │││    0x00027c78      0a0d0000       bl 1288 ;0x00028180
     │││    0x00027c7c      96f1           b_s -212 ;0x00027ba8
     │││    0x00027c7e      8e0ecffd       bl -16756 ;0x00023b08
     │││    0x00027c82      020d0000       bl 1280 ;0x00028180
     │││    0x00027c86      00d8           mov_s r0,0x0
     │││    0x00027c88      0a27c034       mov blink,r19
     │││    0x00027c8c      a2c0           add_s sp,sp,0x0x8
     │││    0x00027c8e      04141334       ld.ab r19,[sp,4]
     │││    0x00027c92      04141234       ld.ab r18,[sp,4]
     │││    0x00027c96      04141134       ld.ab r17,[sp,4]
     │││    0x00027c9a      04141034       ld.ab r16,[sp,4]
     │││    0x00027c9e      c1c7           pop_s r15
     │││    0x00027ca0      c1c6           pop_s r14
     │││    0x00027ca2      c1c5           pop_s r13
     │││    0x00027ca4      e07f           j_s.d [blink]
     │││    0x00027ca6      a1c0           add_s sp,sp,0x0x4
     │││    0x00027ca8      e1c5           push_s r13
     │││    0x00027caa      e1c6           push_s r14
     │││    0x00027cac      e1c7           push_s r15
     │││    0x00027cae      0875           .short 0x7508
     │││    0x00027cb0      4876           .short 0x7648
     │││    0x00027cb2      6872           .short 0x7268
     │││    0x00027cb4      38150410       ld r4,[r13,56]
     │││    0x00027cb8      6f85           ld_s r3,[r13,0x0x3c]
     │││    0x00027cba      eb77           .short 0x77eb
     │││    0x00027cbc      0b0ce400       brlo.d.nt r4,r3,10 ;0x00027cc6
     │││    0x00027cc0      00d8           mov_s r0,0x0
     │││    0x00027cc2      350a9100       brne.nt r2,0x0x2,52 ;0x00027cf4
     │││    0x00027cc6      5e0beffd       bl.d -17572 ;0x00023820
     │││    0x00027cca      a970           .short 0x70a9
     │││    0x00027ccc      3285           ld_s r1,[r13,0x0x48]
     │││    0x00027cce      8c21ff8f       cmp r1,-1
     │││    0x00027cd2      0ef4           bne_s 28 ;0x00027cec
     │││    0x00027cd4      4985           ld_s r2,[r13,0x0x24]
     │││    0x00027cd6      0fea           breq_s r2,0x0,30 ;0x00027cf2
     │││    0x00027cd8      320c2000       bl.d 1072 ;0x00028108
     │││    0x00027cdc      40250019       add r0,r13,0x0x24
     │││    0x00027ce0      09e8           breq_s r0,0x0,18 ;0x00027cf2
     │││    0x00027ce2      09ee           breq_s r14,0x0,18 ;0x00027cf2
     │││    0x00027ce4      01db           mov_s r3,0x0x1
     │││    0x00027ce6      0f002000       b.d 14 ;0x00027cf2
     │││    0x00027cea      60a6           st_s r3,[r14,0x0]
     │││    0x00027cec      5285           ld_s r2,[r13,0x0x48]
     │││    0x00027cee      01e2           add_s r2,r2,0x0x1
     │││    0x00027cf0      52a5           st_s r2,[r13,0x0x48]
     │││    0x00027cf2      01d8           mov_s r0,0x0x1
     │││    0x00027cf4      fb77           .short 0x77fb
     │││    0x00027cf6      c1c7           pop_s r15
     │││    0x00027cf8      c1c6           pop_s r14
     │││    0x00027cfa      e07f           j_s.d [blink]
     │││    0x00027cfc      c1c5           pop_s r13
     │││    0x00027cfe      e078           nop_s
     │││    0x00027d00      2e80           ld_s r1,[r0,0x0x38]
     │││    0x00027d02      85e9           brne_s r1,0x0,10 ;0x00027d0a
     │││    0x00027d04      09002000       b.d 8 ;0x00027d0c
     │││    0x00027d08      01d8           mov_s r0,0x0x1
     │││    0x00027d0a      00d8           mov_s r0,0x0
     │││    0x00027d0c      e07e           j_s [blink]
     │││    0x00027d0e      e078           nop_s
     │││    0x00027d10      4e80           ld_s r2,[r0,0x0x38]
     │││    0x00027d12      2f80           ld_s r1,[r0,0x0x3c]
     │││    0x00027d14      0b0a4100       brne.nt r2,r1,10 ;0x00027d1e
     │││    0x00027d18      09002000       b.d 8 ;0x00027d20
     │││    0x00027d1c      01d8           mov_s r0,0x0x1
     │││    0x00027d1e      00d8           mov_s r0,0x0
     │││    0x00027d20      e07e           j_s [blink]
     │││    0x00027d22      e078           nop_s
     │││    0x00027d24      e1c5           push_s r13
     │││    0x00027d26      e1c6           push_s r14
     │││    0x00027d28      e1c7           push_s r15
     │││    0x00027d2a      0875           .short 0x7508
     │││    0x00027d2c      4e85           ld_s r2,[r13,0x0x38]
     │││    0x00027d2e      eb77           .short 0x77eb
     │││    0x00027d30      130a3000       breq.d.nt r2,0x0,18 ;0x00027d42
     │││    0x00027d34      00d8           mov_s r0,0x0
     │││    0x00027d36      c385           ld_s r14,[r13,0x0xc]
     │││    0x00027d38      ba0aeffd       bl.d -17736 ;0x000237f0
     │││    0x00027d3c      a970           .short 0x70a9
     │││    0x00027d3e      c3a5           st_s r14,[r13,0x0xc]
     │││    0x00027d40      01d8           mov_s r0,0x0x1
     │││    0x00027d42      fb77           .short 0x77fb
     │││    0x00027d44      c1c7           pop_s r15
     │││    0x00027d46      c1c6           pop_s r14
     │││    0x00027d48      e07f           j_s.d [blink]
     │││    0x00027d4a      c1c5           pop_s r13
     │││    0x00027d4c      e1c5           push_s r13
     │││    0x00027d4e      e1c6           push_s r14
     │││    0x00027d50      e1c7           push_s r15
     │││    0x00027d52      0875           .short 0x7508
     │││    0x00027d54      4876           .short 0x7648
     │││    0x00027d56      4e85           ld_s r2,[r13,0x0x38]
     │││    0x00027d58      eb77           .short 0x77eb
     │││    0x00027d5a      3d0a3000       breq.d.nt r2,0x0,60 ;0x00027d94
     │││    0x00027d5e      00d8           mov_s r0,0x0
     │││    0x00027d60      920aeffd       bl.d -17776 ;0x000237f0
     │││    0x00027d64      a970           .short 0x70a9
     │││    0x00027d66      6e85           ld_s r3,[r13,0x0x38]
     │││    0x00027d68      61bb           sub_s r3,r3,0x0x1
     │││    0x00027d6a      6ea5           st_s r3,[r13,0x0x38]
     │││    0x00027d6c      7185           ld_s r3,[r13,0x0x44]
     │││    0x00027d6e      8c23ff8f       cmp r3,-1
     │││    0x00027d72      0ef4           bne_s 28 ;0x00027d8c
     │││    0x00027d74      4485           ld_s r2,[r13,0x0x10]
     │││    0x00027d76      0fea           breq_s r2,0x0,30 ;0x00027d92
     │││    0x00027d78      920b2000       bl.d 912 ;0x00028108
     │││    0x00027d7c      40250014       add r0,r13,0x0x10
     │││    0x00027d80      09e8           breq_s r0,0x0,18 ;0x00027d92
     │││    0x00027d82      09ee           breq_s r14,0x0,18 ;0x00027d92
     │││    0x00027d84      01d9           mov_s r1,0x0x1
     │││    0x00027d86      0f002000       b.d 14 ;0x00027d92
     │││    0x00027d8a      20a6           st_s r1,[r14,0x0]
     │││    0x00027d8c      5185           ld_s r2,[r13,0x0x44]
     │││    0x00027d8e      01e2           add_s r2,r2,0x0x1
     │││    0x00027d90      51a5           st_s r2,[r13,0x0x44]
     │││    0x00027d92      01d8           mov_s r0,0x0x1
     │││    0x00027d94      fb77           .short 0x77fb
     │││    0x00027d96      c1c7           pop_s r15
     │││    0x00027d98      c1c6           pop_s r14
     │││    0x00027d9a      e07f           j_s.d [blink]
     │││    0x00027d9c      c1c5           pop_s r13
     │││    0x00027d9e      e078           nop_s
     │││    0x00027da0      e1c5           push_s r13
     │││    0x00027da2      e1c6           push_s r14
     │││    0x00027da4      e1c7           push_s r15
     │││    0x00027da6      eb77           .short 0x77eb
     │││    0x00027da8      0875           .short 0x7508
     │││    0x00027daa      fe0b2fff       bl.d -7172 ;0x000261a4
     │││    0x00027dae      2876           .short 0x7628
     │││    0x00027db0      cf72           mov_s 0x0,2
     │││    0x00027db2      80008809       bnv 77952 ;0x0003ae30
     │││    0x00027db6      2482           ld_s r1,[r2,0x0x10]
     │││    0x00027db8      0086           ld_s r0,[r14,0x0]
     │││    0x00027dba      8c20ff8f       cmp r0,-1
     │││    0x00027dbe      05f4           bne_s 10 ;0x00027dc6
     │││    0x00027dc0      2b002000       b.d 42 ;0x00027dea
     │││    0x00027dc4      00dd           mov_s r13,0x0
     │││    0x00027dc6      28120400       ld r4,[r2,40]
     │││    0x00027dca      4085           ld_s r2,[r13,0x0]
     │││    0x00027dcc      0b0a2001       breq.d.nt r2,r4,10 ;0x00027dd6
     │││    0x00027dd0      6185           ld_s r3,[r13,0x0x4]
     │││    0x00027dd2      1909c500       brhs.nt r1,r3,24 ;0x00027de8
     │││    0x00027dd6      6279           sub_s r1,r1,r3
     │││    0x00027dd8      11090500       brhs.nt r1,r0,16 ;0x00027de8
     │││    0x00027ddc      2278           sub_s r0,r0,r1
     │││    0x00027dde      00a6           st_s r0,[r14,0x0]
     │││    0x00027de0      b209afff       bl.d -3664 ;0x00026f90
     │││    0x00027de4      a970           .short 0x70a9
     │││    0x00027de6      eef1           b_s -36 ;0x00027dc0
     │││    0x00027de8      01dd           mov_s r13,0x0x1
     │││    0x00027dea      d20b0fff       bl -7216 ;0x000261b8
     │││    0x00027dee      a970           .short 0x70a9
     │││    0x00027df0      fb77           .short 0x77fb
     │││    0x00027df2      c1c7           pop_s r15
     │││    0x00027df4      c1c6           pop_s r14
     │││    0x00027df6      e07f           j_s.d [blink]
     │││    0x00027df8      c1c5           pop_s r13
     │││    0x00027dfa      e078           nop_s
     │││    0x00027dfc      e1c5           push_s r13
     │││    0x00027dfe      e1c6           push_s r14
     │││    0x00027e00      e1c7           push_s r15
     │││    0x00027e02      fc1c08b4       st.aw r16,[sp,-4]
     │││    0x00027e06      fc1c48b4       st.aw r17,[sp,-4]
     │││    0x00027e0a      fc1c88b4       st.aw r18,[sp,-4]
     │││    0x00027e0e      fc1cc8b4       st.aw r19,[sp,-4]
     │││    0x00027e12      fc1c08b5       st.aw r20,[sp,-4]
     │││    0x00027e16      fc1c48b5       st.aw r21,[sp,-4]
     │││    0x00027e1a      fc1c88b5       st.aw r22,[sp,-4]
     │││    0x00027e1e      0a26c027       mov r22,blink
     │││    0x00027e22      9a70           .short 0x709a
     │││    0x00027e24      7a71           .short 0x717a
     │││    0x00027e26      1a72           .short 0x721a
     │││    0x00027e28      5a73           .short 0x735a
     │││    0x00027e2a      8876           .short 0x7688
     │││    0x00027e2c      a877           .short 0x77a8
     │││    0x00027e2e      0a21c021       mov r17,r7
     │││    0x00027e32      4870           .short 0x7048
     │││    0x00027e34      de08effd       bl.d -18212 ;0x00023710
     │││    0x00027e38      c871           .short 0x71c8
     │││    0x00027e3a      0875           .short 0x7508
     │││    0x00027e3c      990d1010       breq.nt r13,0x0,152 ;0x00027ed4
    ┌───┌─< 0x00027e40      40288220       asl r2,r16,0x0x2
    ││││└─> 0x00027e44      30151510       ld r21,[r13,48]
    ││││    0x00027e48      64ba           sub_s r2,r2,0x0x4
    ││││    0x00027e4a      00259520       add r21,r21,r2
    ││││    0x00027e4e      4625d520       bic r21,r21,0x0x3
    ││││    0x00027e52      6a71           .short 0x716a
    ││││    0x00027e54      c972           .short 0x72c9
    ││││    0x00027e56      2a73           .short 0x732a
    ││││    0x00027e58      e20aeffd       bl.d -17696 ;0x00023938
    ││││    0x00027e5c      0a240004       mov r4,r16
    ││││    0x00027e60      aa70           .short 0x70aa
    ││││    0x00027e62      8a71           .short 0x718a
    ││││    0x00027e64      220eeffd       bl.d -16864 ;0x00023c84
    ││││    0x00027e68      4a72           .short 0x724a
    ││││    0x00027e6a      0b0f3010       breq.d.nt r15,0x0,10 ;0x00027e72
    ││││    0x00027e6e      00a5           st_s r0,[r13,0x0]
    ││││    0x00027e70      a0a7           st_s r13,[r15,0x0]
    ││││    0x00027e72      360b0fff       bl -7372 ;0x000261a4
    ││││    0x00027e76      cf77           mov_s 0x0,-1
    ││││    0x00027e78      80008809       bnv 77952 ;0x0003aef8
    ││││    0x00027e7c      6387           ld_s r3,[r15,0x0xc]
    ││││    0x00027e7e      01e3           add_s r3,r3,0x0x1
    ││││    0x00027e80      63a7           st_s r3,[r15,0x0xc]
    ││││    0x00027e82      f91201b6       ld.as r1,[gp,-7]
    ││││    0x00027e86      8ae9           brne_s r1,0x0,20 ;0x00027e98
    ││││    0x00027e88      f91a58b3       st.as r13,[gp,-7]
    ││││    0x00027e8c      0387           ld_s r0,[r15,0x0xc]
    ││││    0x00027e8e      1f085100       brne.nt r0,0x0x1,30 ;0x00027eaa
    ││││    0x00027e92      060bcffd       bl -17660 ;0x00023994
    ││││    0x00027e96      0bf0           b_s 22 ;0x00027eaa
    ││││    0x00027e98      6687           ld_s r3,[r15,0x0x18]
    ││││    0x00027e9a      89eb           brne_s r3,0x0,18 ;0x00027eaa
    ││││    0x00027e9c      f91202b6       ld.as r2,[gp,-7]
    ││││    0x00027ea0      2b82           ld_s r1,[r2,0x0x2c]
    ││││    0x00027ea2      0b0e4410       brlo.nt r14,r1,10 ;0x00027eaa
    ││││    0x00027ea6      f91a58b3       st.as r13,[gp,-7]
    ││││    0x00027eaa      4b87           ld_s r2,[r15,0x0x2c]
    ││││    0x00027eac      2b85           ld_s r1,[r13,0x0x2c]
    ││││    0x00027eae      01e2           add_s r2,r2,0x0x1
    ││││    0x00027eb0      4ba7           st_s r2,[r15,0x0x2c]
    ││││    0x00027eb2      4587           ld_s r2,[r15,0x0x14]
    ││││    0x00027eb4      070a4500       brhs.nt r2,r1,6 ;0x00027eba
    ││││    0x00027eb8      25a7           st_s r1,[r15,0x0x14]
    ││││    0x00027eba      02b9           asl_s r1,r1,0x0x2
    ││││    0x00027ebc      3579           add2_s r1,r1,r1
    ││││    0x00027ebe      0021800f80..   add r0,r1,0x0x80152c
    ││││    0x00027ec6      0a0a2fff       bl.d -7672 ;0x000260cc
    ││││    0x00027eca      246d           add_s r1,r13,0x0x4
    ││││    0x00027ecc      ee0a2fff       bl.d -7444 ;0x000261b8
    ││││    0x00027ed0      01dd           mov_s r13,0x0x1
    ││││    0x00027ed2      04f0           b_s 8 ;0x00027ed8
    ││││    0x00027ed4      8a25ff1f       mov r13,-1
    ││││    0x00027ed8      290d5110       brne.nt r13,0x0x1,40 ;0x00027f00
    ││││    0x00027edc      cf77           mov_s 0x0,-1
    ││││    0x00027ede      80008809       bnv 77952 ;0x0003af5c
    ││││    0x00027ee2      6687           ld_s r3,[r15,0x0x18]
    ││││    0x00027ee4      0eeb           breq_s r3,0x0,28 ;0x00027f00
    ││││    0x00027ee6      f91203b6       ld.as r3,[gp,-7]
    ││││    0x00027eea      0b83           ld_s r0,[r3,0x0x2c]
    ││││    0x00027eec      15088503       brhs.nt r0,r14,20 ;0x00027f00
    ││││    0x00027ef0      ab26487000..   sr 0x0x3,[aux_irq_hint]
    ││││    0x00027ef8      e078           nop_s
    ││││    0x00027efa      e078           nop_s
    ││││    0x00027efc      e078           nop_s
    ││││    0x00027efe      e078           nop_s
   ┌────┌─< 0x00027f00      a970           .short 0x70a9
   ││││││   0x00027f02      0a278035       mov blink,r22
   │││││    0x00027f06      04141634       ld.ab r22,[sp,4]
   │││││    0x00027f0a      04141534       ld.ab r21,[sp,4]
   │││││    0x00027f0e      04141434       ld.ab r20,[sp,4]
   │││││    0x00027f12      04141334       ld.ab r19,[sp,4]
   │││││    0x00027f16      04141234       ld.ab r18,[sp,4]
   │││││    0x00027f1a      04141134       ld.ab r17,[sp,4]
   │││││    0x00027f1e      04141034       ld.ab r16,[sp,4]
   │││││    0x00027f22      c1c7           pop_s r15
   │││││    0x00027f24      c1c6           pop_s r14
   │││││    0x00027f26      e07f           j_s.d [blink]
   │││││    0x00027f28      c1c5           pop_s r13
   │││││    0x00027f2a      e078           nop_s
   │││││    0x00027f2c      f9c9           ld_s r0,[gp,-28]
   │││││    0x00027f2e      e07e           j_s [blink]
   │││││    0x00027f30      e1c5           push_s r13
   │││││    0x00027f32      e1c6           push_s r14
   │││││    0x00027f34      eb76           .short 0x76eb
   │││││    0x00027f36      720a0fff       bl -7568 ;0x000261a4
   │││││    0x00027f3a      cf70           mov_s 0x0,0
   │││││    0x00027f3c      80008809       bnv 77952 ;0x0003afbc
   │││││    0x00027f40      a480           ld_s r13,[r0,0x0x10]
   │││││    0x00027f42      7a0a0fff       bl -7560 ;0x000261b8
   │││││    0x00027f46      a970           .short 0x70a9
   │││││    0x00027f48      fb76           .short 0x76fb
   │││││    0x00027f4a      c1c6           pop_s r14
   │││││    0x00027f4c      e07f           j_s.d [blink]
   │││││    0x00027f4e      c1c5           pop_s r13
   │││││    0x00027f50      cf70           mov_s 0x0,0
   │││││    0x00027f52      80008809       bnv 77952 ;0x0003afd0
   │││││    0x00027f56      0480           ld_s r0,[r0,0x0x10]
   │││││    0x00027f58      e07e           j_s [blink]
   │││││    0x00027f5a      e078           nop_s
   │││││    0x00027f5c      e1c5           push_s r13
   │││││    0x00027f5e      e1c6           push_s r14
   │││││    0x00027f60      e1c7           push_s r15
   │││││    0x00027f62      fc1c08b4       st.aw r16,[sp,-4]
   │││││    0x00027f66      fc1c48b4       st.aw r17,[sp,-4]
   │││││    0x00027f6a      fc1c88b4       st.aw r18,[sp,-4]
   │││││    0x00027f6e      fc1cc8b4       st.aw r19,[sp,-4]
   │││││    0x00027f72      fc1c08b5       st.aw r20,[sp,-4]
   │││││    0x00027f76      0a23802f80..   mov r19,0x0x800988
   │││││    0x00027f7e      1c130320       ld r3,[r19,28]
  │││││││   0x00027f82      0a24c027       mov r20,blink
  ││││││    0x00027f86      80e3           cmp_s r3,0x0
  ││││││    0x00027f88      0e012200       bne.d 270 ;0x00028096
  ││││││    0x00027f8c      4a210020       mov r17,0x0
  ││││││    0x00027f90      10130120       ld r1,[r19,16]
  ││││││    0x00027f94      01e1           add_s r1,r1,0x0x1
  ││││││    0x00027f96      101b4020       st r1,[r19,16]
  ││││││    0x00027f9a      10130e20       ld r14,[r19,16]
  ││││││    0x00027f9e      a1ee           brne_s r14,0x0,66 ;0x00027fde
  ││││││    0x00027fa0      00130320       ld r3,[r19]
  ││││││    0x00027fa4      04130220       ld r2,[r19,4]
  ││││││    0x00027fa8      001b8020       st r2,[r19]
  ││││││    0x00027fac      041bc020       st r3,[r19,4]
  ││││││    0x00027fb0      28130220       ld r2,[r19,40]
  ││││││    0x00027fb4      01e2           add_s r2,r2,0x0x1
  ││││││    0x00027fb6      281b8020       st r2,[r19,40]
  ││││││    0x00027fba      00130120       ld r1,[r19]
  ││││││    0x00027fbe      0081           ld_s r0,[r1,0x0]
  ──────┌─< 0x00027fc0      86e8           brne_s r0,0x0,12 ;0x00027fcc
  │││││││   0x00027fc2      8a23ff0f       mov r3,-1
  ││││││    0x00027fc6      301bc020       st r3,[r19,48]
  ││││││    0x00027fca      0bf0           b_s 22 ;0x00027fde
  ││││││    0x00027fcc      00130220       ld r2,[r19]
  ││││││    0x00027fd0      2382           ld_s r1,[r2,0x0xc]
  ││││││    0x00027fd2      0c111000       ld r16,[r1,12]
  ││││││    0x00027fd6      04100020       ld r0,[r16,4]
  ││││││    0x00027fda      301b0020       st r0,[r19,48]
  ││││││    0x00027fde      30130120       ld r1,[r19,48]
  ││││││    0x00027fe2      cf75           mov_s 0x0,5
  ││││││    0x00027fe4      80002c15       ble.d 172160 ;0x00052064
  ││││││    0x00027fe8      7b0e4410       brlo.nt r14,r1,122 ;0x00028062
  ││││││    0x00027fec      00130120       ld r1,[r19]
  ││││││    0x00027ff0      0081           ld_s r0,[r1,0x0]
  ││││││    0x00027ff2      32e8           breq_s r0,0x0,100 ;0x00028054
  ││││││    0x00027ff4      00130320       ld r3,[r19]
  ││││││    0x00027ff8      2383           ld_s r1,[r3,0x0xc]
  ││││││    0x00027ffa      0c111000       ld r16,[r1,12]
  ││││││    0x00027ffe      04100020       ld r0,[r16,4]
  ││││││    0x00028002      5f0e0410       brlo.nt r14,r0,94 ;0x0002805e
  ││││││    0x00028006      40201221       add r18,r16,0x0x4
  ││││││    0x0002800a      5e09effe       bl.d -9892 ;0x00025964
  ││││││    0x0002800e      4a70           .short 0x704a
  ││││││    0x00028010      28100220       ld r2,[r16,40]
  ││││││    0x00028014      0f0a3000       breq.d.nt r2,0x0,14 ;0x00028022
  ││││││    0x00028018      a977           .short 0x77a9
  ││││││    0x0002801a      4e09effe       bl.d -9908 ;0x00025964
  ││││││    0x0002801e      40200026       add r0,r16,0x0x18
  ││││││    0x00028022      2c100020       ld r0,[r16,44]
  ││││││    0x00028026      14130220       ld r2,[r19,20]
  ││││││    0x0002802a      0b0a0500       brhs.nt r2,r0,10 ;0x00028032
  ││││││    0x0002802e      141b0020       st r0,[r19,20]
  ││││││    0x00028032      02b8           asl_s r0,r0,0x0x2
  ││││││    0x00028034      1578           add2_s r0,r0,r0
  ││││││    0x00028036      f860           add_s r0,r0,r15
  ││││││    0x00028038      96082fff       bl.d -8044 ;0x000260cc
  ││││││    0x0002803c      4a71           .short 0x714a
  ││││││    0x0002803e      f91203b6       ld.as r3,[gp,-7]
  ││││││    0x00028042      2c100020       ld r0,[r16,44]
  ││││││    0x00028046      2b83           ld_s r1,[r3,0x0x2c]
  ││││││    0x00028048      a5084480       brlo.nt r0,r1,-92 ;0x00027fec
  ││││││    0x0002804c      a107efff       b.d -96 ;0x00027fec
  ││││││    0x00028050      4a214020       mov r17,0x0x1
  ││││││    0x00028054      8a23ff0f       mov r3,-1
  ││││││    0x00028058      301bc020       st r3,[r19,48]
  ││││││    0x0002805c      03f0           b_s 6 ;0x00028062
  ││││││    0x0002805e      301b0020       st r0,[r19,48]
  ││││││    0x00028062      f91202b6       ld.as r2,[gp,-7]
  ││││││    0x00028066      0b82           ld_s r0,[r2,0x0x2c]
  ││││││    0x00028068      02b8           asl_s r0,r0,0x0x2
  ││││││    0x0002806a      1578           add2_s r0,r0,r0
  ││││││    0x0002806c      1d65           add_s r13,r13,r0
  ││││││    0x0002806e      6085           ld_s r3,[r13,0x0]
  ││││││    0x00028070      530b9400       brlo.nt r3,0x0x2,82 ;0x000280c2
  ││││││    0x00028074      01d8           mov_s r0,0x0x1
  ││││││    0x00028076      0a270035       mov blink,r20
  ││││││    0x0002807a      04141434       ld.ab r20,[sp,4]
  ││││││    0x0002807e      04141334       ld.ab r19,[sp,4]
  ││││││    0x00028082      04141234       ld.ab r18,[sp,4]
  ││││││    0x00028086      04141134       ld.ab r17,[sp,4]
  ││││││    0x0002808a      04141034       ld.ab r16,[sp,4]
  ││││││    0x0002808e      c1c7           pop_s r15
  ││││││    0x00028090      c1c6           pop_s r14
  ││││││    0x00028092      e07f           j_s.d [blink]
  ││││││    0x00028094      c1c5           pop_s r13
  ││││││    0x00028096      20130320       ld r3,[r19,32]
  ││││││    0x0002809a      2a70           .short 0x702a
  ││││││    0x0002809c      01e3           add_s r3,r3,0x0x1
  ││││││    0x0002809e      201bc020       st r3,[r19,32]
  ││││││    0x000280a2      0a270035       mov blink,r20
  ││││││    0x000280a6      04141434       ld.ab r20,[sp,4]
  ││││││    0x000280aa      04141334       ld.ab r19,[sp,4]
  ││││││    0x000280ae      04141234       ld.ab r18,[sp,4]
  ││││││    0x000280b2      04141134       ld.ab r17,[sp,4]
  ││││││    0x000280b6      04141034       ld.ab r16,[sp,4]
  ││││││    0x000280ba      c1c7           pop_s r15
  ││││││    0x000280bc      c1c6           pop_s r14
  ││││││    0x000280be      e07f           j_s.d [blink]
  ││││││    0x000280c0      c1c5           pop_s r13
  ││││││    0x000280c2      2a70           .short 0x702a
  ││││││    0x000280c4      0a270035       mov blink,r20
  ││││││    0x000280c8      04141434       ld.ab r20,[sp,4]
  ││││││    0x000280cc      04141334       ld.ab r19,[sp,4]
  ││││││    0x000280d0      04141234       ld.ab r18,[sp,4]
  ││││││    0x000280d4      04141134       ld.ab r17,[sp,4]
  ││││││    0x000280d8      04141034       ld.ab r16,[sp,4]
  ││││││    0x000280dc      c1c7           pop_s r15
  ││││││    0x000280de      c1c6           pop_s r14
  ││││││    0x000280e0      e07f           j_s.d [blink]
  ││││││    0x000280e2      c1c5           pop_s r13
  ││││││    0x000280e4      14100400       ld r4,[r0,20]
  ││││││    0x000280e8      cf73           mov_s 0x0,3
  ││││││    0x000280ea      80002c15       ble.d 172160 ;0x00052168
  ││││││    0x000280ee      56230205       add3 r2,r3,0x0x14
  ││││││    0x000280f2      150a2101       brne.d.nt r2,r4,20 ;0x00028104
  ││││││    0x000280f6      00d9           mov_s r1,0x0
  ││││││    0x000280f8      0a80           ld_s r0,[r0,0x0x28]
  ││││││    0x000280fa      78e3           add_s r3,r3,0x0x78
  ││││││    0x000280fc      0908c000       breq.nt r0,r3,8 ;0x00028104
  ││││││    0x00028100      82e8           brne_s r0,0x0,4 ;0x00028104
  ││││││    0x00028102      01d9           mov_s r1,0x0x1
  ││││││    0x00028104      e07f           j_s.d [blink]
  ││││││    0x00028106      2870           .short 0x7028
  ││││││    0x00028108      e1c5           push_s r13
  ││││││    0x0002810a      e1c6           push_s r14
  ││││││    0x0002810c      e1c7           push_s r15
  ││││││    0x0002810e      fc1c08b4       st.aw r16,[sp,-4]
  ││││││    0x00028112      2380           ld_s r1,[r0,0x0xc]
  ││││││    0x00028114      0a20c027       mov r16,blink
  ││││││    0x00028118      a381           ld_s r13,[r1,0x0xc]
  ││││││    0x0002811a      cf76           mov_s 0x0,6
  ││││││    0x0002811c      80008809       bnv 77952 ;0x0003b19c
  ││││││    0x00028120      40250f16       add r15,r13,0x0x18
  ││││││    0x00028124      4208effe       bl.d -10176 ;0x00025964
  ││││││    0x00028128      e970           .short 0x70e9
  ││││││    0x0002812a      0786           ld_s r0,[r14,0x0x1c]
  ││││││    0x0002812c      91e8           brne_s r0,0x0,34 ;0x0002814e
  ││││││    0x0002812e      e46d           add_s r15,r13,0x0x4
  ││││││    0x00028130      3608effe       bl.d -10188 ;0x00025964
  ││││││    0x00028134      e970           .short 0x70e9
  ││││││    0x00028136      2b85           ld_s r1,[r13,0x0x2c]
  ││││││    0x00028138      6586           ld_s r3,[r14,0x0x14]
  ││││││    0x0002813a      090b4500       brhs.nt r3,r1,8 ;0x00028140
  ││││││    0x0002813e      25a6           st_s r1,[r14,0x0x14]
  ││││││    0x00028140      02b9           asl_s r1,r1,0x0x2
  ││││││    0x00028142      3579           add2_s r1,r1,r1
  ││││││    0x00028144      0021800f80..   add r0,r1,0x0x80152c
  ││││││    0x0002814c      04f0           b_s 8 ;0x00028154
  ││││││    0x0002814e      cf70           mov_s 0x0,0
  ││││││    0x00028150      8000a415       bn.d 176256 ;0x000531d0
  ││││││    0x00028154      7a0feffe       bl.d -8328 ;0x000260cc
  ││││││    0x00028158      e971           .short 0x71e9
  ││││││    0x0002815a      f91202b6       ld.as r2,[gp,-7]
  ││││││    0x0002815e      2b85           ld_s r1,[r13,0x0x2c]
  ││││││    0x00028160      6b82           ld_s r3,[r2,0x0x2c]
  ││││││    0x00028162      0d09c400       brlo.nt r1,r3,12 ;0x0002816c
  ││││││    0x00028166      0b002000       b.d 10 ;0x0002816e
  ││││││    0x0002816a      01d8           mov_s r0,0x0x1
  ││││││    0x0002816c      00d8           mov_s r0,0x0
  ││││││    0x0002816e      0a270034       mov blink,r16
  ││││││    0x00028172      04141034       ld.ab r16,[sp,4]
  ││││││    0x00028176      c1c7           pop_s r15
  ││││││    0x00028178      c1c6           pop_s r14
  ││││││    0x0002817a      e07f           j_s.d [blink]
  ││││││    0x0002817c      c1c5           pop_s r13
  ││││││    0x0002817e      e078           nop_s
  ││││││    0x00028180      e1c5           push_s r13
  ││││││    0x00028182      e1c6           push_s r14
  ││││││    0x00028184      e1c7           push_s r15
  ││││││    0x00028186      fc1c08b4       st.aw r16,[sp,-4]
  ││││││    0x0002818a      fc1c48b4       st.aw r17,[sp,-4]
  ││││││    0x0002818e      fc1c88b4       st.aw r18,[sp,-4]
  ││││││    0x00028192      fc1cc8b4       st.aw r19,[sp,-4]
  ││││││    0x00028196      fc1c08b5       st.aw r20,[sp,-4]
  ││││││    0x0002819a      0a24c027       mov r20,blink
  ││││││    0x0002819e      4a200020       mov r16,0x0
  ││││││    0x000281a2      06082fff       bl.d -8188 ;0x000261a4
  ││││││    0x000281a6      0a75           .short 0x750a
  ││││││    0x000281a8      cf77           mov_s 0x0,-1
  ││││││    0x000281aa      80008809       bnv 77952 ;0x0003b228
  ││││││    0x000281ae      0787           ld_s r0,[r15,0x0x1c]
  ││││││    0x000281b0      61b8           sub_s r0,r0,0x0x1
  ││││││    0x000281b2      07a7           st_s r0,[r15,0x0x1c]
  ││││││    0x000281b4      2787           ld_s r1,[r15,0x0x1c]
  ││││││    0x000281b6      9d091100       brne.nt r1,0x0,156 ;0x00028250
  ││││││    0x000281ba      0387           ld_s r0,[r15,0x0xc]
  ││││││    0x000281bc      95081000       breq.nt r0,0x0,148 ;0x00028250
  ──────┌─< 0x000281c0      0a22802f80..   mov r18,0x0x80152c
  ││││││    0x000281c8      78120320       ld r3,[r18,120]
  ││││││    0x000281cc      24eb           breq_s r3,0x0,72 ;0x00028214
  ││││││    0x000281ce      0a238024       mov r19,r18
  ││││││    0x000281d2      84120220       ld r2,[r18,132]
  ││││││    0x000281d6      c382           ld_s r14,[r2,0x0xc]
  ││││││    0x000281d8      8e0faffe       bl.d -10356 ;0x00025964
  ││││││    0x000281dc      40260016       add r0,r14,0x0x18
  ││││││    0x000281e0      40261111       add r17,r14,0x0x4
  ││││││    0x000281e4      820faffe       bl.d -10368 ;0x00025964
  ││││││    0x000281e8      2a70           .short 0x702a
  ││││││    0x000281ea      0b86           ld_s r0,[r14,0x0x2c]
  ││││││    0x000281ec      2587           ld_s r1,[r15,0x0x14]
  ││││││    0x000281ee      09090500       brhs.nt r1,r0,8 ;0x000281f4
  ││││││    0x000281f2      05a7           st_s r0,[r15,0x0x14]
  ││││││    0x000281f4      02b8           asl_s r0,r0,0x0x2
  ││││││    0x000281f6      1578           add2_s r0,r0,r0
  ││││││    0x000281f8      6270           add_s r0,r0,r19
  ││││││    0x000281fa      d60eeffe       bl.d -8492 ;0x000260cc
  ││││││    0x000281fe      2a71           .short 0x712a
  ││││││    0x00028200      f91203b6       ld.as r3,[gp,-7]
  ││││││    0x00028204      0b86           ld_s r0,[r14,0x0x2c]
  ││││││    0x00028206      6b83           ld_s r3,[r3,0x0x2c]
  ││││││    0x00028208      0708c400       brlo.nt r0,r3,6 ;0x0002820e
  ││││││    0x0002820c      01dd           mov_s r13,0x0x1
  ││││││    0x0002820e      78120320       ld r3,[r18,120]
  ││││││    0x00028212      e1eb           brne_s r3,0x0,-62 ;0x000281d2
  ││││││    0x00028214      4887           ld_s r2,[r15,0x0x20]
  ││││││    0x00028216      0dea           breq_s r2,0x0,26 ;0x0002822e
  ││││││    0x00028218      2887           ld_s r1,[r15,0x0x20]
  ││││││    0x0002821a      0be9           breq_s r1,0x0,22 ;0x0002822e
  ││││││    0x0002821c      420dcfff       bl -704 ;0x00027f5c
  ││││││    0x00028220      02e8           breq_s r0,0x0,4 ;0x00028224
  ││││││    0x00028222      01dd           mov_s r13,0x0x1
  ││││││    0x00028224      2887           ld_s r1,[r15,0x0x20]
  ││││││    0x00028226      61b9           sub_s r1,r1,0x0x1
  ││││││    0x00028228      28a7           st_s r1,[r15,0x0x20]
  ││││││    0x0002822a      0887           ld_s r0,[r15,0x0x20]
  ││││││    0x0002822c      f8e8           brne_s r0,0x0,-16 ;0x0002821c
  ││││││    0x0002822e      0d0d5010       breq.nt r13,0x0x1,12 ;0x00028238
  ││││││    0x00028232      2987           ld_s r1,[r15,0x0x24]
  ││││││    0x00028234      1d095100       brne.nt r1,0x0x1,28 ;0x00028250
  ││││││    0x00028238      4a204020       mov r16,0x0x1
  ││││││    0x0002823c      00da           mov_s r2,0x0
  ││││││    0x0002823e      49a7           st_s r2,[r15,0x0x24]
  ││││││    0x00028240      ab26487000..   sr 0x0x3,[aux_irq_hint]
  ││││││    0x00028248      e078           nop_s
  ││││││    0x0002824a      e078           nop_s
  ││││││    0x0002824c      e078           nop_s
  ││││││    0x0002824e      e078           nop_s
  ││││││    0x00028250      6a0fcffe       bl -8344 ;0x000261b8
  ││││││    0x00028254      0a70           .short 0x700a
  ││││││    0x00028256      0a270035       mov blink,r20
  ││││││    0x0002825a      04141434       ld.ab r20,[sp,4]
  ││││││    0x0002825e      04141334       ld.ab r19,[sp,4]
  ││││││    0x00028262      04141234       ld.ab r18,[sp,4]
  ││││││    0x00028266      04141134       ld.ab r17,[sp,4]
  ││││││    0x0002826a      04141034       ld.ab r16,[sp,4]
  ││││││    0x0002826e      c1c7           pop_s r15
  ││││││    0x00028270      c1c6           pop_s r14
  ││││││    0x00028272      e07f           j_s.d [blink]
  ││││││    0x00028274      c1c5           pop_s r13
  ││││││    0x00028276      e078           nop_s
  ││││││    0x00028278      e1c5           push_s r13
  ││││││    0x0002827a      e1c6           push_s r14
  ││││││    0x0002827c      e1c7           push_s r15
  ││││││    0x0002827e      fc1c08b4       st.aw r16,[sp,-4]
  ││││││    0x00028282      fc1c48b4       st.aw r17,[sp,-4]
  ││││││    0x00028286      0a21c027       mov r17,blink
  ││││││    0x0002828a      0875           .short 0x7508
  ││││││    0x0002828c      5a0eefff       bl.d -424 ;0x000280e4
  ││││││    0x00028290      00de           mov_s r14,0x0
  ││││││    0x00028292      57085100       brne.nt r0,0x0x1,86 ;0x000282e6
  ││││││    0x00028296      cf77           mov_s 0x0,-1
  ││││││    0x00028298      80008809       bnv 77952 ;0x0003b318
  ││││││    0x0002829c      2787           ld_s r1,[r15,0x0x1c]
  ││││││    0x0002829e      9ce9           brne_s r1,0x0,56 ;0x000282d4
  ││││││    0x000282a0      f9c9           ld_s r0,[gp,-28]
  ││││││    0x000282a2      4b85           ld_s r2,[r13,0x0x2c]
  ││││││    0x000282a4      0b80           ld_s r0,[r0,0x0x2c]
  ││││││    0x000282a6      01de           mov_s r14,0x0x1
  ││││││    0x000282a8      1072           cmp_s r2,r0
  ││││││    0x000282aa      c2268513       sub.c r14,r14,r14
  ││││││    0x000282ae      40251011       add r16,r13,0x0x4
  ││││││    0x000282b2      b60eaffe       bl.d -10572 ;0x00025964
  ││││││    0x000282b6      0a70           .short 0x700a
  ││││││    0x000282b8      4b85           ld_s r2,[r13,0x0x2c]
  ││││││    0x000282ba      6587           ld_s r3,[r15,0x0x14]
  ││││││    0x000282bc      070b8500       brhs.nt r3,r2,6 ;0x000282c2
  ││││││    0x000282c0      45a7           st_s r2,[r15,0x0x14]
  ││││││    0x000282c2      02ba           asl_s r2,r2,0x0x2
  ││││││    0x000282c4      557a           add2_s r2,r2,r2
  ││││││    0x000282c6      cf73           mov_s 0x0,3
  ││││││    0x000282c8      80002c15       ble.d 172160 ;0x00052348
  ││││││    0x000282cc      7862           add_s r0,r2,r3
  ││││││    0x000282ce      17002000       b.d 22 ;0x000282e2
  ││││││    0x000282d2      0a71           .short 0x710a
  ││││││    0x000282d4      cf73           mov_s 0x0,3
  ││││││    0x000282d6      80002c15       ble.d 172160 ;0x00052354
  ││││││    0x000282da      5623c003       add3 r0,r3,0x0xf
  ││││││    0x000282de      40250116       add r1,r13,0x0x18
  ││││││    0x000282e2      ee0dcffe       bl -8724 ;0x000260cc
  ││││││    0x000282e6      c970           .short 0x70c9
  ││││││    0x000282e8      0a274034       mov blink,r17
  ││││││    0x000282ec      04141134       ld.ab r17,[sp,4]
  ││││││    0x000282f0      04141034       ld.ab r16,[sp,4]
  ││││││    0x000282f4      c1c7           pop_s r15
  ││││││    0x000282f6      c1c6           pop_s r14
  ││││││    0x000282f8      e07f           j_s.d [blink]
  ││││││    0x000282fa      c1c5           pop_s r13
  ││││││    0x000282fc      0a25800ff0..   mov r5,0x0xf00800
  ││││││    0x00028304      0c150400       ld r4,[r5,12]
  ││││││    0x00028308      2b085200       brlt.nt r0,0x0x1,42 ;0x00028332
  ││││││    0x0002830c      8a21df0a       mov r1,2027
  ││││││    0x00028310      2c78           mpy_s r0,r0,r1
  ││││││    0x00028312      cf72           mov_s 0x0,2
  ││││││    0x00028314      eb51           ldi_s r1,[0x0x73]
  ││││││    0x00028316      1f85           ld_s r0,[r13,0x0x7c]
  ││││││    0x00028318      02214370       sub r3,r57,r1
  ││││││    0x0002831c      6c7a           mpy_s r2,r2,r3
  ││││││    0x0002831e      3fbb           lsr_s r3,r3,0x0x1f
  ││││││    0x00028320      6f72           mov_s fp,2
  ││││││    0x00028322      45ba           asr_s r2,r2,0x0x5
  ││││││    0x00028324      7a62           add_s r2,r2,r3
  ││││││    0x00028326      0c150100       ld r1,[r5,12]
  ││││││    0x0002832a      02210101       sub r1,r1,r4
  ││││││    0x0002832e      fb098480       brlo.nt r1,r2,-6 ;0x00028326
  ││││││    0x00028332      e07e           j_s [blink]
  ││││││    0x00028334      e1c5           push_s r13
  ││││││    0x00028336      e1c6           push_s r14
  ││││││    0x00028338      eb76           .short 0x76eb
  ││││││    0x0002833a      0875           .short 0x7508
  ││││││    0x0002833c      02d8           mov_s r0,0x0x2
  ││││││    0x0002833e      da096ff7       bl.d -71208 ;0x00016d14
  ││││││    0x00028342      00d9           mov_s r1,0x0
  ││││││    0x00028344      0d081104       brne.nt r0,0x0x10,12 ;0x00028350
  ││││││    0x00028348      ea092000       bl.d 488 ;0x00028530
  ││││││    0x0002834c      a970           .short 0x70a9
  ││││││    0x0002834e      0cf0           b_s 24 ;0x00028364
  ││││││    0x00028350      cf71           mov_s 0x0,1
  ││││││    0x00028352      f00000c6       b -474896 ;0xfffffffffffb4440
  ││││││    0x00028356      0a118080       ldb r0,[r1,-246]
  ││││││    0x0002835a      c0bd           bmsk_s r13,r13,0x0
  ││││││    0x0002835c      a0b8           bclr_s r0,r0,0x0
  ││││││    0x0002835e      a578           or_s r0,r0,r13
  ││││││    0x00028360      0a190280       stb r0,[r1,-246]
  ││││││    0x00028364      fb76           .short 0x76fb
  ││││││    0x00028366      c1c6           pop_s r14
  ││││││    0x00028368      e07f           j_s.d [blink]
  ││││││    0x0002836a      c1c5           pop_s r13
  ││││││    0x0002836c      4a220010       mov r10,0x0
  ││││││    0x00028370      7d00affb       b.d -36740 ;0x0001f3ec
  ││││││    0x00028374      4a230011       mov r11,0x0x4
  ││││││    0x00028378      4a220013       mov r10,0x0xc
  ││││││    0x0002837c      7100affb       b.d -36752 ;0x0001f3ec
  ││││││    0x00028380      4a23c010       mov r11,0x0x3
  ││││││    0x00028384      4a220011       mov r10,0x0x4
  ││││││    0x00028388      6500affb       b.d -36764 ;0x0001f3ec
  ││││││    0x0002838c      4a234012       mov r11,0x0x9
  ││││││    0x00028390      4a220011       mov r10,0x0x4
  ││││││    0x00028394      5900affb       b.d -36776 ;0x0001f3ec
  ││││││    0x00028398      4a23c011       mov r11,0x0x7
  ││││││    0x0002839c      4a224011       mov r10,0x0x5
  ││││││    0x000283a0      4d00affb       b.d -36788 ;0x0001f3ec
  ││││││    0x000283a4      4a23c010       mov r11,0x0x3
  ││││││    0x000283a8      4a224012       mov r10,0x0x9
  ││││││    0x000283ac      4100affb       b.d -36800 ;0x0001f3ec
  ││││││    0x000283b0      4a238011       mov r11,0x0x6
  ││││││    0x000283b4      4a220010       mov r10,0x0
  ││││││    0x000283b8      0d00affb       b.d -36852 ;0x0001f3c4
  ││││││    0x000283bc      4a23c010       mov r11,0x0x3
  ││││││    0x000283c0      4a224014       mov r10,0x0x11
  ││││││    0x000283c4      0100affb       b.d -36864 ;0x0001f3c4
  ││││││    0x000283c8      4a234010       mov r11,0x0x1
  ││││││    0x000283cc      4a220011       mov r10,0x0x4
  ││││││    0x000283d0      f5076ffb       b.d -36876 ;0x0001f3c4
  ││││││    0x000283d4      4a23c010       mov r11,0x0x3
  ││││││    0x000283d8      4a224012       mov r10,0x0x9
  ││││││    0x000283dc      e9076ffb       b.d -36888 ;0x0001f3c4
  ││││││    0x000283e0      4a234010       mov r11,0x0x1
  ││││││    0x000283e4      cf71           mov_s 0x0,1
  ││││││    0x000283e6      f00000c8       b -458512 ;0xfffffffffffb84d4
  ││││││    0x000283ea      0e118080       ldb r0,[r1,-242]
  ││││││    0x000283ee      8620ff0e       bic r0,r0,-5
  ││││││    0x000283f2      4e204080       rsub.f r0,r0,0x0x1
  ││││││    0x000283f6      ca202500       mov.c r0,0x0
  ││││││    0x000283fa      e07f           j_s.d [blink]
  ││││││    0x000283fc      0f78           extb_s r0,r0
  ││││││    0x000283fe      e078           nop_s
