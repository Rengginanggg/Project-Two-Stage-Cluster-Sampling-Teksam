# Estimasi Tingkat Produktivitas Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Two-Stage Cluster Sampling

## Deskripsi Proyek

Proyek ini merupakan analisis statistik untuk mengestimasi tingkat produktivitas akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**. Data yang digunakan berasal dari hasil kuesioner yang terdiri dari 12 indikator produktivitas akademik. Data kemudian diolah untuk menghasilkan skor total setiap responden sebagai dasar analisis. Analisis dilakukan menggunakan perangkat lunak **R** dengan bantuan beberapa package, yaitu *survey* untuk analisis data survei dan *psych* untuk uji kualitas instrumen. Tahapan analisis meliputi uji validitas dan reliabilitas instrumen, pembentukan desain sampling, perhitungan bobot sampel, estimasi parameter populasi, serta evaluasi kualitas estimasi melalui standard error, interval kepercayaan, design effect, dan relative standard error. Hasil akhir penelitian berupa estimasi tingkat produktivitas akademik mahasiswa yang telah mempertimbangkan struktur sampling dan bobot sampel sehingga diperoleh hasil yang lebih representatif.

## Latar Belakang

Produktivitas akademik mahasiswa merupakan salah satu indikator penting dalam mengukur efektivitas proses pembelajaran di perguruan tinggi. Produktivitas ini mencerminkan kemampuan mahasiswa dalam menyelesaikan tugas akademik, mengelola waktu, serta berpartisipasi dalam kegiatan pembelajaran secara optimal (Wijaya & Nugroho, 2023). Dalam konteks pendidikan tinggi, mahasiswa dituntut untuk mampu menyeimbangkan aktivitas akademik dan non-akademik. Namun, berbagai penelitian menunjukkan bahwa tidak semua mahasiswa mampu mencapai tingkat produktivitas akademik yang optimal, terutama karena adanya permasalahan dalam manajemen waktu dan beban akademik yang tinggi (Alyah et al., 2026). Ketidakefektifan dalam mengelola waktu sering kali berdampak pada penundaan tugas dan menurunnya kualitas hasil belajar.

Selain itu, perkembangan teknologi digital juga memberikan pengaruh terhadap perilaku belajar mahasiswa. Intensitas penggunaan media sosial yang tinggi dapat mengganggu fokus belajar dan menurunkan kemampuan konsentrasi dalam menyelesaikan tugas akademik (Dinar et al., 2026). Kondisi ini menunjukkan bahwa faktor eksternal turut berperan dalam menentukan tingkat produktivitas akademik mahasiswa. Di sisi lain, fenomena tekanan akademik juga menjadi perhatian penting dalam dunia pendidikan tinggi. Beban tugas yang tinggi dapat memicu burnout akademik yang berdampak pada penurunan produktivitas belajar mahasiswa (Putri et al., 2026). Hal ini menunjukkan bahwa produktivitas akademik tidak hanya dipengaruhi oleh kemampuan individu, tetapi juga oleh kondisi psikologis dan lingkungan akademik.

Berdasarkan berbagai temuan tersebut, diperlukan kajian statistik untuk mengestimasi tingkat produktivitas akademik mahasiswa secara lebih representatif. Oleh karena itu, penelitian ini menggunakan metode **Two-Stage Cluster Sampling** yang mampu memberikan efisiensi dalam pengambilan sampel pada populasi yang terstruktur dalam kelompok kelas. Pendekatan ini diharapkan dapat menghasilkan estimasi yang akurat dan representatif terhadap kondisi mahasiswa secara keseluruhan.

## Tujuan Penelitian

Penelitian ini bertujuan untuk:

1. Mengestimasi tingkat produktivitas akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**.

2. Menghitung rata-rata terbobot, standard error (SE), dan interval kepercayaan 95% dari tingkat produktivitas akademik mahasiswa.

3. Mengevaluasi kualitas estimasi melalui ukuran **Design Effect (DEFF)** dan **Relative Standard Error (RSE)** untuk mengetahui tingkat ketelitian hasil estimasi.

4. Menganalisis distribusi kategori tingkat produktivitas akademik mahasiswa (rendah, sedang, dan tinggi) berdasarkan hasil pengukuran.

5. Membandingkan efisiensi pendekatan **Two-Stage Cluster Sampling** dalam menghasilkan estimasi dibandingkan pendekatan sampling sederhana secara teoritis.

# Metode Penelitian
## Jenis Penelitian
Penelitian ini merupakan penelitian kuantitatif dengan pendekatan survei yang bertujuan untuk mengestimasi tingkat prokrastinasi akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**. Data penelitian diperoleh melalui penyebaran kuesioner secara daring kepada responden yang terpilih sebagai sampel penelitian.

## Populasi Penelitian
Populasi dalam penelitian ini adalah seluruh mahasiswa Program Studi Statistika Universitas Mataram yang terdiri atas angkatan **2023, 2024, dan 2025**. Setiap angkatan terbagi menjadi dua kelas, yaitu kelas A dan kelas B, sehingga terdapat enam cluster dalam populasi penelitian. Berdasarkan proses randomisasi menggunakan Microsoft Excel, cluster yang terpilih sebagai objek penelitian adalah **angkatan 2024**, yaitu kelas A dan kelas B.

## Teknik Pengambilan Sampel
Penelitian ini menggunakan **Two-Stage Cluster Sampling**, yaitu teknik pengambilan sampel yang dilakukan melalui dua tahap.

### Tahap 1 — Pemilihan Cluster
Pada tahap pertama, unit sampling berupa **kelas** yang dikelompokkan berdasarkan angkatan. Pemilihan cluster dilakukan menggunakan proses randomisasi pada **Microsoft Excel** dengan fungsi `=RAND()` sehingga setiap cluster memiliki peluang yang sama untuk terpilih.

Berdasarkan hasil randomisasi, cluster yang terpilih adalah sebagai berikut.
| No | Cluster |
|----------|:------:|
| 1 | 2024 A |
| 2 | 2024 B |
### Tahap 2 — Pemilihan Responden

Setelah cluster terpilih, dilakukan pemilihan responden secara acak pada masing-masing kelas menggunakan Microsoft Excel.

| Kelas | Jumlah Sampel |
|:-----:|--------------:|
| A | 14 |
| B | 17 |
| **Total** | **31** |

---

## Instrumen Penelitian

Instrumen penelitian berupa kuesioner yang terdiri atas **12 butir pernyataan** mengenai prokrastinasi akademik.

Skala pengukuran menggunakan **Skala Likert 4 poin**.

| Skor | Keterangan |
|-----:|------------|
| 1 | Sangat Tidak Setuju (STS) |
| 2 | Tidak Setuju (TS) |
| 3 | Setuju (S) |
| 4 | Sangat Setuju (SS) |

Indikator yang digunakan meliputi:

- Menunda memulai tugas akademik.
- Menunda penyelesaian tugas akademik.
- Pengelolaan waktu.
- Dampak prokrastinasi akademik terhadap proses belajar.

---

## Teknik Pengumpulan Data

Data yang digunakan merupakan **data primer** yang diperoleh melalui penyebaran kuesioner menggunakan **Google Form** kepada responden yang telah terpilih berdasarkan teknik sampling.

---

## Perangkat Lunak

Penelitian ini menggunakan dua perangkat lunak, yaitu:

| Software | Kegunaan |
|----------|----------|
| Microsoft Excel | Randomisasi cluster dan pemilihan responden menggunakan fungsi `=RAND()` |
| R | Import data, uji validitas, uji reliabilitas, pembobotan sampel, analisis kualitas estimasi, serta visualisasi hasil |

---

## Alur Analisis Data

Analisis data dilakukan menggunakan perangkat lunak **R** dengan pendekatan **Two-Stage Cluster Sampling** melalui tahapan berikut:

```text
Import Data
      │
      ▼
Data Cleaning & Transformasi Skor
      │
      ├── Konversi item menjadi numerik
      └── Perhitungan skor total (TOTAL)
      │
      ▼
Uji Kualitas Instrumen
      │
      ├── Uji Validitas Item
      └── Uji Reliabilitas (Cronbach’s Alpha)
      │
      ▼
Penentuan Desain Sampel
      │
      ├── Definisi cluster (kelas)
      ├── Penentuan ukuran sampel tiap tahap
      └── Pembentukan variabel desain survei
      │
      ▼
Pembobotan Sampel
      │
      ├── Perhitungan peluang inklusi (P1, P2, Pi)
      └── Perhitungan bobot (weight = 1/Pi)
      │
      ▼
Pembentukan Desain Survei
      │
      └── Two-Stage Cluster Sampling Design (svydesign)
      │
      ▼
Estimasi Parameter Populasi
      │
      ├── Rata-rata terbobot
      ├── Standard Error (SE)
      ├── Interval Kepercayaan 95%
      ├── Design Effect (DEFF)
      └── Relative Standard Error (RSE)
      │
      ▼
Analisis Kualitas Estimasi
      │
      ├── Evaluasi presisi (SE, RSE)
      └── Kelayakan estimasi (RSE < 25%)
      │
      ▼
Distribusi Kategori Variabel
      │
      └── Klasifikasi (Rendah, Sedang, Tinggi)
      │
      ▼
Visualisasi Data
      │
      ├── Diagram batang
      └── Diagram pie
      │
      ▼
Perbandingan Metode (Opsional/Advanced)
      │
      ├── Simple Random Sampling (SRS)
      └── Two-Stage Cluster Sampling
      │
      ▼
Pelaporan (Storytelling Statistik)
      │
      ├── Executive Summary
      ├── Hasil & Pembahasan
      └── Kesimpulan
```

## Tahapan Analisis
# 1. Import Data
Tahap ini bertujuan untuk mengimpor data hasil penyebaran kuesioner yang telah diekspor dari **Google Form** ke dalam perangkat lunak **R**. Data yang berhasil diimpor selanjutnya digunakan sebagai data utama dalam proses analisis, sehingga perlu dipastikan bahwa data telah terbaca dengan benar, baik jumlah observasi maupun tipe setiap variabel.
### Syntax R
```r
# Memanggil package
library(readxl)

# Mengimpor data dari file Excel
data_prokrastinasi <- read_excel("D:/tugas kuliah/Teknik Sampling/Projek UAS/Data.xlsx", sheet=3)

# Melihat struktur data
str(data_prokrastinasi)

# Menampilkan enam baris pertama
head(data_prokrastinasi)

# Menampilkan ringkasan data
summary(data_prokrastinasi)
```
### Penjelasan Syntax
- `library(readxl)`
  - Memanggil package **readxl** yang digunakan untuk membaca file Microsoft Excel (`.xlsx`).
- `read_excel("Data_Prokrastinasi.xlsx")`
  - Mengimpor data hasil kuesioner dari file Excel ke dalam objek **`data_prokrastinasi`** sehingga dapat diolah di R.
- `str(data_prokrastinasi)`
  - Menampilkan struktur data, seperti jumlah observasi, jumlah variabel, nama variabel, serta tipe data masing-masing variabel.
- `head(data_prokrastinasi)`
  - Menampilkan enam baris pertama data untuk memastikan data telah berhasil diimpor dengan benar.
- `summary(data_prokrastinasi)`
  - Menampilkan ringkasan statistik setiap variabel sebagai langkah awal untuk memeriksa isi data.

# 2. Uji Validitas

Uji validitas bertujuan untuk mengetahui apakah setiap butir pernyataan dalam kuesioner mampu mengukur variabel **Produktivitas Akademik Mahasiswa** secara tepat. Pengujian dilakukan menggunakan **Corrected Item-Total Correlation** dari package **psych**. Suatu item dinyatakan valid apabila memiliki nilai **r hitung > r tabel (0,361)** sehingga layak digunakan pada tahap analisis selanjutnya.

Syntax R:

```r
# Memilih item pertanyaan
item <- data_prokrastinasi[, paste0("P", 1:12)]

# Mengubah seluruh item menjadi numerik
item[] <- lapply(item, as.numeric)

# Menghitung validitas dan reliabilitas
hasil <- psych::alpha(item)

# Membuat tabel hasil validitas
hasil_validitas <- data.frame(
  Item = rownames(hasil$item.stats),
  r_hitung = round(hasil$item.stats$r.drop, 3)
)

# Menentukan nilai r tabel
r_tabel <- 0.361

# Menentukan keputusan
hasil_validitas$Keputusan <- ifelse(
  hasil_validitas$r_hitung > r_tabel,
  "Valid",
  "Tidak Valid"
)

# Menampilkan hasil
print(hasil_validitas)
```
Penjelasan Syntax:

- `item <- data_prokrastinasi[, paste0("P", 1:12)]`
  - Memilih seluruh item kuesioner (P1–P12) yang akan diuji validitasnya.

- `item[] <- lapply(item, as.numeric)`
  - Mengubah seluruh data menjadi tipe numerik agar dapat diproses pada analisis statistik.

- `psych::alpha(item)`
  - Menghitung **Corrected Item-Total Correlation** dan **Cronbach's Alpha** menggunakan package **psych**.

- `data.frame()`
  - Membuat tabel yang berisi nama item dan nilai korelasi masing-masing item.

- `rownames(hasil$item.stats)`
  - Mengambil nama setiap item pertanyaan.

- `hasil$item.stats$r.drop`
  - Mengambil nilai **Corrected Item-Total Correlation (r hitung)** dari masing-masing item.

- `round(..., 3)`
  - Membulatkan nilai korelasi hingga tiga angka di belakang koma.

- `r_tabel <- 0.361`
  - Menentukan nilai r tabel pada taraf signifikansi 5% dengan jumlah responden sebanyak 30 orang.

- `ifelse()`
  - Memberikan keputusan **Valid** apabila `r_hitung > r_tabel`, sedangkan apabila `r_hitung ≤ r_tabel` maka dinyatakan **Tidak Valid**.

- `print(hasil_validitas)`
  - Menampilkan hasil uji validitas dalam bentuk tabel.
 
# 3. Uji Reabilitas

Uji reliabilitas bertujuan untuk mengetahui tingkat konsistensi instrumen penelitian dalam mengukur variabel **Produktivitas Akademik Mahasiswa**. Pengujian dilakukan menggunakan metode **Cronbach's Alpha**.

Syntax R:

```r
hasil_alpha <- alpha(item)

print(hasil_alpha)

cat("Cronbach's Alpha =",
    round(hasil_alpha$total$raw_alpha,3),"\n")

if(hasil_alpha$total$raw_alpha >= 0.70){

  cat("Keputusan : Instrumen Reliabel")

}else{

  cat("Keputusan : Instrumen Tidak Reliabel")

}
```
Penjelasan Syntax:

- `alpha(item)` menghitung nilai **Cronbach's Alpha**.
- `print(hasil_alpha)` menampilkan hasil uji reliabilitas.
- `hasil_alpha$total$raw_alpha` mengambil nilai **Cronbach's Alpha**.
- `round(...,3)` membulatkan hasil hingga tiga angka di belakang koma.
- `cat()` menampilkan nilai alpha dan keputusan.
- `if...else` menentukan apakah instrumen reliabel atau tidak.

# 4. Statistik Deskriptif

Statistik deskriptif digunakan untuk memberikan gambaran umum mengenai data penelitian, khususnya nilai rata-rata, minimum, maksimum, dan standar deviasi dari variabel **Produktivitas Akademik Mahasiswa**.

Syntax R:

```r
# Statistik deskriptif setiap item
deskriptif_item <- data.frame(
  Mean = sapply(item, mean),
  SD = sapply(item, sd),
  Min = sapply(item, min),
  Max = sapply(item, max)
)

print(deskriptif_item)

# Statistik deskriptif total skor
deskriptif_total <- data.frame(
  Mean = mean(data_prokrastinasi$TOTAL),
  SD = sd(data_prokrastinasi$TOTAL),
  Min = min(data_prokrastinasi$TOTAL),
  Max = max(data_prokrastinasi$TOTAL)
)

print(deskriptif_total)
```

---

Penjelasan Syntax:

- `sapply(item, mean)`
  - Menghitung nilai rata-rata untuk setiap item pertanyaan (P1–P12).

- `sapply(item, sd)`
  - Menghitung standar deviasi untuk setiap item.

- `sapply(item, min)` dan `sapply(item, max)`
  - Menghitung nilai minimum dan maksimum dari setiap item.

- `data.frame()`
  - Membuat tabel statistik deskriptif agar hasil lebih rapi dan mudah dibaca.

- `mean(data_prokrastinasi$TOTAL)`
  - Menghitung rata-rata total skor responden.

- `sd(data_prokrastinasi$TOTAL)`
  - Menghitung standar deviasi total skor.

- `min()` dan `max()`
  - Menghitung nilai minimum dan maksimum total skor responden.

# 5. Distribusi Kategori Variabel

Distribusi kategori digunakan untuk mengelompokkan nilai **TOTAL skor produktivitas akademik mahasiswa** ke dalam beberapa kategori yaitu rendah, sedang, dan tinggi. Hal ini bertujuan untuk memberikan gambaran umum kondisi variabel penelitian sebelum dilakukan analisis estimasi.

Syntax R:

```r
# Membuat kategori berdasarkan total skor
data_prokrastinasi$kategori <- cut(
  data_prokrastinasi$TOTAL,
  breaks = c(12, 24, 36, 48),
  labels = c("Rendah", "Sedang", "Tinggi"),
  include.lowest = TRUE
)

# Tabel distribusi kategori
table(data_prokrastinasi$kategori)
```
Penjelasan Syntax:

- `cut()` digunakan untuk mengelompokkan data numerik menjadi beberapa kategori.
- `data_prokrastinasi$TOTAL` adalah skor total dari 12 item.
- `breaks = c(12, 24, 36, 48)` adalah batas interval kategori.
- `labels` adalah nama kategori (Rendah, Sedang, Tinggi).
- `table()` digunakan untuk menghitung jumlah responden pada setiap kategori.

# 6. Perhitungan Peluang Pemilihan Sampel

Perhitungan peluang pemilihan sampel bertujuan untuk menentukan probabilitas setiap individu terpilih dalam desain **Two-Stage Cluster Sampling**, yang terdiri dari:
- Tahap 1: pemilihan kelas (cluster)
- Tahap 2: pemilihan mahasiswa dalam kelas

Hasil ini digunakan untuk menghitung bobot sampel pada analisis estimasi.

Syntax R:

```r
## Tahap 1: Pemilihan Kelas
N_cluster <- 10   # jumlah kelas populasi
n_cluster <- 3    # jumlah kelas sampel

P1 <- n_cluster / N_cluster
P1


## Tahap 2: Pemilihan Mahasiswa
Mi <- 30   # jumlah mahasiswa per kelas
mi <- 10   # jumlah mahasiswa sampel per kelas

P2 <- mi / Mi
P2


## Peluang Total (Inclusion Probability)
Pi <- P1 * P2
Pi
```

Penjelasan Syntax:

- `N_cluster` = jumlah seluruh kelas (populasi)
- `n_cluster` = jumlah kelas yang dipilih sebagai sampel
- `P1` = peluang kelas terpilih pada tahap 1

- `Mi` = jumlah mahasiswa dalam satu kelas
- `mi` = jumlah mahasiswa yang diambil dari setiap kelas
- `P2` = peluang mahasiswa terpilih dalam kelas

- `Pi` = peluang total seorang mahasiswa terpilih (P1 × P2)

# 7. Perhitungan Bobot Sampling

Bobot sampling digunakan untuk memberikan pembobotan pada setiap responden berdasarkan peluang pemilihan sampel dalam desain **Two-Stage Cluster Sampling**. Bobot ini diperlukan agar hasil estimasi dapat merepresentasikan populasi secara lebih akurat.

Syntax R:

```r
# Menghitung bobot sampel
data_prokrastinasi$weight <- 1 / Pi

# Menampilkan bobot
head(data_prokrastinasi$weight)
```
Penjelasan Syntax:

- `Pi`
  - Merupakan peluang total pemilihan sampel (inclusion probability) dari hasil tahap sebelumnya.

- `1 / Pi`
  - Rumus untuk menghitung **sampling weight**, yaitu kebalikan dari peluang pemilihan.

- `data_prokrastinasi$weight`
  - Membuat variabel baru bernama **weight** di dalam dataset untuk menyimpan nilai bobot setiap responden.

- `head()`
  - Menampilkan beberapa nilai awal bobot untuk pengecekan hasil perhitungan.

# 8. Pembuatan Desain Survei

Pembuatan desain survei dilakukan untuk mendefinisikan struktur pengambilan sampel pada metode **Two-Stage Cluster Sampling**, yang terdiri dari pemilihan kelas sebagai unit cluster (tahap 1) dan mahasiswa sebagai unit individu (tahap 2). Desain ini digunakan sebagai dasar dalam perhitungan estimasi berbobot.

Syntax R:

```r
library(survey)

# Membuat desain survei two-stage cluster sampling
design_survei <- svydesign(
  id = ~cluster,
  weights = ~weight,
  data = data_desain
)

# Melihat struktur desain
design_survei
```

---

Penjelasan Syntax:

- `library(survey)`
  - Memanggil package **survey** untuk analisis data survei kompleks.

- `svydesign()`
  - Fungsi untuk membuat desain survei berdasarkan struktur sampling.

- `id = ~cluster`
  - Menentukan variabel **cluster (kelas)** sebagai unit tahap pertama.

- `weights = ~weight`
  - Menggunakan bobot sampling yang sudah dihitung sebelumnya (1/Pi).

- `data = data_desain`
  - Dataset yang sudah berisi variabel cluster, responden, TOTAL, dan weight.

- `design_survei`
  - Objek desain survei yang akan digunakan untuk estimasi (mean, SE, CI, dll).

# 9. Estimasi Tingkat Produktivitas Akademik

Estimasi ini bertujuan untuk menghitung rata-rata tingkat **Produktivitas Akademik Mahasiswa Program Studi Statistika Universitas Mataram** berdasarkan desain **Two-Stage Cluster Sampling** dengan mempertimbangkan bobot sampel.

Syntax R:

```r
## Estimasi rata-rata terbobot
estimasi_mean <- svymean(
  ~TOTAL,
  design_survei
)

estimasi_mean
```
Penjelasan Syntax:

- `svymean()`
  - Fungsi dari package `survey` untuk menghitung **rata-rata berbobot**.

- `~TOTAL`
  - Variabel yang dianalisis, yaitu skor total produktivitas akademik mahasiswa.

- `design_survei`
  - Desain survei yang sudah mencakup struktur cluster dan bobot sampel.

# 10. Analisis Kualitas Estimasi

Analisis kualitas estimasi bertujuan untuk mengevaluasi ketelitian hasil estimasi yang diperoleh dari desain **Two-Stage Cluster Sampling**. Ukuran kualitas yang digunakan meliputi **Standard Error (SE)**, **Interval Kepercayaan (95%)**, **Design Effect (DEFF)**, dan **Relative Standard Error (RSE)**. Semakin kecil nilai SE, DEFF, dan RSE, maka hasil estimasi semakin baik dan semakin layak digunakan untuk menggambarkan kondisi populasi.

## 10.1 Interval Kepercayaan (95%)

Syntax R:

```r
confint(estimasi_mean)
```

Penjelasan Syntax:

- `confint()` digunakan untuk menghitung interval kepercayaan suatu parameter estimasi.
- `estimasi_mean` merupakan objek hasil estimasi rata-rata menggunakan fungsi `svymean()`.
- Hasil yang diperoleh berupa batas bawah (*Lower*) dan batas atas (*Upper*) interval kepercayaan 95%.

---

## 10.2 Design Effect (DEFF)

Syntax R:

```r
svymean(
  ~TOTAL,
  design_survei,
  deff = TRUE
)
```
Penjelasan Syntax:

- `deff = TRUE` digunakan untuk menghitung **Design Effect (DEFF)**.
- Nilai DEFF menunjukkan efisiensi desain sampling dibandingkan dengan Simple Random Sampling (SRS).
- DEFF < 1 menunjukkan desain lebih efisien daripada SRS.
- DEFF = 1 menunjukkan efisiensi sama dengan SRS.
- DEFF > 1 menunjukkan varians estimasi lebih besar dibandingkan SRS.

---

## 10.3 Relative Standard Error (RSE)

Syntax R:

```r
mean_est <- coef(estimasi_mean)
se_est <- SE(estimasi_mean)

RSE <- (se_est / mean_est) * 100
RSE
```

Penjelasan Syntax:

- `coef()` digunakan untuk mengambil nilai estimasi rata-rata.
- `SE()` digunakan untuk mengambil nilai Standard Error dari hasil estimasi.
- `RSE` dihitung menggunakan rumus:

\[
RSE=\frac{SE}{Mean}\times100\%
\]

- Estimasi dinyatakan layak dipublikasikan apabila nilai **RSE < 25%**.


# 11. Visualisasi Data

Visualisasi data dilakukan untuk memberikan gambaran distribusi tingkat produktivitas akademik mahasiswa berdasarkan kategori (rendah, sedang, tinggi).

## 11.1 Membuat Kategori Data

Syntax R:

```r
data_prokrastinasi$kategori <- cut(
  data_prokrastinasi$TOTAL,
  breaks = c(12, 24, 36, 48),
  labels = c("Rendah", "Sedang", "Tinggi"),
  include.lowest = TRUE
)

kategori <- table(data_prokrastinasi$kategori)
kategori
```

Penjelasan Syntax:

- `cut()` digunakan untuk mengelompokkan nilai TOTAL ke dalam kategori.
- `breaks` menentukan batas interval kategori.
- `labels` memberi nama kategori.
- `table()` digunakan untuk menghitung frekuensi setiap kategori.

---

## 11.2 Diagram Batang

Syntax R:

```r
barplot(
  kategori,
  col = c("tomato", "gold", "seagreen3"),
  main = "Distribusi Tingkat Produktivitas Akademik Mahasiswa",
  xlab = "Kategori",
  ylab = "Jumlah Responden",
  ylim = c(0, max(kategori) + 5)
)
```

Penjelasan Syntax:

- `barplot()` digunakan untuk membuat diagram batang.
- `col` menentukan warna tiap kategori.
- `main` adalah judul grafik.
- `xlab` dan `ylab` adalah label sumbu.
- `ylim` mengatur batas sumbu Y.

## Hasil dan Pembahasan
# 1. Deskripsi Data
Deskripsi data bertujuan untuk memberikan gambaran umum mengenai karakteristik data penelitian yang digunakan, khususnya pada variabel produktivitas akademik mahasiswa. Hasil analisis menunjukkan nilai rata-rata setiap item berada pada rentang 3.40 hingga 3.77 dengan standar deviasi yang relatif kecil, yang menunjukkan bahwa jawaban responden cenderung homogen.

 Statistik Deskriptif Total Skor

| Statistik | Nilai |
|----------|------:|
| Mean | 43.03 |
| Standar Deviasi | 4.75 |
| Minimum | 32 |
| Maksimum | 48 |

Berdasarkan hasil tersebut, dapat disimpulkan bahwa tingkat produktivitas akademik mahasiswa berada pada kategori relatif tinggi dengan sebaran data yang tidak terlalu bervariasi.

# 2. Uji Validitas

Hipotesis yang digunakan pada uji validitas adalah sebagai berikut:

**H₀** : Item pernyataan **tidak valid**, yaitu nilai korelasi item terhadap skor total (r hitung) ≤ r tabel (0,361).

**H₁** : Item pernyataan **valid**, yaitu nilai korelasi item terhadap skor total (r hitung) > r tabel (0,361).

Kriteria Keputusan:

Jika **r hitung > r tabel (0,361)**, maka **H₀ ditolak** dan **H₁ diterima**, sehingga item dinyatakan **valid**.

Jika **r hitung ≤ r tabel (0,361)**, maka **H₀ diterima**, sehingga item dinyatakan **tidak valid**.

Tabel ? Hasil Uji Validitas

| Item | r hitung | Keputusan |
|:----:|:---------:|:---------:|
| P1 | 0.907 | Valid |
| P2 | 0.664 | Valid |
| P3 | 0.676 | Valid |
| P4 | 0.626 | Valid |
| P5 | 0.581 | Valid |
| P6 | 0.795 | Valid |
| P7 | 0.542 | Valid |
| P8 | 0.687 | Valid |
| P9 | 0.717 | Valid |
| P10 | 0.749 | Valid |
| P11 | 0.699 | Valid |
| P12 | 0.751 | Valid |

Interpretasi:
Berdasarkan hasil uji validitas diperoleh bahwa seluruh item pernyataan memiliki nilai **r hitung** yang lebih besar dibandingkan **r tabel (0,361)**. Dengan demikian, seluruh item (P1–P12) dinyatakan **valid** dan mampu mengukur variabel **Produktivitas Akademik Mahasiswa**. Oleh karena itu, seluruh butir pernyataan layak digunakan dalam proses analisis selanjutnya.

# 3. Uji Reabilitas

**H₀** : Instrumen penelitian tidak reliabel (Cronbach's Alpha < 0,70).

**H₁** : Instrumen penelitian reliabel (Cronbach's Alpha ≥ 0,70).

Kriteria Keputusan:

Jika **Cronbach's Alpha ≥ 0,70**, maka instrumen dinyatakan **Reliabel**.

Jika **Cronbach's Alpha < 0,70**, maka instrumen dinyatakan **Tidak Reliabel**.

Output:

| Statistik | Nilai |
|:----------|------:|
| Cronbach's Alpha | 0.930 |
| Keputusan | Instrumen Reliabel |

Interpretasi:

Berdasarkan hasil uji reliabilitas diperoleh nilai **Cronbach's Alpha sebesar 0,930**. Nilai tersebut lebih besar dari batas minimum **0,70**, sehingga **H₀ ditolak** dan **H₁ diterima**. Dengan demikian, instrumen penelitian dinyatakan **reliabel**, yang berarti seluruh butir pernyataan memiliki tingkat konsistensi internal yang sangat baik dalam mengukur variabel **Produktivitas Akademik Mahasiswa**. Oleh karena itu, instrumen layak digunakan pada tahap analisis selanjutnya.
   
# 4. Statistik Deskriptif

Tabel . Statistik Deskriptif Total Skor

| Statistik | Nilai |
|----------|------:|
| Mean | 43.03 |
| SD | 4.75 |
| Min | 32 |
| Max | 48 |

Interpretasi:

Berdasarkan hasil statistik deskriptif, diperoleh nilai rata-rata total skor sebesar **43,03** dengan standar deviasi **4,75**. Nilai minimum sebesar **32** dan maksimum sebesar **48**. Hal ini menunjukkan bahwa tingkat produktivitas akademik mahasiswa cenderung tinggi dan variasi jawaban responden relatif kecil (homogen).

# 5. Distribusi Kategori

| Kategori | Jumlah |
|----------|------:|
| Rendah | 0 |
| Sedang | 3 |
| Tinggi | 27 |

Interpretasi:

Hasil distribusi kategori menunjukkan bahwa sebagian besar responden berada pada kategori **tinggi** dengan jumlah 27 responden, sedangkan kategori sedang sebanyak 3 responden dan tidak terdapat responden pada kategori rendah.

Hal ini menunjukkan bahwa tingkat **Produktivitas Akademik Mahasiswa** cenderung tinggi pada sampel penelitian, sehingga mayoritas mahasiswa memiliki tingkat produktivitas yang baik berdasarkan total skor instrumen penelitian.

# 6. Perhitungan Peluang Pemilihan sampel

| Komponen | Nilai |
|----------|------:|
| P1 (Peluang kelas terpilih) | 0.3 |
| P2 (Peluang mahasiswa dalam kelas) | 0.3333333 |
| Pi (Peluang total) | 0.1 |

Interpretasi:

Hasil perhitungan menunjukkan bahwa:
- Peluang kelas terpilih (P1) = **0,3**
- Peluang mahasiswa dalam kelas (P2) = **0,3333**
- Peluang total pemilihan sampel (Pi) = **0,1**

Artinya, setiap mahasiswa memiliki peluang sebesar **10%** untuk terpilih sebagai responden dalam desain **Two-Stage Cluster Sampling**. Nilai ini menjadi dasar dalam perhitungan bobot sampel pada tahap analisis selanjutnya.

# 7. Perhitungan Bobot Sampling

```text
weight = 10
```

Interpretasi:

Hasil perhitungan menunjukkan bahwa seluruh responden memiliki nilai bobot yang sama yaitu **10**. Hal ini terjadi karena nilai peluang pemilihan sampel (Pi) sama untuk setiap responden, sehingga menghasilkan desain sampel yang bersifat **self-weighting**.

Dengan demikian, setiap responden memiliki kontribusi yang sama dalam proses estimasi pada tahap analisis selanjutnya.

# 8. Pembuatan Desain Survei

Hasil desain survei menunjukkan bahwa data penelitian telah dibentuk dalam struktur **Cluster Sampling (1-level cluster design)** dengan jumlah 3 cluster yang merepresentasikan kelas dalam populasi. Desain ini menunjukkan bahwa setiap responden tidak dipilih secara individu secara langsung, tetapi melalui pemilihan kelompok (kelas) terlebih dahulu, kemudian diikuti oleh pemilihan mahasiswa dalam kelas tersebut. Dengan demikian, data sudah sesuai dengan struktur **Two-Stage Cluster Sampling**, dan siap digunakan untuk tahap analisis lanjutan seperti estimasi rata-rata, standar error, interval kepercayaan, serta ukuran presisi (DEFF dan RSE).

# 9. Estimasi Tingkat Produktivitas Akademik

| Variabel | Mean | SE |
|----------|-----:|----:|
| TOTAL | 43.033 | 0.4372 |

Hasil estimasi menunjukkan bahwa **rata-rata tingkat Produktivitas Akademik Mahasiswa Program Studi Statistika Universitas Mataram** adalah sebesar **43,033** dari skor maksimum 48. Nilai tersebut menunjukkan bahwa secara umum mahasiswa dalam sampel memiliki **tingkat produktivitas akademik yang tinggi**. Selain itu, nilai **Standard Error (SE) sebesar 0,4372** menunjukkan bahwa tingkat kesalahan sampling relatif kecil, sehingga rata-rata yang dihasilkan memiliki tingkat ketelitian yang baik dan dapat mewakili populasi penelitian.

# 10. Analisis Kualitas Estimasi

## 10.1 Interval Kepercayaan (95%)

| Variabel | Batas Bawah | Batas Atas |
|----------|------------:|-----------:|
| TOTAL | 42.177 | 43.890 |

Berdasarkan hasil perhitungan, diperoleh interval kepercayaan 95% sebesar **42,177 hingga 43,890**. Hal ini menunjukkan bahwa dengan tingkat kepercayaan sebesar **95%**, rata-rata produktivitas akademik mahasiswa Program Studi Statistika Universitas Mataram diperkirakan berada pada rentang nilai tersebut.

## 10.2 Design Effect (DEFF)

| Variabel | Mean | SE | DEFF |
|----------|-----:|----:|-----:|
| TOTAL | 43.033 | 0.437 | 0.283 |

Hasil perhitungan menunjukkan nilai **Design Effect (DEFF)** sebesar **0,283**. Nilai tersebut lebih kecil dari 1, sehingga menunjukkan bahwa desain **Two-Stage Cluster Sampling** yang digunakan memiliki efisiensi yang lebih baik dibandingkan dengan **Simple Random Sampling (SRS)** dalam penelitian ini. Dengan demikian, varians estimasi yang dihasilkan relatif lebih kecil sehingga estimasi menjadi lebih efisien.

## 10.3 Relative Standard Error (RSE)

| Variabel | Mean | SE | RSE (%) | Keputusan |
|----------|-----:|----:|---------:|-----------|
| TOTAL | 43.033 | 0.437 | 1.016 | Layak Dirilis |

Nilai **Relative Standard Error (RSE)** yang diperoleh sebesar **1,016%**. Nilai tersebut jauh di bawah batas maksimum **25%**, sehingga hasil estimasi dinyatakan **layak dirilis**. Hal ini menunjukkan bahwa estimasi rata-rata produktivitas akademik memiliki tingkat ketelitian yang tinggi dan dapat digunakan sebagai representasi kondisi populasi penelitian.

# 11. Visualisasi Data

<img width="1191" height="742" alt="image" src="https://github.com/user-attachments/assets/3a0ec631-f095-4802-9c3d-b0c1fe570139" />

Hasil visualisasi menunjukkan bahwa distribusi tingkat produktivitas akademik mahasiswa didominasi oleh kategori **tinggi**, yaitu sebanyak **27 responden**. Sementara itu, kategori **sedang hanya sebanyak 3 responden**, dan tidak terdapat responden pada kategori rendah. Hal ini mengindikasikan bahwa sebagian besar mahasiswa Program Studi Statistika Universitas Mataram memiliki tingkat produktivitas akademik yang baik berdasarkan hasil pengukuran instrumen penelitian. Distribusi yang tidak merata ini juga menunjukkan kecenderungan data yang terpusat pada kategori tinggi.

## Kesimpulan

Berdasarkan hasil analisis yang telah dilakukan, dapat disimpulkan bahwa penelitian ini berhasil mengestimasi tingkat produktivitas akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan metode **Two-Stage Cluster Sampling**. Hasil uji instrumen menunjukkan bahwa kuesioner yang digunakan memiliki kualitas yang baik dengan nilai **Cronbach’s Alpha sebesar 0.93**, sehingga dinyatakan reliabel dalam mengukur variabel penelitian. Selain itu, seluruh item pertanyaan juga memiliki kontribusi yang memadai terhadap konstruk yang diukur. Berdasarkan hasil estimasi, diperoleh rata-rata tingkat produktivitas akademik mahasiswa sebesar **43.03** dengan interval kepercayaan 95% antara **42.18 hingga 43.89**. Nilai standard error yang rendah serta nilai **Relative Standard Error (RSE) sebesar 1.01% (< 25%)** menunjukkan bahwa estimasi yang dihasilkan memiliki tingkat ketelitian yang sangat baik dan layak untuk digunakan. Nilai **Design Effect (DEFF) sebesar 0.28** menunjukkan bahwa penggunaan desain Two-Stage Cluster Sampling lebih efisien dalam menghasilkan estimasi dibandingkan pendekatan sederhana secara teoritis. Distribusi kategori menunjukkan bahwa sebagian besar mahasiswa berada pada kategori **tinggi**, sehingga dapat disimpulkan bahwa tingkat produktivitas akademik mahasiswa cenderung baik secara umum. Dengan demikian, metode Two-Stage Cluster Sampling terbukti efektif dalam menghasilkan estimasi yang representatif terhadap kondisi populasi mahasiswa.

## Saran

Berdasarkan hasil penelitian yang telah dilakukan, terdapat beberapa saran yang dapat diberikan sebagai berikut:

1. **Bagi mahasiswa**, diharapkan dapat mempertahankan bahkan meningkatkan produktivitas akademik melalui pengelolaan waktu yang lebih baik, penyusunan jadwal belajar yang teratur, serta peningkatan partisipasi dalam kegiatan pembelajaran.

2. **Bagi Program Studi Statistika Universitas Mataram**, hasil penelitian ini dapat dijadikan sebagai salah satu informasi dalam mengevaluasi dan merancang program yang mendukung peningkatan produktivitas akademik mahasiswa, seperti pelatihan manajemen waktu, pendampingan akademik, maupun penguatan budaya belajar.

3. **Bagi peneliti selanjutnya**, disarankan untuk menggunakan jumlah sampel yang lebih besar dan melibatkan lebih banyak klaster agar hasil estimasi lebih representatif. Selain itu, penelitian selanjutnya dapat mengkaji faktor-faktor yang memengaruhi produktivitas akademik, seperti motivasi belajar, manajemen waktu, penggunaan media digital, maupun lingkungan belajar, sehingga diperoleh gambaran yang lebih komprehensif.

## Daftar Pustaka

* Alyah, N., Syahdikin, S., Ulfah, F., & Dwijayanti, N. S. (2026). Analisis manajemen waktu mahasiswa terhadap produktivitas akademik. *Jurnal Ekonomi dan Pembangunan Indonesia*, 4(2), 25–34. https://doi.org/10.61132/jepi.v4i2.2239
* Dinar, H. A., Sari, C. C., Raihanun, Z. N., & Puspa, W. (2026). Hubungan intensitas penggunaan media sosial dengan produktivitas belajar mahasiswa. *Musytari: Jurnal Manajemen, Akuntansi, dan Ekonomi*, 25(6), 891–900. https://doi.org/10.2324/gxh77433
* Putri, D. M., Saputra, R. A., & Nugraha, F. P. (2026). Hubungan burnout akademik dengan produktivitas belajar mahasiswa perguruan tinggi. *Journal of Medical and Health Science*, 2(2), 87–94. https://doi.org/10.71094/jmhs.v2i2.450
* Wijaya, R., & Nugroho, T. (2023). Produktivitas akademik mahasiswa dalam perspektif manajemen waktu dan motivasi belajar. *Jurnal Pendidikan Ekonomi*, 12(1), 34–44. https://doi.org/10.23887/jpe.v12i1.6721
