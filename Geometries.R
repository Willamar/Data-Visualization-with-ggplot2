# Shown in the viewer:
ggplot(mtcars, aes(x = cyl, y = wt)) +
  geom_point()

# Solutions:
# 1 - With geom_jitter()
ggplot(mtcars, aes(x = cyl, y = wt)) +
  geom_jitter()

# 2 - Set width in geom_jitter()
ggplot(mtcars, aes(x = cyl, y = wt)) +
  geom_jitter(width = 0.1)

# 3 - Set position = position_jitter() in geom_point() ()
ggplot(mtcars, aes(x = cyl, y = wt)) +
  geom_point(position = position_jitter(0.1))



# Examine the structure of Vocab
str(Vocab)

# Basic scatter plot of vocabulary (y) against education (x). Use geom_point()
ggplot(Vocab, aes(x = education, y = vocabulary)) + 
  geom_point()

# Use geom_jitter() instead of geom_point()
ggplot(Vocab, aes(x = education, y = vocabulary)) + 
  geom_jitter()


# Using the above plotting command, set alpha to a very low 0.2
ggplot(Vocab, aes(x = education, y = vocabulary)) + 
  geom_jitter(alpha = 0.2)



# Using the above plotting command, set the shape to 1
ggplot(Vocab, aes(x = education, y = vocabulary)) + 
  geom_jitter(shape = 1)
 

# 1 - Make a univariate histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram()

# 2 - Plot 1, plus set binwidth to 1 in the geom layer
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 1)


# 3 - Plot 2, plus MAP ..density.. to the y aesthetic (i.e. in a second aes() function)
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 1,aes(y = ..density..))


# 4 - plot 3, plus SET the fill attribute to "#377EB8"
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 1, aes(, y = ..density.., fill = "#377EB8"))

# Draw a bar plot of cyl, filled according to am
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar()

# Change the position argument to stack
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "stack")


# Change the position argument to fill
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "fill")


# Change the position argument to dodge
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "dodge")


# 1 - The last plot form the previous exercise
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "dodge")

# 2 - Define posn_d with position_dodge()
posn_d <- position_dodge(width = 0.2)

# 3 - Change the position argument to posn_d
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = posn_d)


# 4 - Use posn_d as position and adjust alpha to 0.6
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = posn_d, alpha = 0.6)


# A basic histogram, add coloring defined by cyl
ggplot(mtcars, aes(mpg, fill = cyl)) +
  geom_histogram(binwidth = 1)

# Change position to identity
ggplot(mtcars, aes(mpg, fill = cyl)) +
  geom_histogram(binwidth = 1, position = "identity")


# Change geom to freqpoly (position is identity by default)
ggplot(mtcars, aes(mpg, color = cyl)) +
  geom_freqpoly(binwidth = 1)

# Example of how to use a brewed color palette
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar() +
  scale_fill_brewer(palette = "Set1")

# Use str() on Vocab to check out the structure
str(Vocab)

# Plot education on x and vocabulary on fill
# Use the default brewed color palette
ggplot(Vocab, aes(x = education, fill = vocabulary)) +
  geom_bar(position = "fill") + 
  scale_fill_brewer()

new_col <- colorRampPalette(c("#FFFFFF", "#0000FF"))
new_col(4) # the newly extrapolated colours
munsell::plot_hex(new_col(4)) # Quick and dirty plot

