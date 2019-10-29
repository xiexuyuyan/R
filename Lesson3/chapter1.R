new_sample <- c(4.8, 2.9, 3.7, 1.7)
names(new_sample) <- c("Sepal.Lenght", "Sepal.Width", "Petal.Length", "Petal.Width")

iris_features <- iris[1:4]

dist_eucl <- function(x1, x2) sqrt(sum((x1 -x2) ^ 2))

distances <- apply(iris_features, 1, function(x) dist_eucl(x, new_sample))

distances_sorted <- sort(distances, index.return = T)

str(distances_sorted)

nn_5 <- iris[distances_sorted$ix[1:5], ]