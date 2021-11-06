
# library(iris)
# head(iris)
# View(iris)
# library(GGally)
# ggpairs(iris, mapping=ggplot2::aes(colour = Species))
# 1 produce graph without legend
library(GGally)
library(ggplot2)

plotwithlegend <-ggpairs(
    iris,
    columns=1:4,
    switch="both",
    upper="blank",
    mapping=aes(color = Species,
                shape= Species,
                fill=Species, 
                alpha=0.5)
)

#2 grab the legend from a graph with the legend I want (without alpha).

auxplot <- ggplot(iris, aes(x=Petal.Length, y=Petal.Width, 
                      color=Species, 
                      shape=Species,
                      fill=Species)) + geom_point()
mylegend <- grab_legend(auxplot)

# 3 place the legend in the ggpairs grid with putPlot

graph1 <- putPlot(plotwithoutlegend,mylegend,3,4)
show(graph1)