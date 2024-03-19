import numpy as np
import matplotlib.pyplot as plt
import scipy.interpolate

N = 200 #number of points for plotting/interpolation

m = 70   #number of contours

x, y, z = np.genfromtxt(r'CLN025_MetaD.250000000.pmf', unpack=True)

z -= np.min(z)
cutoff = 8.5
#print(z)

for i in range(len(z)):
    if z[i] > cutoff:
#        print(z[i])
        z[i] = cutoff
#        print(z[i])
#print(z)

xi = np.linspace(x.min(), x.max(), N)
yi = np.linspace(y.min(), y.max(), N)
zi = scipy.interpolate.griddata((x, y), z, (xi[None,:], yi[:,None]), method='cubic')

X, Y = np.meshgrid(xi, yi)

fig = plt.figure()
cp = plt.contourf(X, Y, zi, m, cmap='nipy_spectral')
plt.clim(0.0,8)
cbar = plt.colorbar(cp)
tick_font_size=20
cbar.set_label('PMF(kcal/mol)',fontsize=18)
#plt.contour(xi, yi, zi, m)
plt.ylabel("$R_g (\AA)$",fontsize=18)
plt.xlabel("RMSD ($\AA)$",fontsize=18)
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)

plt.title("D3A",fontsize =18)
#plt.title("A6-DNA: PDB: 5UZF")
#plt.show()

plt.savefig("D3A.jpg",bbox_inches='tight',dpi=500)
