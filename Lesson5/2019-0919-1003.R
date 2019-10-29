x <- list(id = 1:4, height = 170, gender = "male")

x[1]
x["id"]

x[[1]]
x[["id"]]
x$id

x[c(1, 3)]

y <- "id"
x[["id"]]
x[[y]]

x$id
# illegal
x$y



x <- list(a = list(1, 2, 3, 4), b = c("Monday", "Tuesday"))

x[[1]]
x[[1]][[2]]
x[[1]][2]

x[1]
x[[c(1, 3)]]

# partial matching
l <- list(asfdw = 1:10)
l$a
l[["a"]]
l[["a", exact = FALSE]]










