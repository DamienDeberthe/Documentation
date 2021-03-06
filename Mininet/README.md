## Commandes Mininet

### Affichage
Afficher la configuration réseau d'un host :
```bash
<host> ifconfig
```
Plus généralement pour exécuter des commandes sur les hosts :
```bash
<host> <command>
```
Ouvrir un terminal pour l'host :
```bash
<host> bash
```
<br>

### Tests
Effectuer un ping depuis un host h1 vers un host h2 :
```bash
h1 ping h2
```
Effectuer un ping sur tous les hosts :
```bash
pingall
```
Traceroute :
```bash
<host> mtr <host> -n --report -c 2
```
<br>

### Topologies réseaux
Créer n hosts connecté au même switch :
```bash
sudo mn --topo single,<n_host_number>
```
Créer n hosts avec chacun leur switch interconnecté les uns aux autres :
```bash
sudo mn --topo linear,<n_host_number>
```
Créer un arbre de switchs, \<number> équivaut au nombre de niveau/étages de l'arbre :
```bash
sudo mn --topo tree,<number>
```
Schéma d'explication pour \<number>=3 :
![alt text](https://github.com/DamienDeberthe/Documentations/blob/master/Mininet/Schema%20tree.png)

<br>

### Options
Pour que les hosts aient un accès internet :
```bash
sudo mn --nat
```
