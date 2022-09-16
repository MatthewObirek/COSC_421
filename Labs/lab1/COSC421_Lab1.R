install.packages("igraph")
library(igraph)

#1
graph1 <- make_graph(c("A","C","B","C","C","B","D","C","E","C","F","E","G","F","H","F","D","E")
  , directed = FALSE)
plot(graph1)

#2
Data <- read.csv("Book1lab1.csv", header=TRUE)
graph2 <- graph_from_edgelist(as.matrix(Data), directed = FALSE)
plot(graph2)

#3
degree.cent <- closeness(graph2, mode = "all")
print(degree.cent)
#         A          C          B          D          E 
#0.05555556 0.08333333 0.05555556 0.07142857 0.09090909 
#F          G          H 
#0.07692308 0.05263158 0.05263158 

degree.btw <- betweenness(graph2)
print(degree.btw)
#A  C  B  D  E  F  G  H 
#0 11  0  0 12 11  0  0 

#4
graph3 <- graph_from_edgelist(as.matrix(Data), directed = TRUE)
plot(graph3)

#5
l <- layout_(graph3, as_star())
plot(graph3, layout = l)

l <- layout_(graph3, in_circle())
plot(graph3, layout = l)

l <- layout_(graph3, nicely())
plot(graph3, layout = l)