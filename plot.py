import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.DataFrame(np.random.randint(0,100,size=(100, 4)), columns=list('ABCD'))
df['E'] =df['A'] + df['B']
a = df['E'].sum()

#df.to_csv('tablica.csv')
df1 = pd.read_csv('tablica.csv')

print(df[['A', 'B', 'E']])
print(df1)
print(a)

plt.plot(df['A'], df['B'], c='y', label='Pierwszy wykres', marker='^')
plt.ylim((0,100))
plt.xlim(0,100)
plt.xlabel('kolumna A [\u03bcm]')
plt.ylabel('kolumna B [\u03bcm]')
plt.legend()
plt.show()
