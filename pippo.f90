!
! Copyright (C) 2001-2009 Quantum ESPRESSO group
! This file is distributed under the terms of the
! GNU General Public License. See the file `License'
! in the root directory of the present distribution,
! or http://www.gnu.org/copyleft/gpl.txt .
!
MODULE qes_write_module
  !
  ! Auto-generated code: don't edit this file
  !
  ! Quantum Espresso XSD namespace: http://pietrodelugas.it
  !
  USE qes_types_module
  USE FoX_wxml
  !
  IMPLICIT NONE
  !
  PUBLIC
  !
  INTERFACE qes_write
    MODULE PROCEDURE qes_write_myExample
  END INTERFACE qes_write
  !
  CONTAINS
  !
  
   SUBROUTINE qes_write_myExample(xp, obj)
     !-----------------------------------------------------------------
     IMPLICIT NONE
     TYPE (xmlf_t),INTENT(INOUT)                      :: xp
     TYPE(myExample_type),INTENT(IN)    :: obj
     ! 
     INTEGER                                          :: i 
     ! 
     IF ( .NOT. obj%lwrite ) RETURN 
     ! 
     CALL xml_NewElement(xp, TRIM(obj%tagname))
     CALL xml_NewElement(xp, 'v1')
        CALL xml_addCharacters(xp, obj%v1)
     CALL xml_EndElement(xp, 'v1')
     CALL qes_write_vector (xp, obj%vlungo)
     CALL xml_EndElement(xp, TRIM(obj%tagname))
   END SUBROUTINE qes_write_myExample

  !
END MODULE qes_write_module