* -*- mode:sysrpl -*-
xROMID 2EF

ASSEMBLE
ERROMID EQU #2EF
RPL

EXTERNAL EFa
EXTERNAL EFDoErf
EXTERNAL EFDoIErf
EXTERNAL EFDoQ
EXTERNAL EFDoIQ

ASSEMBLE
        CON(1)  8
RPL
xNAME ERF
::
  CK1 CKREAL %>%% EFDoErf %%>%
;

ASSEMBLE
        CON(1)  8
RPL
xNAME IERF
::
  CK1 CKREAL %>%% EFDoIErf %%>%
;

ASSEMBLE
        CON(1)  8
RPL
xNAME QNORM
::
  CK1 CKREAL %>%% EFDoQ %%>%
;

ASSEMBLE
        CON(1)  8
RPL
xNAME IQNRM
::
  CK1 CKREAL %>%% EFDoIQ %%>%
;

NULLNAME EFa ( --> %% )
:: %% 0.147 ;

NULLNAME EFDoErf ( %% --> %% )
::
  DUP %%0< SWAPDUP ( Save sign )
  %%* { NULLLAM } BIND ( Save x^2 )
  %%1
  1GETLAM
  %%4 %%PI %%/ EFa 1GETLAM %%* %%+ %%*
  %%1 EFa 1GETLAM ABND %%* %%+ %%/
  %%CHS %%EXP %%- %%SQRT
  SWAP IT %%CHS
;

NULLNAME EFDoIErf ( %% --> %% )
::
  DUP %%0< SWAPDUP
  %%*
  %%1 SWAP %%- %%LN { NULLLAM } BIND
  %%2 %%PI EFa %%* %%/
  1GETLAM %%2 %%/ %%+ DUP
  DUP %%* 1GETLAM ABND EFa %%/ %%-
  %%SQRT SWAP %%-
  %%SQRT
  SWAP IT %%CHS
;

NULLNAME EFDoQ ( %% --> %% )
::
  %%2 %%SQRT %%/ EFDoErf %%1 SWAP %%-
  %%2 %%/
;

NULLNAME EFDoIQ ( %% --> %% )
::
  %%2 %%* %%1 SWAP %%- EFDoIErf
  %%2 %%SQRT %%*
;

ASSEMBLE
=EFcfg
RPL
::
  DOBINT ERROMID XEQSETLIB ( autoattach )
;
