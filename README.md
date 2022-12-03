# API UKDW Entry

- Import db_iot.sql
- Ubah host pada file koneksi.php dengan ip lokal jaringan anda, cara cek
  masuk cmd -> ketik 'ipconfig' copy ip address -> ubah nilai variabel host sesuai ip lokal yang tertera
  
Setup IP Lokal ke XAMPP :
1. Masuk XAMPP Pilih 'Config' pada Module Apache
![setup xampp iplocal 1](https://user-images.githubusercontent.com/69253132/205445812-a276d6ea-697b-4bbb-9a44-ea653c06967d.png)
2. Scroll dan cari keyword 'ServerName' dan 'ServerAdmin' dan ganti localhost menjadi ip lokal di cmd
![setup xampp iplocal 2](https://user-images.githubusercontent.com/69253132/205446148-985c9793-c1ea-4d5d-9eec-880757937e70.png)
3. Save
4. Masuk ke browser lalu ketik 'http://iplokal:8080/dashboard/', jika muncul dashboard xampp seperti dibawah maka telah berhasil
![setup xampp iplocal 3](https://user-images.githubusercontent.com/69253132/205446384-50904caa-8965-4b31-868d-7ec3f377cc4c.png)

Uji Coba Postman :
Get Data : 'http://iplokal:8080/api_ukdw_entry/aktivitas_user'

