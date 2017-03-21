# Dotacni Parazit

Repozitář obsahuje nástroje, dokumentaci a postřehy ze stavby projektu Dotační Parazit

## Potřebné systémové prostředky

  - Python 3
  - python-lxml (lxml modul, možno z pip3)
  - libxml2
  - raptor2-utils (utilita rapper http://librdf.org/raptor/rapper.html )
  - parallel (pro paralelizaci procesingu)
  - p7zip (binárka 7z)
  - findutils (binárka find)
  - wget
  - 

## Inicializace DB

V rámci adresáře repozitáře spouštíme příkazy nebo skripty

  - Stáhnout všechny n3.7z exporty ze stránek CEDR-III pomocí "download.sh" do složky "7Z"
    - `./tools/download.sh`
  - Rozbalit 7z soubory abychom dostali N3
    - `ls 7Z/*.7z | parallel -j+0 --eta '7z x -o./N3/ {} > /dev/null'`
  - Přesunout všechny N3 soubory do jedné složky
    - `find N3 -iname '*.n3' -exec mv {} N3/ \;`
  - Konvertovat N3 do RDF (formátovaný XML pro lepší zpracování)
    - `find N3 -iname '*.n3' | parallel -j+0 --eta './tools/mass_rapper.sh {}'`
  - Konvertovat RDF do XML (importovatelné pomocí MySQL)
    - ``
