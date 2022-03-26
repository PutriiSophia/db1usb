benda = ['Buku','Pensil','Pulpen','Kertas','Gunting']


while True :
  print("""pilih salah satu perintah :
  1. menambahkan
  2. menghapus
  3. mengedit
  4. menampilkan
  5. mencari benda
  6. mencari index""")
  perintah = input("masukkan perintah di atas : ")

  if perintah == '1':
    tambah = input("masukkan barang : ")
    benda.append(tambah)
  elif perintah =='2':
    hapus = int(input("masukkan index yang akan dihapus : "))
    del benda[hapus]
  elif perintah == '3':
    ubah = int(input("masukkan index yang akan diubah : "))
    benda[ubah] = input("masukkan benda baru : ")
  elif perintah == '4':
    print(benda)
  elif perintah == '5':
    cari = input("masukkan benda yang dicari : ")
    if cari in benda:
      print("benda ditemukan")
    else: 
      print("benda tidak ditemukan")
  elif perintah == '6':
      cari = input("masukkkan benda yang ingin dicari indeksnya : ")
      if cari in benda:
        print(benda.index(cari))
      else :
        print("benda tidak ditemukan")
  else :
    break

print("perintah selesai")