bc = read.csv(file.choose(), header=T)
nrow(bc)
train = bc[1:450,]
test = bc[451:569,]
head(test)
levels(train$diagnosis)

model = naiveBayes(diagnosis-., data=train)
pred = predict(model, test)
table(pred)
table(test$diagnosis)
