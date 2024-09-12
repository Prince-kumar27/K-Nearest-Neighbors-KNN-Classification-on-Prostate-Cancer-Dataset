data<-read.csv(file.choose(),stringsAsFactors = F)

View(data)

str(data)
summary(data)

data<-data[-1]

View(data)

table(data$diagnosis_result)


data$diagnosis_result<-factor(data$diagnosis_result,levels = c("B","M"),labels = c("Bening","Malignant"))
table(data$diagnosis_result)


prop.table(table(data$diagnosis_result))*100

View(data)
normalize <-function(x){
  return( (x-min(x))/(max(x)-min(x)))
}


df_normalized<-as.data.frame(lapply(data[2:9],normalize))

View(df_normalized)



df_train<-df_normalized[1:75,]
df_test<-df_normalized[76:100,]

df_train_labels<-data[1:75,1]
df_test_labels<-data[76:100,1]


df_test_labels


library(class)

df_test_pred<-knn(train = df_train,test = df_test,cl=df_train_labels,k=9) # k is sqrt of total number of rows always odd 

df_test_pred


library(gmodels)

CrossTable(x= df_test_labels,y=df_test_pred)

(12+7)/25
