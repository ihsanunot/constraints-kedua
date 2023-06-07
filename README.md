# Constraints

constraints dapat memengaruhi posisi dan ukuran dari widget

--

Width
Height
Center
Align
alignment
alignment: Alignment(-1, -1),
alignment: Alignment.bottomRight,
child dalam child pakai padding

---

Ketika sebuah Container tidak didefinisikan ukurannya, maka Container akan menggunakan ukuran dari child widget-nya, dan jika Container tidak memiliki widget, maka Container tersebut akan mengambil ukuran yang maksimal.

**Container memiliki parameter padding yang dapat memberikan jarak antara border dengan konten di dalamnya.**

---

Kita tahu bahwa root widget dari Flutter memberikan constraints agar widget di bawahnya berukuran sama dengan ukuran layar. Namun, UnconstrainedBox memungkinkan widget di bawahnya untuk memiliki ukuran berapa pun. Sehingga, Container dapat menentukan ukuran dengan bebas bahkan hingga melebihi ukuran layar sekalipun.

Namun, karena ukuran yang melebihi layar maka Flutter akan memberikan overflow warning.

---

Widget seperti Row sama seperti UnconstrainedBox, karenaRow tidak memberikan constraints terhadapa children nya, tapi membiarkan children widget menentukan ukuran yang di inginkan.

## Solusi

Solusi ketika ada Overflow Warning :
- Bungkus Container ke dalam **Widget Expanded**
- Atau bisa juga menggunakan **Widget Flexible**


Perbedaan Flexible dan Expanded adalah widget Flexible memungkinkan child widget-nya berukuran lebih kecil dibandingkan ukuran Flexible. 

Sementara, child widget dari Expanded harus memiliki ukuran sesuai ukuran Expanded.


