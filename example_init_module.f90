!
! Copyright (C) 2001-2009 Quantum ESPRESSO group
! This file is distributed under the terms of the
! GNU General Public License. See the file `License'
! in the root directory of the present distribution,
! or http://www.gnu.org/copyleft/gpl.txt .
!
!
MODULE example_init_module
  !
  ! Auto-generated code: don't edit or at least don't commit changes
  !
  ! Quantum Espresso XSD namespace: http://pietrodelugas.it
  !
  USE kinds, only: DP
  USE qes_types_module
  USE qes_init_module
  USE example_types_module
  
  !
  IMPLICIT NONE
  !
  PRIVATE
  !
  PUBLIC :: example_init
  !
  INTERFACE example_init
    !
    MODULE PROCEDURE qes_init_myExample
    MODULE PROCEDURE qes_init_mycomplex
    !
  END INTERFACE qes_init
  !
  CONTAINS
  !
  !
  SUBROUTINE qes_init_myExample(obj, tagname, v1, vlungo, coords, pippo)
    !
    IMPLICIT NONE
    !
    TYPE(myExample_type), INTENT(OUT) :: obj
    CHARACTER(LEN=*), INTENT(IN) :: tagname
    REAL(DP), DIMENSION(3),INTENT(IN) :: v1
    TYPE(vector_type),INTENT(IN) :: vlungo
    TYPE(atomic_structure_type),INTENT(IN) :: coords
    TYPE(mycomplex_type),INTENT(IN) :: pippo
    !
    obj%tagname = TRIM(tagname)
    obj%lwrite = .TRUE.
    obj%lread = .TRUE.
    !
    obj%v1 = v1
    obj%vlungo = vlungo
    obj%coords = coords
    obj%pippo = pippo
    !
  END SUBROUTINE qes_init_myExample
  !
  !
  SUBROUTINE qes_init_mycomplex(obj, tagname, class, shape, vec, word)
    !
    IMPLICIT NONE
    !
    TYPE(mycomplex_type), INTENT(OUT) :: obj
    CHARACTER(LEN=*), INTENT(IN) :: tagname
    INTEGER, OPTIONAL, INTENT(IN) :: class
    INTEGER, DIMENSION(:), OPTIONAL, INTENT(IN) :: shape
    TYPE(vector_type),INTENT(IN) :: vec
    CHARACTER(LEN=*),INTENT(IN) :: word
    !
    obj%tagname = TRIM(tagname)
    obj%lwrite = .TRUE.
    obj%lread = .TRUE.
    IF (PRESENT(class)) THEN
      obj%class_ispresent = .TRUE.
      obj%class = class
    ELSE
      obj%class_ispresent = .FALSE.
    END IF
    IF (PRESENT(shape)) THEN
      obj%shape_ispresent = .TRUE.
      obj%shape = shape
    ELSE
      obj%shape_ispresent = .FALSE.
    END IF
    !
    obj%vec = vec
    obj%word = word
    !
  END SUBROUTINE qes_init_mycomplex
  !
  !
END MODULE example_init_module