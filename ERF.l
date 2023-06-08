Saturn Assembler                                       Thu Jun  8 09:55:00 2023
V3.0.8 (12/06/2002)                                      ERF.A          Page    1

    1             * -*- mode:sysrpl -*-
    2             * File  ERF.S   2
    3             * ROMID set to 2EF
    4             * File  ERF.S   3
    5
    6             * File  ERF.S   4
    7             * ASSEMBLE
    8             * File  ERF.S   5
    9             ERROMID EQU #2EF
   10             * File  ERF.S   6
   11             * RPL
   12             * File  ERF.S   7
   13
   14             * File  ERF.S   8
   15             * File  ERF.S   9
   16             * File  ERF.S   10
   17             * File  ERF.S   11
   18
   19             * File  ERF.S   12
   20             * ASSEMBLE
   21             * File  ERF.S   13
   22 00000 8             CON(1)  8
   23             * File  ERF.S   14
   24             * RPL
   25             * File  ERF.S   15
   26 00001 00000         CON(6)  =~xERF
            0
   27 00007       =xERF
   28             * File  ERF.S   16
   29 00007 00000         CON(5)  =DOCOL
   30             * File  ERF.S   17
   31 0000C 00000         CON(5)  =CK1
   32 00011 00000         CON(5)  =CKREAL
   33             * File  ERF.S   18
   34 00016 00000         CON(5)  =DUP
   35 0001B 00000         CON(5)  =%SGN
   36 00020 00000         CON(5)  =SWAP
   37 00025 00000         CON(5)  =DOROMP
   38 0002A 00000         CON(6)  =~EFDoErf
            0
   39 00030 00000         CON(5)  =%*
   40             * File  ERF.S   19
   41 00035 00000         CON(5)  =SEMI
   42             * File  ERF.S   20
   43
   44             * File  ERF.S   21
   45             * ASSEMBLE
   46             * File  ERF.S   22
   47 0003A 8             CON(1)  8
   48             * File  ERF.S   23
   49             * RPL
   50             * File  ERF.S   24
   51 0003B 00000         CON(6)  =~xIERF
            0
   52 00041       =xIERF
   53             * File  ERF.S   25
   54 00041 00000         CON(5)  =DOCOL
   55             * File  ERF.S   26
   56 00046 00000         CON(5)  =CK1
   57 0004B 00000         CON(5)  =CKREAL
   58             * File  ERF.S   27
   59 00050 00000         CON(5)  =DUP
   60 00055 00000         CON(5)  =%SGN
   61 0005A 00000         CON(5)  =SWAP
   62 0005F 00000         CON(5)  =DOROMP
   63 00064 00000         CON(6)  =~EFDoIErf
            0
   64 0006A 00000         CON(5)  =%*
   65             * File  ERF.S   28
   66 0006F 00000         CON(5)  =SEMI
   67             * File  ERF.S   29
   68
   69             * File  ERF.S   30
   70 00074       =EFa
   71             * --> %
   72             * File  ERF.S   31
   73 00074 00000         CON(5)  =DOCOL
   74 00079 00000         CON(5)  =DOREAL
   75 0007E 999           NIBHEX  999
   76 00081 00000         NIBHEX  000000000741
            00007
            41
   77 0008D 0             NIBHEX  0
   78 0008E 00000         CON(5)  =SEMI
   79             * File  ERF.S   32
   80
   81             * File  ERF.S   33
   82 00093       =EFDoErf
   83             * % --> %
   84             * File  ERF.S   34
   85 00093 00000         CON(5)  =DOCOL
   86             * File  ERF.S   35
   87 00098 00000         CON(5)  =DUP
   88 0009D 00000         CON(5)  =%*
   89 000A2 00000         CON(5)  =DOLIST
   90 000A7 00000         CON(5)  =NULLLAM
   91 000AC 00000         CON(5)  =SEMI
   92 000B1 00000         CON(5)  =BIND
   93             * File  ERF.S   36
   94 000B6 00000         CON(5)  =DOLAM
   95 000BB 20            CON(2)  2
   96 000BD 3787          NIBASC  \sx\
   97             * File  ERF.S   37
   98 000C1 00000         CON(5)  =%4
   99 000C6 00000         CON(5)  =%PI
  100 000CB 00000         CON(5)  =%/
  101 000D0 00000         CON(5)  =DOROMP
  102 000D5 00000         CON(6)  =~EFa
            0
  103 000DB 00000         CON(5)  =1GETLAM
  104 000E0 00000         CON(5)  =%*
  105 000E5 00000         CON(5)  =%+
  106 000EA 00000         CON(5)  =%*
  107             * File  ERF.S   38
  108 000EF 00000         CON(5)  =%1
  109 000F4 00000         CON(5)  =DOROMP
  110 000F9 00000         CON(6)  =~EFa
            0
  111 000FF 00000         CON(5)  =1GETLAM
  112 00104 00000         CON(5)  =%*
  113 00109 00000         CON(5)  =%+
  114 0010E 00000         CON(5)  =%/
  115             * File  ERF.S   39
  116 00113 00000         CON(5)  =%CHS
  117 00118 00000         CON(5)  =%EXP
  118 0011D 00000         CON(5)  =%1
  119 00122 00000         CON(5)  =SWAP
  120 00127 00000         CON(5)  =%-
  121 0012C 00000         CON(5)  =%SQRT
  122             * File  ERF.S   40
  123 00131 00000         CON(5)  =ABND
  124             * File  ERF.S   41
  125 00136 00000         CON(5)  =SEMI
  126             * File  ERF.S   42
  127
  128             * File  ERF.S   43
  129 0013B       =EFDoIErf
  130             * % --> %
  131             * File  ERF.S   44
  132 0013B 00000         CON(5)  =DOCOL
  133             * File  ERF.S   45
  134 00140 00000         CON(5)  =DUP
  135 00145 00000         CON(5)  =%*
  136             * File  ERF.S   46
  137 0014A 00000         CON(5)  =%1
  138 0014F 00000         CON(5)  =SWAP
  139 00154 00000         CON(5)  =%-
  140 00159 00000         CON(5)  =%LN
  141 0015E 00000         CON(5)  =DOLIST
  142 00163 00000         CON(5)  =NULLLAM
  143 00168 00000         CON(5)  =SEMI
  144 0016D 00000         CON(5)  =BIND
  145             * File  ERF.S   47
  146 00172 00000         CON(5)  =%2
  147 00177 00000         CON(5)  =%PI
  148 0017C 00000         CON(5)  =DOROMP
  149 00181 00000         CON(6)  =~EFa
            0
  150 00187 00000         CON(5)  =%*
  151 0018C 00000         CON(5)  =%/
  152             * File  ERF.S   48
  153 00191 00000         CON(5)  =1GETLAM
  154 00196 00000         CON(5)  =%2
  155 0019B 00000         CON(5)  =%/
  156 001A0 00000         CON(5)  =%+
  157 001A5 00000         CON(5)  =DUP
  158             * File  ERF.S   49
  159 001AA 00000         CON(5)  =DUP
  160 001AF 00000         CON(5)  =%*
  161 001B4 00000         CON(5)  =1GETLAM
  162 001B9 00000         CON(5)  =DOROMP
  163 001BE 00000         CON(6)  =~EFa
            0
  164 001C4 00000         CON(5)  =%/
  165 001C9 00000         CON(5)  =%-
  166             * File  ERF.S   50
  167 001CE 00000         CON(5)  =%SQRT
  168 001D3 00000         CON(5)  =SWAP
  169 001D8 00000         CON(5)  =%-
  170             * File  ERF.S   51
  171 001DD 00000         CON(5)  =%SQRT
  172             * File  ERF.S   52
  173 001E2 00000         CON(5)  =ABND
  174             * File  ERF.S   53
  175 001E7 00000         CON(5)  =SEMI
  176             * File  ERF.S   54
  177
  178             * File  ERF.S   55
  179             * ASSEMBLE
  180             * File  ERF.S   56
  181 001EC       =EFcfg
  182             * File  ERF.S   57
  183             * RPL
  184             * File  ERF.S   58
  185 001EC 00000         CON(5)  =DOCOL
  186             * File  ERF.S   59
  187 001F1 00000         CON(5)  =DOBINT
  188 001F6 FE200         CON(5)  =ERROMID
  189 001FB 00000         CON(5)  =XEQSETLIB
  190             * autoattach
  191             * File  ERF.S   60
  192 00200 00000         CON(5)  =SEMI
Saturn Assembler                                       Thu Jun  8 09:55:00 2023
V3.0.8 (12/06/2002)   Symbol Table                       ERF.A          Page    2

 %*                                Ext                   -    39    64    88
                                         104   106   112   135   150   160
 %+                                Ext                   -   105   113   156
 %-                                Ext                   -   120   139   165
                                         169
 %/                                Ext                   -   100   114   151
                                         155   164
 %1                                Ext                   -   108   118   137
 %2                                Ext                   -   146   154
 %4                                Ext                   -    98
 %CHS                              Ext                   -   116
 %EXP                              Ext                   -   117
 %LN                               Ext                   -   140
 %PI                               Ext                   -    99   147
 %SGN                              Ext                   -    35    60
 %SQRT                             Ext                   -   121   167   171
 1GETLAM                           Ext                   -   103   111   153
                                         161
 ABND                              Ext                   -   123   173
 BIND                              Ext                   -    92   144
 CK1                               Ext                   -    31    56
 CKREAL                            Ext                   -    32    57
 DOBINT                            Ext                   -   187
 DOCOL                             Ext                   -    29    54    73
                                          85   132   185
 DOLAM                             Ext                   -    94
 DOLIST                            Ext                   -    89   141
 DOREAL                            Ext                   -    74
 DOROMP                            Ext                   -    37    62   101
                                         109   148   162
 DUP                               Ext                   -    34    59    87
                                         134   157   159
=EFDoErf                           Rel     147 #00000093 -    82
=EFDoIErf                          Rel     315 #0000013B -   129
=EFa                               Rel     116 #00000074 -    70
=EFcfg                             Rel     492 #000001EC -   181
 ERROMID                           Abs     751 #000002EF -     9   188
 NULLLAM                           Ext                   -    90   142
 SEMI                              Ext                   -    41    66    78
                                          91   125   143   175   192
 SWAP                              Ext                   -    36    61   119
                                         138   168
 XEQSETLIB                         Ext                   -   189
=xERF                              Rel       7 #00000007 -    27
=xIERF                             Rel      65 #00000041 -    52
 ~EFDoErf                          Ext                   -    38
 ~EFDoIErf                         Ext                   -    63
 ~EFa                              Ext                   -   102   110   149
                                         163
 ~xERF                             Ext                   -    26
 ~xIERF                            Ext                   -    51
Saturn Assembler                                       Thu Jun  8 09:55:00 2023
V3.0.8 (12/06/2002)   Statistics                         ERF.A          Page    3

Input Parameters

  Source file name is ERF.A

  Listing file name is ERF.l

  Object file name is ERF.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
