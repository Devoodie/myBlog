# My Personal Blog 
This is a blog that I will use to document my progress as a software engineer.
It is held within a custom nginx container I have running within ubuntu server within my closet. 
For the Blog portion of the site I'm using mdbook for format and styling of the html docs. 

# Directions
In order to use the container within the dockerfile provided, you must first compile the image. 
Then, you must mount your keys and nginx config into the SSLinfo directory within the container.  
