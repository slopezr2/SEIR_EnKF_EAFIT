module m_agegroups
integer, parameter :: na=5
real, save         :: agegroup(0:na-1)
contains
subroutine agegroups
integer i,n

integer ib(0:na-1)
integer ia(0:na-1)

ia(0)=0 ; ib(0)=4
ia(1)=5 ; ib(1)=14
ia(2)=15 ; ib(2)=49
ia(3)=50 ; ib(3)=64
ia(4)=65 ; ib(4)=104


! Group 1:  0-4    years old   Kindergarden
! Group 2:  5-14   years old   Children school
! Group 3:  15-49  years old   Juvenile and highschool
! Group 4:  50-64  years old
! Group 5:  64<     years old  Retired and vounerable


! Numbers from https://www.medellin.gov.co/irj/go/km/docs/wpccontent/Sites/Subportal%20del%20Ciudadano/Plan%20de%20Desarrollo/Secciones/Informaci%C3%B3n%20General/Documentos/POT/medellinPoblacion.pdf

!The information is directly per group, not per age
agegroup(0)=224618
agegroup(1)=446878
agegroup(2)=1471390
agegroup(3)=525799
agegroup(4)=264409

  do i=0,na-1
     print '(a,i2,a,i2,a,i3,a,f9.0)','Population in agegroup: ',i,' agerange(',ia(i),'--',ib(i),')= ',agegroup(i)
  enddo
  print '(a,2f13.0)','Total Medellin population: ', sum(agegroup(:))

end subroutine
end module
