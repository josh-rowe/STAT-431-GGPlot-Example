
# Example plot to represent proficiency in learning goal PV-2
#
#
# [PV-2] ggplot: theme
# I can edit the titles, subtitles, captions, axis labels, etc. to create a clearly labelled plot
# I can choose colors ("scales") and themes to make a visually pleasing plot
#

library(ggplot2)

iris |> 
  ggplot(mapping = aes(x = Petal.Length, y = Sepal.Length)) + 
    geom_point(aes(color = Species)) + 
    annotate("text", label = "Setosa", x = 1.5, y = 6.2, size = 4 , fontface = "bold",
             color = "red") +
    annotate("text", label = "Versicolor", x = 4, y = 7.2, size = 4, fontface = "bold",
             color = "green") + 
    annotate("text", label = "Virginica", x = 5, y = 7.5, size = 4, fontface = "bold",
             color = "blue") + 
    labs(y = "", 
       x = "Petal Length [cm]",
       title = "Example Plot using Axis and Label Commands",
       subtitle = "Sepal Length [cm]",
       species = "Species",
       caption = "Data from R's built-in \"iris\" dataset") + 
    theme(plot.title.position = "plot",
          plot.caption.position = "plot",
          legend.position = "none")



