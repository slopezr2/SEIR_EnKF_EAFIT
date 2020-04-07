










module m_Rmatrix
use m_agegroups
real, save         :: Rmat(0:na-1,0:na-1)
contains
subroutine Rmatrix
   integer i,j
! Transmission factors when opening kindergardens after easter.
!                   1    2    3    4    5   6    7    8   9    10   11 
   Rmat( 0,:)= (/ 2.5, 1.8, 1.3, 0.8, 0.8/)
   Rmat( 1,:)= (/ 1.8, 2.5, 2.0, 0.8, 0.8/)
   Rmat( 2,:)= (/ 1.3, 1.7, 1.0, 1.0, 0.8 /)
   Rmat( 3,:)= (/ 0.8, 0.8, 1.0, 0.8, 0.8 /)
   Rmat( 4,:)= (/ 0.8, 0.8, 0.8, 0.8, 0.8/)
   do j=0,na-1
   do i=j+1,na-1
      Rmat(i,j)=Rmat(j,i)
   enddo
   enddo
   print *,'Rmat:'
   print '(11f10.2)',Rmat
end subroutine
end module
