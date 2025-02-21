# Tutorial 2 - Introduction to Game Engine

- Nama : Adnan Mukhtar
- NPM : 2006485245

### Latihan 1 - Playtest

- Apa saja pesan log yang dicetak pada panel Output?

  Pada saat menekan tombol play, log yang bertuliskan `"Platform initialized"` akan tercetak secara otomatis. Hal ini terjadi karena pada file scripting pada scene `PlatformBlue` terdapat function `_ready()` yang berguna untuk menandakan bahwa scene tersebut terpilih untuk dimainkan.

- Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?

  Pada saat menggerakkan landakan ke batas area bawah lalu menggerakkan kembali ke atas hingga menyentuh batas atas, pesan log yang dicetak oleh panel output adalah `"Reached objective!"`. Hal tersebut akan terus dicetak secara berulang jika melakukan gerakan hingga menyentuh bagian atas.

- Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

  Ya benar, terdapat kaitan antara ObjectiveArea dengan pesan log yang dicetak oleh Output pada percobaan sebelumya. Hal ini terjadi karena pada kode ObjectiveArea.gd terdapat kondisi dimana jika nama bodynya adalah BlueShip, maka akan mencetak `"Reached objective!"` pada panel Output. Yang dimana setiap BlueShip menyentuh node ObjectiveArea `"Reached objective!"` akan diecetak.

### Latihan 2 - Memanipulasi Node dan Scene

1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?

   Node bertipe Sprite berfungsi untuk menampilkan tekstur 2D. Dalam kasus Scene BlueShip dan StonePlatform child node bertipe Sprite digunakan untuk menampilkan gambar atau tekstur yang mewakili objek tersebut dalam dunia game.

2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

   RigidBody2D: Dikendalikan oleh simulasi fisika. Tidak bisa dikontrol secara langsung, tetapi pergerakannya ditentukan oleh gaya yang diterapkan padanya (misalnya gravitasi, impuls, dll).

   StaticBody2D: Tidak bisa dipengaruhi oleh gaya eksternal. Artinya, objek ini tidak akan bergerak akibat tumbukan atau gaya lain di sekitarnya.

3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   Tidak terjadi apa apa dan tidak ada perubahan. Karena perubahan massa tidak mempengaruhi kecepatan jatuh dan gravitasi memberikan percepatan konstan.

4. Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?

   Setelah mengubah nilai atribut Disabled yang awalnya Off menjadi On, lalu menjalankan scene MainLevel yang terjadi adalah setiap BlueShip mencapai/menyentus batas atas pada panel Output tidak mencetak `"Reached objective"`.

5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?

   Setelah memanipulasi atribut Position, Rotation, dan Scale, visualisai BlueShip menjadi berubah pada Viewport.

   - Position: Mengubah nilai X akan memindahkan BlueShip ke kanan atau kiri sedangkan mengubah nilai Y akan memindahkan BlueShip ke atas atau kebawah. Jika nilai X positif atau lebih besar akan bergerak ke kanan dan kebawah untuk nilai Y. Sebaliknya jika nilai X dan Y negatif atau lebih kecil akan bergerak ke kiri atau atas.
   - Rotation: Pada 2D rotasi menggunakan nilai derajat, sehingga jika kita mengubah nilainya maka BlueShip akan rotasi searah jarum jam jika nilainya positif dan sebaliknya jika nilainya negatif.
   - Scale: Mengubah nilai Scale akan mengubah ukuran BlueShip. Jika nilai lebih besar atau lebih kecil dari 1 dan tetap positif maka akan memperbesar ukurannya. Jika nilainya negatif dapat menyebabkan mirroring pada sumbu tertentu.

6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

   Karena StonePlatform dan StonePlatform2 merupakan child dari PlatformBlue, maka sesuai dengan hierarki node, setiap perubahan transformasi pada PlatformBlue akan mempengaruhi kedua child-nya. Oleh karena itu, posisi StonePlatform dan StonePlatform2 dihitung secara relatif terhadap PlatformBlue, bukan terhadap koordinat global.
