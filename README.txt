DRASTARU FLORINA CRISTINA 315CA

Task1
Citesc din fisierele date ca parametru numarul de clustere(NC) 
si punctele(matricea points) cu ajutorul functiei load.

Task2
Declar matricea centroids.
Aflu numarul de linii(m) si de coloane(n) al matricei points.
Creez matricea centroids, cu numarul de linii egal cu numarul de clustere 
si numarul de coloane egal cu numarul de coordonate al fiecarui punct.
Creez vectorul randomIdx, ce contine numerele de la 1 la m, in ordine arbitrara.
Cu ajutorul vectorului randomIdx, aleg arbitrar centroizii initiali.
Calculez distanta de la fiecare punct la fiecare centroid si o aleg pe cea minima.
Retin indicele celui mai apropriat centroid si adun punctele ce apartin clusterului respectiv.
Aflu noii centroizi calculand centrul de masa al fiecarui cluster.
Verific daca noul centroid este egal cu cel vechi. Daca da, opresc executia programului.
In caz contrar, se reia algoritmul.


Task3
Aflu numarul de clustere(NC) si numarul de puncte(NP).
Creez matricea colors.
Creez vectorul de zero-uri idx cu NC elemente.
Calculez distanta de la fiecare punct la fiecare centroid si o aleg pe cea minima.
Retin in vectorul idx centroidul de care este cel mai apropriat fiecare punct.
Fac vectorul de culori colors, pe care il trimit ca parametru in functia scatter3.
Apelez functia scatter3. 

Task4
Initializez costul(variabila cost) cu 0.
Calculez distanta euclidiana de la fiecare punct la fiecare centroid si o aleg pe cea mai mica.
Pentru fiecare punct, adun valoarea distantei minime la cost.

Task5
Creez matricea costs.
Calculez costul pentru fiecare cluster si il introduc in matricea costs.
Apelez functia plot pentru crearea graficului.
