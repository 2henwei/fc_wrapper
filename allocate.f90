module Allocator
    USE, INTRINSIC :: ISO_C_BINDING
    interface
    type(c_ptr) function alloc(vsize, varname, pid, cmtsize) bind(C)
      USE, INTRINSIC :: ISO_C_BINDING
      integer(KIND=C_INT) :: vsize
      character(KIND=C_CHAR) :: varname(10)
      integer(KIND=C_INT) :: pid, cmtsize
    end function alloc
    end interface

    contains
      subroutine alloc_1d_real(array,row,varname, mype, cmtsize)
        integer(KIND=C_INT) :: row
        real, pointer :: array(:)
        type(c_ptr) :: cptr
        integer(KIND=C_INT) :: val, nvsize 
        character(len=10) varname
        integer(KIND=C_INT) :: mype, cmtsize

        val = row*SIZEOF(real)
        nvsize = cmtsize * SIZEOF(real)
        cptr = alloc(val,varname, mype, nvsize)
        call c_f_pointer(cptr,array,[row])
      end subroutine
end module
