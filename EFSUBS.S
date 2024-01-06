* -*- mode:sysrpl -*-
INCLUDE EFEXTDEC.H
RPL

NULLNAME EFa ( --> %% )
:: %% 0.147 ;

NULLNAME EFDoErf ( %% --> %% )
::
  DUP %%0< SWAPDUP ( Save sign )
  %%* 1LAMBIND ( Save x^2 )
  %%1
  1GETLAM
  %%4 %%PI %%/ EFa 1GETLAM %%* %%+ %%*
  %%1 EFa 1GETLAM ABND
  %%* %%+ %%/
  %%CHS %%EXP %%- %%SQRT
  SWAP IT %%CHS
;

NULLNAME EFDoIErf ( %% --> %% )
::
  DUP %%0< SWAPDUP
  %%*
  %%1 SWAP %%- %%LN
  1LAMBIND
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

NULLNAME EFDoBestQ ( %% --> %% )
::
  %% 1.8643E-6 OVER %%* ( x ax )
  %% -1.09E-4 %%+ ( x ax+b )
  OVER %%* ( x ax^2+bx )
  %% 2.238E-3 %%+ OVER %%*  ( x ax^3+bx^2+cx )
  %% -2.3735E-2 %%+ OVER %%*  ( x ax^4+bx^3+cx^2+dx )
  %% -0.344544 %%+ OVER %%*  ( x ax^5+bx^4+cx^3+dx^2+ex )
  %% -0.774128 %%+ %%*  ( ax^6+bx^5+cx^4+dx^3+ex^2+fx )
  %% -0.698740 %%+ ( ax^6+bx^5+cx^4+dx^3+ex^2+fx+g )
  %%EXP
;

NULLNAME EFDoIQSml ( %% --> %% )
::
  DUP %%* %%2 %%* %%PI %%* DUP %%LN %%1 SWAP %%-
  %%* %%LN %%CHS %%SQRT
;

NULLNAME EFerfinv ( %% --> %% )
::
  DUPDUP %%1 %%- %%CHS SWAP %%1 %%+ %%* %%LN %%CHS
  DUP %%5 %%< ITE EFerfiT EFerfiF %%*
;

NULLNAME EFerfiT ( %% --> %% )
::
  %%5 %%2 %%/ %%- ( w )
  %% 2.81022636E-08 ( w p )
  OVER %%* %% 3.43273939E-07 %%+ ( w wp+p )
  OVER %%* %% -3.5233877E-06 %%+
  OVER %%* %% -4.39150654E-06 %%+
  OVER %%* %% 0.00021858087 %%+
  OVER %%* %% -0.00125372503 %%+
  OVER %%* %% -0.004177681643 %%+
  OVER %%* %% 0.246640727 %%+
  %%* %% 1.50140941 %%+
;

NULLNAME EFerfiF ( %% --> %% )
::
  %%SQRT %%3 %%- ( w )
  %% -0.000200214257 ( w p )
  OVER %%* %% 0.000100950558 %%+
  OVER %%* %% 0.00134934322 %%+
  OVER %%* %% -0.00367342844 %%+
  OVER %%* %% 0.00573950773 %%+
  OVER %%* %% -0.0076224613 %%+
  OVER %%* %% 0.00943887047 %%+
  OVER %%* %% 1.00167406 %%+
  %%* %% 2.83297682 %%+
;
