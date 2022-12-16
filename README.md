# Cara Pakai API UKDW Entry

- Setup Server Local :
1. Import db_iot.sql ke dbms, Masuk XAMPP Pilih 'Config' pada Module Apache, Lalu Pilih httpd-xampp.conf
![setup xampp iplocal 1](https://user-images.githubusercontent.com/69253132/205445812-a276d6ea-697b-4bbb-9a44-ea653c06967d.png)
3. Scroll dan cari keyword 'ServerName' dan 'ServerAdmin' dan ganti localhost menjadi ip lokal di cmd
![setup xampp iplocal 2](https://user-images.githubusercontent.com/69253132/205475127-1db7efb7-8e51-4f4c-bdf4-0dccf2de2c05.png)
4. Save
5. Masuk ke browser lalu ketik 'http://iplokal:8080/dashboard/', jika muncul dashboard xampp seperti dibawah maka telah berhasil
![setup xampp iplocal 3](https://user-images.githubusercontent.com/69253132/205475205-4d17f5b2-e1a7-4cfc-a88b-4ab664c8b70b.png)
6. Download source code diatas ke zip, lalu unzip ke folder htdocs

- Uji Coba Postman :

Post Data : 'http://iplokal/api_ukdw_entry/aktivitas_user'
![postman 2](https://user-images.githubusercontent.com/69253132/205474767-3a8210ab-3a7e-4832-b931-2f6084199ccb.png)

Get Data : 'http://iplokal/api_ukdw_entry/aktivitas_user'
![postman 3](https://user-images.githubusercontent.com/69253132/205474833-a429fac7-215b-4939-a34c-f08a95e1ec06.png)

Note : Apabila sudah ada server lokal maka source code di github ini tidak perlu di download!!
