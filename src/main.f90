      program main
        use global;use nn;implicit none
        double precision c(3*nt),E
!       fi(nFI),r(nr),c(3*nt)  ! intermidiate variables
!       c is the xyz coordinate of each atom in the following order:
!       H H H H O O O O C C
!       and should be in Angstom unit
!       The output E would be in kcal/mol related to the global minimum
!        character symb(nt)! if needed
!        integer i!if needed
!        open(unit=12,file='cin')! replaced by the using the 
!        reorientation of geometry file
!        call prepot ! prepot was already integrated in pot subroutine

100     read(*,*,end=999)c ! if no atom symbol was written in the 
!        geometry file, use this, and set dimension of c to (3*nt)

!100     do 110 i=1,nt
!110       read(*,*,end=999)symb(i),c(:,i)
!       if atom symbol was written in the geometry file, 
!       use the above two lines, and set dimension of c to (3,nt)
        call pot(c,E)
        write(*,*)E
        goto 100
999   end

