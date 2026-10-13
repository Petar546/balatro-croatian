# Balatro Croatian (Hrvatski) Localization Mod

Ovaj mod donosi djelomičan prijevod i podršku za hrvatski jezik u igru **Balatro**. Napravljen je kao samostalni paket za **Steamodded** i radi na svim platformama (Windows, Linux i Steam Deck).

---

## 🛠️ Preduvjeti (Prerequisites)

Prije instalacije samog prijevoda, vaša igra mora imati instaliran sustav za učitavanje modova (**Lovely** i **Steamodded**). Ako to već imate, preskočite na korak "Kako instalirati".

### 1. Instalacija Lovely-ja
1. Posjetite [Lovely GitHub Releases](https://github.com) i preuzmite najnoviju verziju za Windows (obično sadrži datoteku `version.dll` ili `winmm.dll`).
2. Desni klik na **Balatro** u Steamu -> **Manage** -> **Browse local files**.
3. Kopirajte preuzetu `.dll` datoteku izravno u glavni direktorij igre (tamo gdje se nalazi `Balatro.exe`).

### 2. Postavke za Linux / Steam Deck korisnike
Ako igrate na Linuxu ili Steam Decku, morate prisiliti Proton da učita modove:
1. U Steamu, desni klik na **Balatro** -> **Properties**.
2. Pod karticom **General**, skrolajte do dna na **Launch Options**.
3. Zalijepite sljedeću naredbu:
   ```bash
   WINEDLLOVERRIDES="winmm=n,b;version=n,b" %command%
   ```

### 3. Priprema i instalacija Steamodded-a
1. **Važno:** Pokrenite igru barem jednom u originalnom obliku kako bi sustav automatski generirao mape za spremanje podataka (AppData).
2. Navigirajte do lokacije za spremanje podataka (pogledajte "Putanje" u koraku ispod).
3. Unutar postojeće mape `Balatro`, **morate ručno kreirati mapu pod nazivom `Mods`** (pazite na veliko slovo **M**, Linux je osjetljiv na velika i mala slova!).
4. Preuzmite najnoviji sustav s [Steamodded GitHub](https://github.com).
5. Raspakirajte Steamodded u novostvorenu mapu tako da krajnja putanja izgleda ovako: `.../Balatro/Mods/Steamodded/`.

---

## 🚀 Kako instalirati prijevod (How to Apply)

1. Preuzmite i raspakirajte ovu mapu (`balatro-croatian`).
2. Smjestite cijelu mapu `balatro-croatian` u vašu stvorenu `Mods` mapu:

   * **Linux / Steam Deck (Standardni Steam):**
     ```text
     ~/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
     ```
   * **Linux (Flatpak verzija Steama):**
     ```text
     ~/.var/app/com.valvesoftware.Steam/.steam/steam/steamapps/compatdata/2379780/pfx/drive_c/users/steamuser/AppData/Roaming/Balatro/Mods/
     ```
   * **Windows:**
     Pritisnite `Win + R`, upišite `%appdata%/Balatro/Mods` i pritisnite Enter.

3. Pokrenite **Balatro**.
4. U glavnom izborniku kliknite na ljubičasti gumb **Mods** kako biste provjerili je li "Croatian Localization" uspješno učitan (imat će zelenu kvačicu).

---

## ⚠️ Napomena za prevođenje (Notes)
Tekst unutar zagrada (npr. `{C:mult}`) i oznake s ljestvama (npr. `#1#`) kontroliraju boje i aktivne varijable u igri. **Nemojte ih mijenjati ili brisati** prilikom uređivanja datoteke `localization/hr.lua` jer to može uzrokovati rušenje igre.
