## MEMO COMMANDES ANSIBLE


### Exemples de fichiers YML
* Simple fichier YML :
```bash
# file.yml
---

- hosts: 
  remote_user: 

  tasks:
  - name: 1.
    shell:

```
* Exécution des commandes en sudo, avec le paramètre <code>--ask-become-pass</code> lors de l’exécution du playbook demandant le mot de passe sudo :
```bash
# file.yml
---

- hosts: 
  remote_user: 
  become: yes

  tasks:
  - name: 1.
    shell:

```


### Commandes utiles
* Exécuter une commande bash :
```bash
  - name: 1. Command 
    shell: 
```
* Afficher le résultat d'une commande : (eviter les "-" dans le nom des variables)
```bash
  - name: 1. cat /etc/passwd
    shell: cat /etc/passwd
    register: <var>
  - name: 2. Affichage du resultat de la commande
    debug: var=<var>.stdout_lines
```