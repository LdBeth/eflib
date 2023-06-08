* -*- mode:sysrpl -*-
* Error functions for normal distrubution
* Copyright (c) 2023 LdBeth.
*
*    This program is free software: you can redistribute it and/or modify
*    it under the terms of the GNU General Public License as published by
*    the Free Software Foundation, either version 3 of the License, or
*    (at your option) any later version.
*
*    This program is distributed in the hope that it will be useful,
*    but WITHOUT ANY WARRANTY; without even the implied warranty of
*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*    GNU General Public License for more details.
*
*    You should have received a copy of the GNU General Public License
*    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*
****
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
