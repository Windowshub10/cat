#apply K means to iris and store result
newiris <- iris
newiris$Species <- NULL
(kc <- kmeans(newiris,3))

#Compare the Species label with the clustering result
table(iris$Species,kc$cluster)

#Plot the clusters and their centers
plot(newiris[c("Sepal.Length","Sepal.Width")],col=kc$cluster)
points(kc$centers[,c("Sepal.Length","Sepal.Width")],col=1:3,pch=8,cex=2)
dev.off()

#Plot the clusters and their centre
plot(newiris[c("Sepal.Length","Sepal.Width")],col=kc$cluster)

