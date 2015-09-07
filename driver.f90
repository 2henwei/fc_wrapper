program driver
    use Allocator

    real, pointer :: pw(:)
    real nstep
    integer istep
    CHARACTER(LEN=10) varname
    integer cmtsize
    integer i

    istep = 5
    nstep = 7
    cmtsize = 10 
    varname = "pw"

    print * , "Within fortran driver program"
    print * ,"variable ",pw 
    print * ,"size ",cmtsize 
    print * ,"varname ",varname 
    print * ,"pid ", 1 
    print * ,"cmtsize ", cmtsize 
    print * , "end of fortran driver"
     
    call alloc_1d_real(pw,cmtsize,varname,1,cmtsize) 

    print *, "variable value after c routine call : ",pw

end program driver
