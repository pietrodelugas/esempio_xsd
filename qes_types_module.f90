!
! Copyright (C) 2001-2009 Quantum ESPRESSO group
! This file is distributed under the terms of the
! GNU General Public License. See the file `License'
! in the root directory of the present distribution,
! or http://www.gnu.org/copyleft/gpl.txt .
!
!
MODULE qes_types_module
  !
  ! Auto-generated code: don't edit this file
  !
  ! Quantum Espresso XSD namespace: http://pietrodelugas.it
  !
  USE kinds, only: DP
  !
  IMPLICIT NONE
  !
  TYPE :: myExample_type
    !
    CHARACTER(len=100) :: tagname
    LOGICAL  :: lwrite = .FALSE.
    LOGICAL  :: lread  = .FALSE.
    !
     :: v1
    TYPE(vector_type) :: vlungo
    !
  END TYPE myExample_type
  !
  !
END MODULE qes_types_module