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
INCLUDE EFEXTDEC.H

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
xNAME ERFIV
::
  CK1 CKREAL
  DUP %ABS %1 %> IT SETIVLERR
  %>%% EFerfinv %%>%
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
  CK1 CKREAL
  ( DUPDUP %0< SWAP %1 %> OR IT SETIVLERR )
  %>%% EFDoIQ %%>%
;

ASSEMBLE
        CON(1)  8
RPL
xNAME QBEST
::
  CK1 CKREAL %>%% EFDoBestQ %%>%
;

ASSEMBLE
        CON(1)  8
RPL
xNAME IQSML
::
  CK1 CKREAL
  %>%% EFDoIQSml %%>%
;

ASSEMBLE
=EFcfg
RPL
::
  DOBINT ERROMID XEQSETLIB ( autoattach )
;
