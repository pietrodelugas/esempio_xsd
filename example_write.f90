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
  ! example of namespace that imports Quantum ESPRESSO XSD: http://pietrodelugas.it
  !
  USE qes_types_module
  USE example_types_module 
  USE qes_write_module
  USE FoX_wxml
  !
  IMPLICIT NONE
  !
  PUBLIC
  !
  INTERFACE example_write
    MODULE PROCEDURE qes_write_myExample
    MODULE PROCEDURE qes_write_mycomplex
  END INTERFACE example_write
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
        CALL xml_addCharacters(xp, obj%v1, fmt='s16')
     CALL xml_EndElement(xp, 'v1')
     CALL qes_write_vector (xp, obj%vlungo)
     CALL qes_write_atomic_structure (xp, obj%coords)
     CALL qes_write_mycomplex (xp, obj%pippo)
     CALL xml_EndElement(xp, TRIM(obj%tagname))
   END SUBROUTINE qes_write_myExample

   SUBROUTINE qes_write_mycomplex(xp, obj)
     !-----------------------------------------------------------------
     IMPLICIT NONE
     TYPE (xmlf_t),INTENT(INOUT)                      :: xp
     TYPE(mycomplex_type),INTENT(IN)    :: obj
     ! 
     INTEGER                                          :: i 
     ! 
     IF ( .NOT. obj%lwrite ) RETURN 
     ! 
     CALL xml_NewElement(xp, TRIM(obj%tagname))
     IF (obj%class_ispresent) CALL xml_addAttribute(xp, 'class', obj%class )
     IF (obj%shape_ispresent) CALL xml_addAttribute(xp, 'shape', obj%shape )
     CALL qes_write_vector (xp, obj%vec)
     CALL xml_NewElement(xp, 'word')
        CALL xml_addCharacters(xp, TRIM(obj%word))
     CALL xml_EndElement(xp, 'word')
     CALL xml_EndElement(xp, TRIM(obj%tagname))
   END SUBROUTINE qes_write_mycomplex

  !
END MODULE qes_write_module