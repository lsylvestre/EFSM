Ce fichier `README.md` est situé dans un dossier nommé `gen/` qui a été généré automatiquement.
Copier ce dossier `gen/` dans l'une des plateformes situées dans `O2B/platform/altera`. 
Typiquement :

```
$ cd O2B/platform/altera
$ cp -R extops extops2
$ cd extops2
$ cp <somewhere>/gen/ -R gen/
```

Le dossier `gen/` contient trois fichiers VHDL, `rtl/f.vhd`, `rtl/f_cc.vhd` et `rtl/misc/f_misc.vhd`.

Pour mettre à jour les fichiers sources, faire :

```
$ cd gen/
$ make
$ cd ..
$ make sopc-edit
  ~> cela ouvre Qsys
```
Dans Qsys :

  - Dans "IP Catalog", Cliquer sur "new".
    - dans la fenêtre `Component Type` : 
      - éditer `Name =` *F_CC*, 
      - éditer `Display Name =` *F_CC*
    - dans la fenêtre `Files` :
      - cliquer sur `add File...` et ajouter `../rtl/f_cc.vhdl` *PUIS* `f.vhdl`.
      - cliquer sur `Analyse Synthesis Files`
        - le champ `Top_level Module` doit afficher `avs_f`
        - **ATTENTION** : si `../rtl/f_cc.vhdl` est ajouter après `f.vhdl`, 
          le `Top_level Module` inféré est `f`, ce qui est erroné !
    - dans la fenêtre `Signals & Interfaces`
      - supprimer tout les signaux un par un
      - cliquer sur `Template` > `Add Avalon-MM Simple Slave`
      - éditer le nom d'`avs_s0` en `s0`
      - éditer la taille (`width`) du signal `avs_s0_address` : remplacer 8 par 4
      - supprimer le signal `avs_s0_waitrequest` 
    - cliquer sur `Finish`, puis `Yes, Save`, `Close`.
  - Dans la liste en bas à gauche, cliquer sur **plateform**, puis `Add` pour ajouter une instance de *F_CC*, puis `Finish`. Par défaut, cette nouvelle instance s'appelle *F_CC0*.
  - Renommer la plateforme *F_CC0* en `f_cc`.
  - Aller dans `f_cc` > `Connections` :
    - dans `f_cc.avs_s0`, cocher `cpu.data_master`
    - dans `f_cc.clock`, cocher `clk.clk`
    - dans `f_cc.reset`, cocher `clk.clk_reset`
  - Aller dans `Address Map`
    - Editer l'adresse de base de `f_cc.avs_s0` (par exemple `0x0000_0400`) afin qu'aucun composant ne se chevauche en mémoire.
    - Maintenant, il n'y a normalement plus aucune erreur. 
  - Cliquer sur `Generate HDL...` > `Generate` > `Close`.
  - Cliquer sur `Finish`. On sort de Qsys.

Enfin, pour synthétiser la nouvelle plateforme, faire :

```
$ make hw-build
```