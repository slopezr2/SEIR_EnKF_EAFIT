#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib. pyplot as plt



xb_mean_sucs=np.loadtxt('Santi_susc_0_python.dat')
xb_mean_cases=np.loadtxt('Santi_cases_0_python.dat')
xb_mean_dead=np.loadtxt('Santi_dead_0_python.dat')
xb_mean_expos=np.loadtxt('Santi_expos_0_python.dat')
xb_mean_hosp=np.loadtxt('Santi_hosp_0_python.dat')
xb_mean_infec=np.loadtxt('Santi_infec_0_python.dat')
xb_mean_recov=np.loadtxt('Santi_recov_0_python.dat')

xa_mean_sucs=np.loadtxt('Santi_susc_1_python.dat')
xa_mean_cases=np.loadtxt('Santi_cases_1_python.dat')
xa_mean_dead=np.loadtxt('Santi_dead_1_python.dat')
xa_mean_expos=np.loadtxt('Santi_expos_1_python.dat')
xa_mean_hosp=np.loadtxt('Santi_hosp_1_python.dat')
xa_mean_infec=np.loadtxt('Santi_infec_1_python.dat')
xa_mean_recov=np.loadtxt('Santi_recov_1_python.dat')

dobs=np.loadtxt('Santi_dobs_1_python.dat')

for i in range(1,100):
    plt.plot(xb_mean_hosp[i,],linewidth=0.2,color='grey',linestyle='dashed',label='_nolegend_')
    if i==1:
        plt.plot(xa_mean_hosp[i,],linewidth=1,color='grey',label='Hospitalizados')
    else:
        plt.plot(xa_mean_hosp[i,],linewidth=1,color='grey',label='_nolegend_')

for i in range(1,100):
    plt.plot(xb_mean_dead[i,],linewidth=0.2,color=[255/255, 153/255, 204/255],linestyle='dashed',label='_nolegend_')        
    if i==1:
        plt.plot(xa_mean_dead[i,],linewidth=1,color=[255/255, 153/255, 204/255],label='Muertos')
    else:
        plt.plot(xa_mean_dead[i,],linewidth=1,color=[255/255, 153/255, 204/255],label='_nolegend_')

plt.plot(xb_mean_hosp[0,],linewidth=3,color='blue',linestyle='dashed',label='_nolegend_')
plt.plot(xa_mean_hosp[0,],linewidth=3,color='blue',label='Media Hospitalizados')
plt.plot(xb_mean_dead[0,],linewidth=3,color='green',linestyle='dashed',label='_nolegend_')
plt.plot(xa_mean_dead[0,],linewidth=3,color='green',label='Media Muertos')
plt.plot(38,dobs[1],marker='o',markersize=12,color='yellow',label='Obs hospit.')
plt.plot(38,dobs[0],marker='*',markersize=12,color='yellow',label='Obs muertos')


plt.xlim(0,125)
plt.ylim(0,200)
plt.ylabel('Number of people', fontsize=16)
plt.xlabel('Days from March 1st, 2020',fontsize=16)
plt.legend(fontsize=16)

plt.ioff()
plt.show(block=True)

plt.figure()
plt.plot(xa_mean_expos[0,],linewidth=3,label='Media expuestos')
plt.plot(xa_mean_infec[0,],linewidth=3,label='Media infectados')
plt.plot(xa_mean_recov[0,],linewidth=3,label='Media recuperados')
plt.plot(xa_mean_hosp[0,],linewidth=3,label='Media Hospitalizados')
plt.plot(xa_mean_dead[0,],linewidth=3,label='Media Muertos')
plt.plot(38,dobs[1],marker='o',markersize=12,color='yellow',label='Obs hospit.')
plt.plot(38,dobs[0],marker='*',markersize=12,color='yellow',label='Obs muertos')
plt.xlim(0,125)
plt.ylim(0,200)
plt.ylabel('Number of people', fontsize=16)
plt.xlabel('Days from March 1st, 2020',fontsize=16)
plt.legend(fontsize=16)
plt.ioff()
plt.show(block=True)