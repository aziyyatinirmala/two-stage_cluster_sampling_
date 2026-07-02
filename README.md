# two-stage_cluster_sampling_
# 📊 Estimasi Rata-Rata Pemanfaatan Media Sosial sebagai Sumber Informasi Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Two-Stage Cluster Sampling

## Deskripsi Proyek

Repository ini mendokumentasikan seluruh proses penelitian mengenai **estimasi rata-rata pemanfaatan media sosial sebagai sumber informasi akademik** pada mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**. Penelitian ini bertujuan untuk memperoleh estimasi rata-rata pemanfaatan media sosial berdasarkan data hasil survei yang dikumpulkan melalui penyebaran kuesioner kepada responden terpilih.

Proses pengambilan sampel dilakukan dalam dua tahap. Tahap pertama menggunakan **Cluster Sampling** dengan kelas sebagai klaster, sedangkan tahap kedua menggunakan **Simple Random Sampling (SRS)** untuk memilih mahasiswa pada klaster yang terpilih. Sebelum pengumpulan data utama, instrumen penelitian terlebih dahulu diuji validitas dan reliabilitas menggunakan data hasil uji coba (pilot test) yang melibatkan responden di luar sampel penelitian. Seluruh proses analisis data dilakukan menggunakan bahasa pemrograman **R**.

Repository ini menyajikan dokumentasi penelitian secara sistematis, mulai dari proses pengambilan sampel, pengolahan data, pengujian validitas dan reliabilitas instrumen, analisis statistik deskriptif, visualisasi data, pembobotan **Two-Stage Cluster Sampling**, hingga analisis survei untuk memperoleh estimasi rata-rata beserta ukuran ketelitian estimasi. Repository ini diharapkan dapat menjadi referensi dalam penerapan metode **Two-Stage Cluster Sampling** pada penelitian survei, khususnya dalam bidang statistika.

---

## Struktur Repository

```text
Estimasi-Rata-Rata-Pemanfaatan-Media-Sosial/
├── README.md
├── Executive_Summary.pdf
├── data/
│   ├── Data_Penelitian.xlsx
│   └── Randomisasi_Two_Stage_Cluster_Sampling.xlsx
├── script/
│   └── Analisis_Two_Stage_Cluster_Sampling.R
└── output_gambar/
    ├── Histogram.png
    ├── Boxplot.png
    ├── Bar_Chart.png
    └── Pie_Chart.png
```

---

Keterangan Struktur Repository

- **README.md** : Dokumentasi lengkap penelitian yang memuat latar belakang, metodologi, tahapan analisis, hasil, dan kesimpulan.
- **Executive_Summary.pdf** : Ringkasan penelitian yang mencakup tujuan, metode, hasil utama, dan kesimpulan.
- **data/** : Berisi data yang digunakan dalam penelitian, meliputi data hasil pengumpulan kuesioner serta hasil randomisasi kelas pada tahap pertama **Two-Stage Cluster Sampling**.
- **script/** : Berisi seluruh sintaks R yang digunakan untuk proses pengolahan dan analisis data, mulai dari import data, uji validitas, uji reliabilitas, analisis statistik deskriptif, visualisasi data, pembobotan **Two-Stage Cluster Sampling**, hingga analisis survei untuk memperoleh estimasi rata-rata.
- **output_gambar/** : Berisi visualisasi dan output hasil analisis, seperti histogram, boxplot, diagram batang, diagram lingkaran, serta grafik lain yang digunakan untuk mendukung interpretasi hasil penelitian.

---

## Daftar Isi

- [Deskripsi Proyek](#deskripsi-proyek)
- [Struktur Repository](#struktur-repository)
- [Latar Belakang](#latar-belakang)
- [Tujuan Penelitian](#tujuan-penelitian)
- [Metodologi Penelitian](#metodologi-penelitian)
- [Alur Analisis](#alur-analisis)
- [Langkah Analisis](#langkah-analisis)
- [Hasil dan Pembahasan](#hasil-dan-pembahasan)
- [Kesimpulan](#kesimpulan)
- [Rekomendasi](#rekomendasi)
- [Link Kuesioner](#link-kuesioner)

---

## Latar Belakang

Perkembangan teknologi informasi telah mendorong media sosial menjadi salah satu sarana yang banyak dimanfaatkan oleh mahasiswa, tidak hanya sebagai media komunikasi dan hiburan, tetapi juga sebagai sumber informasi akademik. Mahasiswa memanfaatkan media sosial untuk memperoleh materi perkuliahan, referensi belajar, informasi seminar, webinar, serta berbagai kegiatan akademik lainnya.

Pemanfaatan media sosial sebagai sumber informasi akademik dapat berbeda pada setiap mahasiswa. Oleh karena itu, diperlukan suatu survei untuk memperoleh gambaran mengenai rata-rata pemanfaatan media sosial sebagai sumber informasi akademik pada mahasiswa Program Studi Statistika Universitas Mataram.

Penelitian ini menggunakan metode **Two-Stage Cluster Sampling** untuk memperoleh sampel secara efisien. Tahap pertama dilakukan dengan memilih kelas sebagai klaster, sedangkan tahap kedua dilakukan dengan memilih mahasiswa secara acak dari kelas yang terpilih. Hasil penelitian diharapkan dapat memberikan estimasi rata-rata pemanfaatan media sosial sebagai sumber informasi akademik pada mahasiswa Program Studi Statistika Universitas Mataram.

---

## Tujuan Penelitian

Penelitian ini bertujuan untuk:

- Mengestimasi rata-rata pemanfaatan media sosial sebagai sumber informasi akademik pada mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**.
- Menguji validitas dan reliabilitas instrumen penelitian sebelum digunakan pada pengumpulan data utama.
- Mendeskripsikan karakteristik data menggunakan analisis statistik deskriptif dan visualisasi data.
- Menghitung bobot sampel berdasarkan desain **Two-Stage Cluster Sampling**.
- Melakukan analisis survei untuk memperoleh estimasi rata-rata beserta ukuran ketelitian estimasi, seperti **Standard Error (SE)** dan **Confidence Interval (CI)**.
---

## Metodologi Penelitian

### Jenis Penelitian

Penelitian ini merupakan penelitian survei dengan pendekatan kuantitatif yang bertujuan untuk mengestimasi rata-rata pemanfaatan media sosial sebagai sumber informasi akademik pada mahasiswa Program Studi Statistika Universitas Mataram. Penelitian menggunakan metode **Two-Stage Cluster Sampling** sebagai teknik pengambilan sampel sehingga setiap mahasiswa memiliki peluang yang diketahui untuk terpilih sebagai responden.

### Populasi dan Sampel

Populasi dalam penelitian ini adalah mahasiswa Program Studi Statistika Universitas Mataram yang berada pada dua kelas hasil pengacakan pada tahap pertama, yaitu **kelas 24A** dan **kelas 25A**, dengan jumlah populasi sebanyak **66 mahasiswa**.

Setelah dua kelas terpilih, seluruh mahasiswa pada kedua kelas tersebut dijadikan kerangka sampel. Selanjutnya dilakukan pengambilan sampel mahasiswa secara **Simple Random Sampling (SRS)** sehingga setiap mahasiswa memiliki peluang yang sama untuk terpilih sebagai responden.

Jumlah sampel ditentukan menggunakan rumus Slovin dengan tingkat kesalahan (error) sebesar **10%**.

Rumus Slovin:

n = N / (1 + N × e²)

Keterangan:
- N = 66 (jumlah populasi)
- e = 0,10

Perhitungan:

n = 66 / (1 + 66 × 0,10²)

= 66 / (1 + 66 × 0,01)

= 66 / (1 + 0,66)

= 66 / 1,66

= 39,76 ≈ 40

Berdasarkan hasil perhitungan tersebut, jumlah sampel yang digunakan dalam penelitian ini adalah **40 responden**.

### Teknik Sampling

Penelitian ini menggunakan metode **Two-Stage Cluster Sampling** yang dilakukan melalui dua tahap.

- **Tahap pertama (Cluster Sampling)** dilakukan dengan mengacak enam kelas aktif mahasiswa Program Studi Statistika Universitas Mataram menggunakan fungsi `RAND()` pada Microsoft Excel. Hasil pengacakan menghasilkan dua kelas terpilih, yaitu **24A** dan **25A**.
- **Tahap kedua (Simple Random Sampling)** dilakukan dengan memilih mahasiswa secara acak sederhana dari kedua kelas terpilih hingga diperoleh **40 responden** sebagai sampel penelitian.

### Instrumen Penelitian

Instrumen penelitian berupa kuesioner yang terdiri atas **12 butir pernyataan** mengenai pemanfaatan media sosial sebagai sumber informasi akademik dengan menggunakan skala Likert 1–4, yaitu:

| Jawaban | Skor |
|----------|:----:|
| Sangat Tidak Setuju (STS) | 1 |
| Tidak Setuju (TS) | 2 |
| Setuju (S) | 3 |
| Sangat Setuju (SS) | 4 |

Sebelum digunakan pada pengumpulan data utama, instrumen terlebih dahulu diuji coba kepada **10 mahasiswa di luar sampel penelitian**. Data hasil uji coba dianalisis menggunakan perangkat lunak **R** untuk menguji validitas dan reliabilitas instrumen. Hasil analisis menunjukkan bahwa seluruh butir pernyataan dinyatakan **valid dan reliabel**, sehingga instrumen layak digunakan pada penelitian utama. Hasil lengkap uji validitas dan uji reliabilitas disajikan pada bagian **Lampiran**.

### Variabel Penelitian

Penelitian ini memiliki satu variabel, yaitu **pemanfaatan media sosial sebagai sumber informasi akademik** pada mahasiswa Program Studi Statistika Universitas Mataram. Variabel tersebut diukur menggunakan kuesioner yang terdiri atas 12 butir pernyataan dengan 4 indikator serta skala Likert 1–4, yaitu:

| Indikator | Kode | Pernyataan |
|-----------|------|------------|
| **Intensitas Pemanfaatan Media Sosial** | P1 | Saya menggunakan media sosial untuk mencari informasi yang berkaitan dengan perkuliahan. |
| | P2 | Saya memanfaatkan media sosial untuk memperoleh materi atau referensi belajar. |
| | P3 | Saya mengikuti akun atau komunitas media sosial yang membagikan informasi akademik. |
| **Kemudahan Memperoleh Informasi Akademik** | P4 | Media sosial memudahkan saya memperoleh informasi akademik dengan cepat. |
| | P5 | Saya mudah menemukan informasi mengenai seminar, webinar, atau kegiatan akademik melalui media sosial. |
| | P6 | Media sosial membantu saya memperoleh informasi akademik kapan saja ketika dibutuhkan. |
| **Manfaat bagi Kegiatan Akademik** | P7 | Informasi akademik yang saya peroleh melalui media sosial membantu saya memahami materi perkuliahan. |
| | P8 | Media sosial membantu saya memperoleh referensi dalam menyelesaikan tugas kuliah. |
| | P9 | Media sosial mendukung proses belajar saya selama mengikuti perkuliahan. |
| **Kepercayaan dan Efektivitas Informasi** | P10 | Saya memeriksa kembali kebenaran informasi akademik yang diperoleh dari media sosial. |
| | P11 | Informasi akademik yang saya peroleh melalui media sosial umumnya dapat dipercaya. |
| | P12 | Secara keseluruhan, media sosial merupakan sumber informasi akademik yang bermanfaat bagi saya. |

Seluruh pernyataan diukur menggunakan skala Likert 1–4 dengan kategori **1 = Sangat Tidak Setuju (STS), 2 = Tidak Setuju (TS), 3 = Setuju (S), dan 4 = Sangat Setuju (SS)**. Skor dari setiap butir dijumlahkan untuk memperoleh skor total yang digunakan dalam proses analisis.

### Teknik Pengumpulan Data

Pengumpulan data dilakukan melalui penyebaran kuesioner secara daring menggunakan **Google Form** kepada responden yang telah terpilih sebagai sampel penelitian. Data yang terkumpul kemudian diekspor ke dalam format Microsoft Excel dan dianalisis menggunakan bahasa pemrograman **R** sesuai dengan tahapan analisis yang telah direncanakan.

---

## Alur Analisis

```text
Import Data
      │
      ▼
Pengolahan Data
      │
      ▼
Menyiapkan Variabel Penelitian
      │
      ▼
Data Cleaning
      │
      ▼
Uji Validitas
      │
      ▼
Uji Reliabilitas
      │
      ▼
Analisis Statistik Deskriptif
      │
      ▼
Visualisasi Data
      │
      ▼
Pembobotan Two-Stage Cluster Sampling
      │
      ▼
Analisis Survei
      │
      ▼
Estimasi Rata-rata, Standard Error (SE),
Confidence Interval (CI), Design Effect (DEFF),
dan Relative Standard Error (RSE)
```

---

## Langkah Analisis

Tahapan analisis dilakukan menggunakan bahasa pemrograman **R**. Setiap tahapan dijelaskan secara ringkas pada bagian berikut. **Script lengkap** dapat dilihat pada file **`script/Analisis_Two_Stage_Cluster_Sampling.R`** yang tersedia pada repository ini.

---

## 1. Import Data

### Tujuan

Mengimpor data hasil kuesioner ke dalam R dan memeriksa struktur awal data sebelum dilakukan analisis.

### Syntax

```r
library(readxl)

data <- read_excel("Data Responden Utama.xlsx")

str(data)

head(data)
```

### Penjelasan

Data diimpor menggunakan package **readxl**, kemudian dilakukan pemeriksaan struktur data dan enam observasi pertama untuk memastikan data berhasil dibaca dengan benar.

> **Catatan:** Script lengkap proses import data dapat dilihat pada folder **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 2. Pengolahan Data

### Tujuan

Menyiapkan data agar seluruh item pertanyaan dapat dianalisis sebagai data numerik.

### Syntax

```r
item <- data[,6:17]

item <- data.frame(
  lapply(item, function(x)
    as.numeric(as.character(x)))
)

data[,6:17] <- item
```

### Penjelasan

Tahap ini memilih 12 butir pertanyaan penelitian kemudian mengubah seluruh jawaban menjadi data numerik sehingga dapat digunakan pada proses analisis statistik.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 3. Menyiapkan Variabel Penelitian

### Tujuan

Membentuk variabel yang digunakan pada proses analisis.

### Syntax

```r
data$Skor_Total <- rowSums(item)

data$Kelas <- as.factor(data$Kelas)

data$Angkatan <- as.factor(data$Angkatan)
```

### Penjelasan

Pada tahap ini dihitung skor total setiap responden serta mengubah variabel kategorik menjadi faktor agar sesuai dengan kebutuhan analisis survei.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 4. Data Cleaning

### Tujuan

Memastikan kualitas data sebelum dilakukan analisis statistik.

### Syntax

```r
jumlah_responden <- nrow(data)

missing_value <- sum(is.na(data))

duplikat <- sum(duplicated(data))

Q1 <- quantile(data$Skor_Total,0.25)
Q3 <- quantile(data$Skor_Total,0.75)
```

### Penjelasan

Pemeriksaan dilakukan terhadap jumlah responden, missing value, data duplikat, dan outlier menggunakan metode **Interquartile Range (IQR)** sehingga data yang dianalisis memenuhi kualitas yang baik.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 5. Uji Validitas

### Tujuan

Mengetahui kemampuan setiap butir pertanyaan dalam mengukur variabel penelitian.

### Syntax

```r
for(i in 1:ncol(item)){

  skor_total_koreksi <- rowSums(item[,-i])

  hasil <- cor.test(item[,i], skor_total_koreksi)

}
```

### Penjelasan

Validitas setiap item diuji menggunakan korelasi Pearson antara skor item dengan skor total terkoreksi (Corrected Item-Total Correlation).

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 6. Uji Reliabilitas

### Tujuan

Mengukur tingkat konsistensi instrumen penelitian.

### Syntax

```r
library(psych)

hasil_alpha <- alpha(item)
```

### Penjelasan

Uji reliabilitas dilakukan menggunakan koefisien **Cronbach's Alpha**. Instrumen dinyatakan reliabel apabila nilai Alpha ≥ 0,70.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 7. Analisis Statistik Deskriptif

### Tujuan

Memberikan gambaran umum mengenai karakteristik data penelitian.

### Syntax

```r
summary(data$Skor_Total)

mean(data$Skor_Total)

sd(data$Skor_Total)
```

### Penjelasan

Statistik deskriptif digunakan untuk melihat ukuran pemusatan dan penyebaran data sebelum dilakukan analisis survei.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 8. Visualisasi Data

### Tujuan

Menyajikan distribusi data dan hubungan antar item secara visual.

### Syntax

```r
hist(data$Skor_Total)

boxplot(data$Skor_Total)

ggcorrplot(korelasi)
```

### Penjelasan

Visualisasi dilakukan menggunakan histogram, boxplot, bar chart, dan heatmap korelasi sehingga karakteristik data lebih mudah dipahami.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 9. Pembobotan Two-Stage Cluster Sampling

### Tujuan

Menghitung bobot setiap responden berdasarkan peluang pemilihannya.

### Syntax

```r
p1 <- m/M

p2 <- n/N

w_akhir <- (1/(p1*p2))
```

### Penjelasan

Bobot dihitung berdasarkan peluang pemilihan pada tahap pertama dan tahap kedua sehingga setiap responden dapat mewakili unit dalam populasi.

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.

---

## 10. Analisis Survei

### Tujuan

Mengestimasi rata-rata pemanfaatan media sosial sebagai sumber informasi akademik beserta ukuran ketelitiannya.

### Syntax

```r
desain <- svydesign(
  ids = ~Cluster,
  weights = ~bobot,
  data = data
)

hasil <- svymean(~Skor_Total, desain)

SE(hasil)

confint(hasil)
```

### Penjelasan

Analisis dilakukan menggunakan package **survey** untuk memperoleh estimasi rata-rata, Standard Error (SE), Confidence Interval (CI), Design Effect (DEFF), dan Relative Standard Error (RSE).

> **Catatan:** Script lengkap tersedia pada **`script/Analisis_Two_Stage_Cluster_Sampling.R`**.
---

## Hasil dan Pembahasan

### 1. Hasil Import Data

...

### 2. Hasil Pengolahan Data

...

### 3. Hasil Penyiapan Variabel Penelitian

...

### 4. Hasil Uji Validitas

...

### 5. Hasil Uji Reliabilitas

...

### 6. Hasil Analisis Statistik Deskriptif

...

### 7. Hasil Visualisasi Data

...

### 8. Hasil Pembobotan Two-Stage Cluster Sampling

...

### 9. Hasil Analisis Survei

Berisi:
- Estimasi rata-rata
- Standard Error (SE)
- Confidence Interval (CI) 95%
- Interpretasi hasil estimasi

---

## Kesimpulan

...

---

## Rekomendasi

...

---

## Referensi

...

---

## Link Kuesioner

🔗 https://...
