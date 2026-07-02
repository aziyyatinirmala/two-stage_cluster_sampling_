#IMPORT DATA
# Memanggil package
library(readxl)

# Import data
data <- read_excel("C:/Users/Asus/Downloads/Data Responden Utama.xlsx")

# Melihat struktur data
str(data)

# Melihat 6 data pertama
head(data)

#PENGOLAHAN DATA
# Mengambil 12 item pertanyaan
item <- data[,6:17]

# Mengubah menjadi numerik
item <- data.frame(lapply(item, function(x)
  as.numeric(as.character(x))))

# Menggabungkan kembali
data[,6:17] <- item

# Melihat struktur data
str(data)

#MENYIAPKAN VARIABEL PENELITIAN
# Menghitung skor total
data$Skor_Total <- rowSums(item)

# Mengubah kelas menjadi faktor
data$Kelas <- as.factor(data$Kelas)

# Mengubah angkatan menjadi faktor
data$Angkatan <- as.factor(data$Angkatan)

# Mengubah jenis kelamin menjadi faktor
data$`Jenis Kelamin` <- as.factor(data$`Jenis Kelamin`)

#PENGOLAHAN DATA (DATA CLEANING)

# Jumlah responden
jumlah_responden <- nrow(data)
cat("Jumlah Responden :", jumlah_responden, "\n")

# Missing value
missing_value <- sum(is.na(data))
cat("Missing Value :", missing_value, "\n")

# Data duplikat
duplikat <- sum(duplicated(data))
cat("Data Duplikat :", duplikat, "\n")

# Deteksi outlier menggunakan metode IQR
Q1 <- quantile(data$Skor_Total, 0.25)
Q3 <- quantile(data$Skor_Total, 0.75)
IQR <- Q3 - Q1

batas_bawah <- Q1 - 1.5 * IQR
batas_atas  <- Q3 + 1.5 * IQR

outlier <- data$Skor_Total[
  data$Skor_Total < batas_bawah |
    data$Skor_Total > batas_atas
]

jumlah_outlier <- length(outlier)

cat("Outlier (Metode IQR) :", jumlah_outlier, "\n")

# Status data
if(missing_value == 0 & duplikat == 0 & jumlah_outlier == 0){
  cat("Status Data : Data siap dianalisis\n")
} else{
  cat("Status Data : Perlu dilakukan pembersihan data\n")
}

#UJI VALIDITAS
# Skor total
skor_total <- rowSums(item)

for(i in 1:ncol(item)){
  
  skor_total_koreksi <- rowSums(item[,-i])
  
  hasil <- cor.test(item[,i], skor_total_koreksi)
  
  cat("\n=========================\n")
  cat("Item :", paste0("P", i), "\n")
  cat("r hitung :", round(hasil$estimate,3), "\n")
  cat("p-value :", round(hasil$p.value,4), "\n")
  
  if(hasil$p.value < 0.05){
    cat("Keputusan : VALID\n")
  }else{
    cat("Keputusan : TIDAK VALID\n")
  }
  
}

#UJI RELIABILITAS
library(psych)

hasil_alpha <- psych::alpha(item)

hasil_alpha

cat("Cronbach Alpha =", round(hasil_alpha$total$raw_alpha,3))

#ANALISIS STATISTIK DESKRIPTIF
summary(data$Skor_Total)

mean(data$Skor_Total)

median(data$Skor_Total)

sd(data$Skor_Total)

range(data$Skor_Total)

#VISUALISASI DATA
hist(data$Skor_Total,
     main = "Histogram Skor Total",
     xlab = "Skor Total",
     col = "skyblue",
     border = "black")

boxplot(data$Skor_Total,
        main="Boxplot Skor Total",
        ylab="Skor",
        col = "skyblue",
        border = "black")

barplot(table(data$Angkatan),
        main="Jumlah Responden Berdasarkan Angkatan",
        xlab="Angkatan",
        ylab="Frekuensi",
        col = "skyblue",
        border = "black")

barplot(table(data$`Jenis Kelamin`),
        main="Jenis Kelamin",
        ylab="Frekuensi",
        col = "skyblue",
        border = "black")

#HEATMAP ITEM

# Memanggil package
library(ggcorrplot)

# Menghitung korelasi antar item
korelasi <- cor(item)

# Mengganti nama kolom menjadi P1-P12
colnames(korelasi) <- paste0("P", 1:12)
rownames(korelasi) <- paste0("P", 1:12)

# Membuat heatmap
ggcorrplot(
  korelasi,
  method = "square",      # Bentuk kotak
  type = "upper",         # Segitiga atas
  lab = TRUE,             # Menampilkan nilai korelasi
  lab_size = 3,
  outline.color = "white",
  colors = c("#B2182B", "white", "#2166AC")
) +
  ggtitle("Heatmap Korelasi Antar Item") +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", hjust = 0),
    axis.title = element_blank()
  )

#PEMBOBOTAN TWO-STAGE CLUSTER SAMPLING
M <- 6
m <- 2

N <- 66
n <- 40
nr <- 40

# Peluang tahap pertama
p1 <- m/M

# Peluang tahap kedua
p2 <- n/N

# Peluang total
p_total <- p1*p2

# Bobot dasar
w_base <- 1/p_total

# Faktor non respon
F_NR <- n/nr

# Bobot akhir
w_akhir <- w_base*F_NR

w_akhir

#ANALISIS SURVEI
library(survey)

# Membuat variabel klaster (menggabungkan Angkatan dan Kelas)
data$Cluster <- paste(data$Angkatan, data$Kelas)

# Mengubah menjadi faktor
data$Cluster <- as.factor(data$Cluster)

# Melihat jumlah anggota setiap klaster
table(data$Cluster)

# Menambahkan bobot ke dalam data
data$bobot <- w_akhir

options(survey.lonely.psu="adjust")
# Membentuk desain survei
desain <- svydesign(
  ids = ~Cluster,
  weights = ~bobot,
  data = data
)

hasil <- svymean(~Skor_Total, desain)

hasil

SE(hasil)

confint(hasil)

svymean(~Skor_Total, desain, deff = TRUE)

SE(hasil) / coef(hasil) * 100

