# Breakpointové třídění

### Úkol 1: Určení indexu, kde začíná nesetříděná oblast permutačního vektoru
Příklad vstupu: `0 1 2 3 6 7 4 5 8`

Příklad výstupu: `5` (na pozici 5 začíná nesetříděná oblast)

**Nápověda k řešení**: 
Problém lze řešit například postupným porovnáváním s  vektorem  vzestupných čísel začínajícím na nulu (`0 1 2 ...`). 
Porovnávaný vektor začíná jednou hodnotou (`0`) a v každém kroku se o jednu hodnotu prodlužuje (`0 1`, `0 1 2`, atd.), 
dokud je shodný s příslušnou částí permutačního vektoru. 
Nebo lze postupovat opačně, tj. od konce, porovnávaný vektor má stejnou délku jako permutační
a zkracuje se, dokud není shodný s příslušnou částí permutačního vektoru.

Funkce k řešení: `identical()`, `as.integer()`

### Úkol 2: Indikace vzestupných/sestupných částí vektoru
Příklad vstupu: `0 4 5 3 2 1 6 7 8`

Příklad výstupu: `1 1 1 0 0 0 1 1 1`

**Nápověda k řešení:**
Vytvoříme indikační vektor o stejné délce jako permutační vektor obsahující pouze hodnoty `0`,
a pak první a poslední hodnotu nastavíme na `1`. 
Vzestupné části permutačního vektoru budou v indikačním vektoru označeny hodnotami `1`.
V cyklu se prochází permutační vektor, a pokud jsou dvě hodnoty vedle sebe vzestupné, 
tj. druhá je první + 1, pak se na daných indexech nastaví indikační vektor na hodnotu `1`.

### Úkol 3: Breakpointové třídění
Příklad vstupu: `5 1 4 3 7 8 9 2 6`

Příklad výstupu: `1 2 3 4 5 6 7 8 9`

**Nápověda k řešení:**
K  permutačnímu vektoru se přidají okrajové hodnoty. V cyklu se opakují kroky: 
* indikace vzestupu/sestupu,
* nalezení nejmenší hodnoty ze sestupných,
* nalezení začátku nesetřídění oblasti, 
* reverze mezi začátkem nesetříděné oblasti a nejmenší hodnotou ze sestupných. 

Cyklus končí, když je permutační vektor setříděný. Pozor na kolizní situace. 

Funkce k řešení: `match()`, `which()`, `print()`, `identical()`, `as.integer()`

### Bonusový úkol: Počítání chromozomových mutací
Mějme vektor čísel, který reprezentuje pořadí synteny bloků (např. `5 1 1 4 3 7 8 15 9 6`).
Najděte duplikace (např. `1 1`), inzerce (např. `15`) a delece (např. chybí `2`). 
Tyto změny odstraňte/vložte, každá z těchto akcí přičte `1` k celkovému počtu chromozomových mutací. 
Zbylý permutační vektor se pak setřídí. 
Každá reverze při třídění přičte `1` k celkovému počtu chromozomových mutací.

### Stažení podkladů z GitHub
<details>
<summary>Nápověda ke Git</summary>

> * Nastavení editoru
> ```bash
> git config --global core.editor notepad
> ```
> * Nastavení jména a emailu
> ```bash
> git config --global user.name "Zuzana Nova"
> git config --global user.email z.nova@vut.cz
> ```
> * Ověření aktuálního nastavení
> ```bash
> git config --global --list
> ```
>
* Na vlastním GitHub účtu vytvořte kopii (**fork**) zdrojového repozitáře. 
  Otevřete v prohlížeči adresu zdrojového repozitáře. Vpravo nahoře najdete tlačítko <kbd>Fork</kbd> a klikněte na něj.
  
* Naklonujte si repozitář ze svého GitHub účtu do složky s dnešním cvičením.
```bash
git clone <repository address>
```
* V lokálním repozitáři nastavte pomocí terminálu novou vzdálenou adresu (**remote**) na **původní** (vut-mpc-prg) adresu repozitáře (trojúhelníková spolupráce):
```bash
git remote add upstream https://github.com/vut-mpc-prg/cviceni_6.git
```

### Odeslání souborů na GitHub
Vytvořte novou revizi (**commit**) a změny nahrajte na svůj vzdálený repozitář (**push**).
* Nově vytvořený soubor přidejte do revize.
```bash
git add <file_name>
```
* Vytvořte revizi, zadejte zprávu k revizi, uložte a zavřete.
```bash
git commit
```
* Vytvořenou revizi odešlete do svého repozitáře na GitHub.
```bash
git push origin master
```
</details>
