#Putri Sophia D0221368 Informatika H
#Perhitungan Luas Meliputi : Persegi, Lingkaran & Segitiga

print("""1. persegi
2. lingkaran
3. segitiga
ketik 4 untuk berhenti !""")
pl = 0
while pl != 4:
    pl = int(input("Masukkan pilihan : "))
    if pl == 1:
        sisi = float(input("Masukkan sisi : "))
        luas = sisi*sisi
        print("Luas persegi adalah ",luas, " cm")
    elif pl == 2:
        phi = 3.14
        r = float(input("Masukkan jari-jari : "))
        luas = phi*r*2
        print("Luas lingkaran adalah ",luas, " cm")
    elif pl == 3:
        a = float(input("Masukkan alas : "))
        t = float(input("Masukkan tinggi : "))
        luas = 1/2*a*t
        print("Luas segitiga adalah ",luas, " cm")
    elif pl == 4:
        break
    else:
        print("Cek kembali inputan anda")