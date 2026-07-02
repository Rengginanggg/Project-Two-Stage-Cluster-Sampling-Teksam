# Install package
install.packages("readxl")
install.packages("psych")

# Memanggil package
library(readxl)
library(psych)

# Import data
data_prokrastinasi <- read_excel(
  "D:/tugas kuliah/Teknik Sampling/Projek UAS/Data.xlsx",
  sheet = 3
)

# Melihat struktur data
View(data_prokrastinasi)
str(data_prokrastinasi)
summary(data_prokrastinasi)

# Memilih item pertanyaan
item <- data_prokrastinasi[, paste0("P", 1:12)]

# Mengubah seluruh item menjadi numerik
item[] <- lapply(item, as.numeric)


# UJI VALIDITAS DAN RELIABILITAS
hasil <- psych::alpha(item)

# Menampilkan hasil reliabilitas
print(hasil)

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

# Menampilkan hasil validitas
print(hasil_validitas)

# Menampilkan nilai Cronbach Alpha
cat("\n")
cat("Cronbach Alpha =", round(hasil$total$raw_alpha,3))
cat("\n")


## Uji Reabilitas
hasil_alpha <- alpha(item)

print(hasil_alpha)

cat("Cronbach's Alpha =",
    round(hasil_alpha$total$raw_alpha,3),"\n")

if(hasil_alpha$total$raw_alpha >= 0.70){
  
  cat("Keputusan : Instrumen Reliabel")
  
}else{
  
  cat("Keputusan : Instrumen Tidak Reliabel")
  
}

## Statistik Deskriptif
# Statistik deskriptif setiap item
deskriptif_item <- data.frame(
  Mean = sapply(item, mean),
  SD = sapply(item, sd),
  Min = sapply(item, min),
  Max = sapply(item, max)
)

print(deskriptif_item)
# pastikan TOTAL ada dan benar
data_prokrastinasi$TOTAL <- rowSums(item, na.rm = TRUE)

# Statistik deskriptif total skor
deskriptif_total <- data.frame(
  Mean = mean(data_prokrastinasi$TOTAL),
  SD = sd(data_prokrastinasi$TOTAL),
  Min = min(data_prokrastinasi$TOTAL),
  Max = max(data_prokrastinasi$TOTAL)
)

print(deskriptif_total)

## Distribusi Kategori Variabel
# Membuat kategori berdasarkan total skor
data_prokrastinasi$kategori <- cut(
  data_prokrastinasi$TOTAL,
  breaks = c(12, 24, 36, 48),
  labels = c("Rendah", "Sedang", "Tinggi"),
  include.lowest = TRUE
)

# Tabel distribusi kategori
table(data_prokrastinasi$kategori)

## Perhitungan Peluang Pemilihan Sampel
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


#========
## Perhitungan Bobot Sampling
# Menghitung bobot sampel
data_prokrastinasi$weight <- 1 / Pi

# Menampilkan bobot
head(data_prokrastinasi$weight)

#=========
## Pembuatan Desain Survei
install.packages("survey")
library(survey)

# Membuat ID cluster (kalau belum ada)
data_prokrastinasi$cluster <- rep(1:3, each = 10)  # sesuaikan n_cluster & mi kamu

# Membuat data desain survei
data_desain <- data_prokrastinasi

# Membuat desain survei two-stage cluster sampling
design_survei <- svydesign(
  id = ~cluster,
  weights = ~weight,
  data = data_desain
)

design_survei

#=========
## Estimasi Tingkat
## Estimasi rata-rata terbobot
estimasi_mean <- svymean(
  ~TOTAL,
  design_survei
)

estimasi_mean

#==========
## Analisis Kualitas Estimasi
## 1. Interval Kepercayaan 95%
CI_95 <- confint(estimasi_mean)

cat("Interval Kepercayaan 95%\n")
print(CI_95)

cat("\n====================================\n")

## 2. Design Effect (DEFF)
hasil_deff <- svymean(
  ~TOTAL,
  design = design_survei,
  deff = TRUE
)

cat("Design Effect (DEFF)\n")
print(hasil_deff)

cat("\n====================================\n")

## 3. Relative Standard Error (RSE)
mean_est <- coef(estimasi_mean)
se_est <- SE(estimasi_mean)

RSE <- (se_est / mean_est) * 100

cat("Relative Standard Error (RSE)\n")
print(RSE)

cat("\n")

if(RSE < 25){
  cat("Keputusan : Estimasi layak dirilis (RSE < 25%)\n")
} else{
  cat("Keputusan : Estimasi tidak layak dirilis (RSE >= 25%)\n")
}

#===============
## Visualisasi
# bikin ulang kategori
data_prokrastinasi$kategori <- cut(
  data_prokrastinasi$TOTAL,
  breaks = c(12, 24, 36, 48),
  labels = c("Rendah", "Sedang", "Tinggi"),
  include.lowest = TRUE
)

# bikin tabel frekuensi
kategori <- table(data_prokrastinasi$kategori)

# visualisasi
barplot(
  kategori,
  col = c("tomato", "gold", "seagreen3"),
  main = "Distribusi Tingkat Produktivitas Akademik Mahasiswa",
  xlab = "Kategori",
  ylab = "Jumlah Responden",
  ylim = c(0, max(kategori) + 5)
)
