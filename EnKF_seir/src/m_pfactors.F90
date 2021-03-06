module m_pfactors
use m_agegroups

real, save         :: pm(0:na-1)
real, save         :: ps(0:na-1)
real, save         :: pf(0:na-1)

contains
subroutine pfactors
   use mod_parameters
   real dead, seve
   integer i
   integer, save :: iprt=0
   logical :: lprt=.false.

   iprt=iprt+1
   if (iprt < 4) lprt=.true.
   if (iprt >= 4) lprt=.false.



! Defining initial fractions of mild, severe, and fatal cases for different agegroups
!            1    2    3    4    5    6    7    8    9    10   11
   pm(:)= (/ 1.0, 1.0, 0.97, 0.9185, 0.89 /)
   ps(:)= (/ 0.0, 0.0, 0.02, 0.072, 0.072 /)
   pf(:)= (/ 0.0, 0.0, 0.01, 0.0095, 0.038/)

!  Initial ratios:
   if (iprt==1) print '(a,11f12.4)','pm0: ',pm(:) 
   if (iprt==1) print '(a,11f12.4)','ps0: ',ps(:) 
   if (iprt==1) print '(a,11f12.4)','pf0: ',pf(:) 

   dead=0.0
   seve=0.0
   do i=0,na-1
      dead=dead+pf(i)*agegroup(i)/sum(agegroup(:))
      seve=seve+ps(i)*agegroup(i)/sum(agegroup(:))
   enddo
!   print '(a,f10.4)','dead ratio=',dead
!   print '(a,f10.4)','seve ratio=',seve
   
   pf(:)=(CFR/dead)*pf(:)
   ps(:)=(P_SEVERE/seve)*ps(:)
   pm(:)=1.0-ps(:)-pf(:)
   if (lprt) print '(a,11f12.4)','pm1: ',pm(:) 
   if (lprt) print '(a,11f12.4)','ps1: ',ps(:) 
   if (lprt) print '(a,11f12.4)','pf1: ',pf(:) 

   dead=0.0
   seve=0.0
   do i=0,na-1
      dead=dead+pf(i)*agegroup(i)/sum(agegroup(:))
      seve=seve+ps(i)*agegroup(i)/sum(agegroup(:))
   enddo
   if (lprt) print '(a,f10.4)','dead ratio2=',dead
   if (lprt) print '(a,f10.4)','seve ratio2=',seve
end subroutine
end module
