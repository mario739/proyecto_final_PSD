import numpy as np
from fxpmath import Fxp
import matplotlib.pyplot as plt

fig= plt.figure()
def generador_senoidal(fs,f0,N,a0=1,p0=0):
    ts = 1/fs
    tt = np.linspace(0,N*ts,N).flatten()
    a = np.array([],dtype=float).reshape(N,0)
    a = a0*np.sin(2*np.pi*f0*tt+p0)
    return tt,a

fs = 20
f0 = 1
N = 2048
tt,sig = generador_senoidal(fs,f0,N)

sig_fxp = Fxp(sig,True,16,15)
sig_fxp_bin = sig_fxp.bin()
plt.plot(tt,sig)
plt.show()

fft_data = np.fft.fft(sig)
fft_data_fxp=Fxp(fft_data,True,16,15)
print(fft_data_fxp.bin())

with open('E:\Ejercicios_PSD\\fft\\files\\fft_data_in.tx', 'w') as file:
    for num in sig_fxp_bin:        
        file.write('0000000000000000' + num + '\n')