#LIST
#Diimplementasikan dengan kurung siku [ ]
#Contoh List
nama = ["sofia","sarah","sifa","zalfa","nur"]

#Menampilkan List dengan Perulangan
for i in nama :                    #perulangan for
	print(i)
i = 0                                    #membuat variabel baru
while i < len(nama):         #perulangan while
	print(nama[i])
	i += 1
	
#Mengupdate salah satu value
nama [2] = "dita"
print(nama)

#Menghapus salah satu value
nama.pop()          #mengapus indeks terakhir
print(nama)
del nama [1 : 3]    #menghapus indeks tertentu
print(nama)
nama.remove("zalfa")   #menghapus bkn indeks
print(nama)

#Menambahkan value
nama.append ("sarah")
print(nama)
nama.extend (["sifah","aisya"]) 
print(nama)
nama.insert (2, "nur") #menambah nur di indeks 2
print(nama)


#TUPLE
#Diimplementasikan dengan kurung biasa( )
#Contoh Tuple
buah = ("anggur","apel","mangga","pir")

#Menampilkan Tuple dengan Perulangan
for i in buah :                  #perulangan for
	print(i)
	
buah = list(buah)           #konversi Tuple ke List

i = 0                                 #membuat variabel baru
while i < len(buah) :      #perulangan while
	print (buah[i])
	i += 1
	
#Mengupdate salah satu value
buah [1] = "jeruk"
print (buah)

#Menghapus salah satu value
buah.pop()                         #hapus indeks terakhir
print(buah)
buah.remove("mangga") #hapus berdasarkan nilai
print(buah)
del buah [0]                  #hapus berdasarkan indeks
print(buah)

#Menambahkan value
buah.append ("semangka")
print(buah)
buah.extend (["melon","pisang"])
print(buah)
buah.insert (2, "cery") #tambah cery ke indeks 2
print(buah)


#SET
#Diimplementasikan dengan kurung kurawal { }
#Contoh Set
nama = {"kuda","sofia",5,True,12}

#Menampilkan Set dengan Perulangan
for i in nama :               #perulangan for
	print(i)

nama = list(nama)       #konversi set ke list

i = 0                                #membuat variabel baru
while i < len(nama) :    #perulangan while
	print(nama[i])
	i += 1
	
#Mengupdate salah satu value
nama [0] = "buku"
print(nama)

#Menghapus salah satu value
nama = set(nama)    #konversi kembali List ke Set

nama.remove("buku")
print(nama)
nama.discard(5)
print(nama)
nama.pop()
print(nama)
nama.clear()
print(nama)

#Menambahkan value
nama.add ("pulpen")
print(nama)
nama.update (["kaca","roti"])
print(nama)


#DICTIONARY
#Diimplementasikan dengan kurung kurawal { }
#Contoh Dictionary
saya = {'nama':'sofia','umur':'19','asal':'korea'}

#Menampilkan Dict dengan Perulangan
for i in saya.items() :
	print(i)

#Mengupdate salah satu value
saya ['umur'] = 17
print(saya)

#Menghapus salah satu value
saya.pop('asal')
print(saya)
saya.clear()   #menghapus semua nilai
print(saya)

#Menambahkan value
saya ['hobi'] = 'makan'
print(saya#membuat variabel baru)