library(phonR)
#Setting folder path to store results
folder_path <- "/home/dcst/Desktop/Konkani Acoustic Analysis/Expt 2 (Oral and nasal vowels)/formant analysis/results/figures/"

par(mfrow = c(1, 1))
#dislpay formant data
print(formant_data)
# Vowel space of Gender for Konkani
#opening a file
jpeg(paste(folder_path,"Vowel_Spread.jpeg", sep=""), 
     width = 450, 
     height = 350)

with(formant_data, plotVowels(f1, f2, vowel, group = gender, 
                              pch.tokens = vowel, 
                              cex.tokens = 1.2, 
                              alpha.tokens = 0.05, 
                              plot.means = TRUE, 
                              pch.means = vowel, 
                              cex.means = 2, 
                              var.col.by = gender, 
                              var.sty.by = gender, 
                              hull.fill = TRUE, 
                              hull.line = TRUE, 
                              fill.opacity = 0.3, 
                              pretty = TRUE,
                              legend.kwd = "bottomright"))
#Closing the file
dev.off()

# vowel spread avrage
#opening a file
jpeg(paste(folder_path,"Avrage_F1_F2_Plot.jpeg", sep=""), 
     width = 450, 
     height = 350)

with(formant_data, plotVowels(f1, f2, vowel, plot.tokens = FALSE, 
                              plot.means = TRUE, 
                              pch.means = vowel, 
                              cex.means = 2, 
                              var.col.by = vowel,
                              ellipse.fill = TRUE, 
                              pretty = TRUE,
                              xlim = c(3200, 50), 
                              ylim = c(1000, 200),
                              legend.kwd = "bottomright"))
#Closing the file
dev.off()


#Comarative F1-F2 plot
jpeg(paste(folder_path,"F1-F2_comaparative.jpeg1", sep=""), 
     width = 500, 
     height = 300)
(mfrow = c(1, 2))
#vowel spread male
Male_formant_data=subset(formant_data,gender=='m')
#print(Female_formant_data)
with(Male_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                   plot.tokens = FALSE, plot.means = TRUE, 
                                   pch.means = vowel, 
                                   cex.means = 2, 
                                   var.col.by = vowel, 
                                   ellipse.fill = TRUE, 
                                   pretty = TRUE,
                                   xlim = c(3000, -10), 
                                   ylim = c(800, 200),
                                   legend.kwd = "bottomright"))

#vowel spread female
Female_formant_data=subset(formant_data,gender=='f')
#print(Female_formant_data)
with(Female_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                     plot.tokens = FALSE, 
                                     plot.means = TRUE, 
                                     pch.means = vowel, 
                                     cex.means = 2, 
                                     var.col.by = vowel, 
                                     ellipse.fill = TRUE, pretty = TRUE,
                                     xlim = c(3500, -10), 
                                     ylim = c(1200, 200),
                                     legend.kwd = "bottomright"))

#Closing the file
dev.off()

#plotting comparative data of F1-F2 for male and female speakers 

jpeg(paste(folder_path,"F1-F2_comaparative.jpeg1"), 
     width = 600, 
     height = 400)
(mfrow = c(1, 2))

par(mfrow = c(1, 2))
#vowel spread male
Male_formant_data=subset(formant_data,gender=='m')
#print(Female_formant_data)
with(Male_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                   plot.tokens = FALSE, plot.means = TRUE, 
                                   pch.means = vowel, 
                                   cex.means = 2, 
                                   var.col.by = vowel, 
                                   ellipse.fill = TRUE, 
                                   pretty = TRUE,
                                   xlim = c(3500, 400), 
                                   ylim = c(1200, 200),
                                   legend.kwd = "bottomleft"))

#vowel spread female
Female_formant_data=subset(formant_data,gender=='f')
#print(Female_formant_data)
with(Female_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                     plot.tokens = FALSE, 
                                     plot.means = TRUE, 
                                     pch.means = vowel, 
                                     cex.means = 2, 
                                     var.col.by = vowel, 
                                     ellipse.fill = TRUE, pretty = TRUE,
                                     xlim = c(3500, 400), 
                                     ylim = c(1200, 200)#,
                                     #legend.kwd = "bottomright"
                                     ))

#Closing the file
dev.off()

with(formant_data, plotVowels(f1, f2, vowel, group = gender, pch.tokens = vowel, cex.tokens = 1.2, 
                      alpha.tokens = 0.05, plot.means = TRUE, pch.means = vowel, cex.means = 2, var.col.by = vowel, 
                      var.sty.by = gender, hull.fill = TRUE, hull.line = TRUE, fill.opacity = 0.2, 
                      pretty = TRUE,xlim = c(3400, -100), 
                      ylim = c(1400, 200), legend.kwd = "bottomright"))

#vowel spread genderwise
with(formant_data, plotVowels(f1, f2, vowel, group = gender, plot.tokens = FALSE, plot.means = TRUE, 
                             pch.means = vowel, cex.means = 2, var.col.by = vowel, ellipse.fill = TRUE, pretty = TRUE,xlim = c(3500, -10), 
                             ylim = c(1200, 200),legend.kwd = "bottomright"))

#vowel spread male
Male_formant_data=subset(formant_data,gender=='m')
print(Female_formant_data)
with(Male_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                   plot.tokens = FALSE, plot.means = TRUE, 
                              pch.means = vowel, 
                              cex.means = 2, 
                              var.col.by = vowel, 
                              ellipse.fill = TRUE, 
                              pretty = TRUE,
                              xlim = c(3000, -10), 
                              ylim = c(800, 200),
                              legend.kwd = "bottomright"))

#vowel spread female
Female_formant_data=subset(formant_data,gender=='f')
print(Female_formant_data)
with(Female_formant_data, plotVowels(f1, f2, vowel, group = gender,
                                     plot.tokens = FALSE, 
                                     plot.means = TRUE, 
                                   pch.means = vowel, 
                                   cex.means = 2, 
                                   var.col.by = vowel, 
                                   ellipse.fill = TRUE, pretty = TRUE,
                                   xlim = c(3500, -10), 
                                   ylim = c(1200, 200),
                                   legend.kwd = "bottomright"))
#boxplot for vowels
#help("boxplot")
f1=table(formant_data2$f1)
f1
l1=table(formant_data2$vowel)
formant_data2
f1_data=formant_data2[,4]
f1_data1=formant_data2[,3]
f1_data2=as.numeric(formant_data2[,4])
Vowel_data=as.numeric(formant_data2[,3])
Vowel_data
#opening a file
jpeg(paste(folder_path,"BoxPlotVowels.jpeg"), 
     width = 550, 
     height = 900)

par(mfrow = c(2, 1))
#data1 <-c("ɛ","i","o","ɨ")
#boxplot(formant_data[,4]~data1,

# I reorder the groups order : I change the order of the factor data$names
#formant_data[,3]=factor(formant_data[,3] , levels=levels(formant_data[,3])[c(2,4,3,1,5,6,7,8,9)])

#The plot is now ordered !
#boxplot(data$value ~ data$names , col=rgb(0.3,0.5,0.4,0.6) , ylab="value" , 
      #  xlab="names in desired order")

boxplot(f1~l1,
        col="lightblue",
        xlab = "Vowel phoneme",
        ylab = "F-1 formant")
boxplot(formant_data2[,5]~formant_data2[,3],
        col="lightgreen",
        xlab = "Vowel phoneme",
        ylab = "F-2 formant")
#Closing the file
dev.off()

#pie chart
#creating a pie  chart and directly saving it to working directory
#opening a file
jpeg(paste(folder_path,"frequecyDistributionVowel.jpeg", sep=""), 
     width = 400, 
     height = 400)
library(plotrix)
b=table(formant_data$vowel)
par(mfrow = c(1,1))
labl<-paste(names(b),"\n",table(formant_data$vowel))
pie(b,labels = labl)
#pie(b,labels = labl, bg="red",border=TRUE)#
#Closing the file
dev.off()


#creating a pie  chart and directly saving it to working directory
#opening a file
jpeg(paste(folder_path,"frequecyDistributionVowel1.jpeg", sep=""), 
     width = 600, 
     height = 400)
library(plotrix)
labl<-paste(names(b),"\n",table(formant_data$vowel))
pie3D(b,labels = labl)
#Closing the file
dev.off()

#vowel spread f1, f2-f1
with(formant_data, plotVowels(f1, f2-f1, vowel, group = vowel, plot.tokens = FALSE, plot.means = TRUE, 
                              pch.means = vowel, cex.means = 2, var.col.by = vowel, ellipse.fill = TRUE, pretty = TRUE,xlim = c(3900, 100), 
                              ylim = c(1200, 200),legend.kwd = "bottomright"))

#Grayscale speaker plotiing
#opening a file
jpeg(paste(folder_path,"GrayScale_Speaker_ploting", sep=""), 
     width = 450, 
     height = 350)

with(formant_data, plotVowels(f1, f2, vowel, group = subj,
                              var.col.by = subj, 
                              var.sty.by = subj, 
                      plot.tokens = FALSE, 
                      plot.means = TRUE, 
                      pch.means = vowel, cex.means = 2, 
                      pretty = TRUE, 
                      poly.line = TRUE,
                      poly.order = c("i", "e", "a", "o", "u"),
                      legend.kwd = "bottomleft", 
                      legend.args = list(seg.len = 3, cex = 1.2, lwd = 2), col = c("gray70", "gray40", 
                                                                                   "gray10"), lty = c("solid", "solid", "dotdash", "dotdash", "dotted", "longdash", 
                                                                                               "dashed", "dotted")))

#Closing the file
dev.off()


#devnagari mapping
# unicode escapes are necessary for this example to work on Windows
# Open jpeg file
jpeg(paste(folder_path,"/devnagari.jpg", sep=""),
     width = 500,
     height = 500)
#devnagari mapping
# unicode escapes are necessary for this example to work on Windows
remapping <-c(i="इ", e="ए", ɛ="अॅ", a="आ", u="उ", o="ओ",ɔ="ऑ", ɨ="अ॑",ə="अ",ɵ="अअ")
formant_data$unicodevowel <- remapping[as.character(formant_data$vowel)]
with(formant_data, plotVowels(f1, f2, unicodevowel, plot.tokens = TRUE, pch.tokens = vowel, 
                      cex.tokens = 1.2, alpha.tokens = 0.4, plot.means = TRUE, pch.means = unicodevowel, 
                      cex.means = 2.5, var.col.by = unicodevowel, family = "Charis SIL", pretty = TRUE))
#Closing the file
dev.off()

data1 <-c("ɛ","i","o","ɨ")

