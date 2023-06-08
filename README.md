# Constraints

constraints dapat memengaruhi posisi dan ukuran dari widget

Pegunaan:
Width
Height
Center
Align
alignment
alignment: Alignment(-1, -1),
alignment: Alignment.bottomRight,
child dalam child pakai padding
BoxConstraints
UnconstrainedBox

```
Root Widget -> Parent -> child 1 -> child 2
```

**Container memiliki parameter padding yang dapat memberikan jarak antara border dengan konten di dalamnya.**

---
## Solusi Overflow

Solusi ketika ada Overflow Warning :
- Bungkus Container ke dalam **Widget Expanded**
- Atau bisa juga menggunakan **Widget Flexible**


Perbedaan Flexible dan Expanded adalah widget Flexible memungkinkan child widget-nya berukuran lebih kecil dibandingkan ukuran Flexible. 

Sementara, child widget dari Expanded harus memiliki ukuran sesuai ukuran Expanded.

---

### Gesture Detector

- Membuat widget dapat merespon gestur tap.
- Membuat widget dapat merespon gestur double tap.
- Membuat widget dapat merespon gestur long press.
- Membuat widget dapat merespon gestur drag & pan.

**Beberapa method seperti :**
Container
BoxDecoration
bottomNavigationBar
MediaQuery
onVerticalDragUpdate
DragUpdateDetails
onHorizontalDragUpdate

**Widget :**
Stack() 

Widget Stack adalah widget untuk layouting yang mirip dengan Row atau Column, bedanya Stack menyusun widget secara bertumpuk. Karena Stack dapat memiliki beberapa child widget, maka gunakanlah parameter children.

Secara default posisi widget di bawah Stack akan berada di pojok kiri atas. 
Anda dapat mengatur posisi child widget dari Stack dengan widget Positioned.

Positioned memiliki parameter untuk mengatur jarak widget dengan sisi atas, bawah, kanan, mau pun kiri. Untuk itu, kita akan mengubah posisi Container agar berada di tengah. 

**Pan**

Gesture drag terbatas pada satu pergerakan secara horizontal atau vertikal. Agar widget dapat merespon drag secara vertikal dan horizontal bersamaan gunakan gesture pan.