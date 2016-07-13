# Anagrams Web Application

Objective: write a web application backed by a database.  Users will provide a word, our application will access the database to retrieve anagrams for that word, and the anagrams will be listed for the user.

After creating the web-application, my pair and I spent some time figuring out ways to refactor our existing code and finding a faster way to sort through over 200,000 words in our database.  We accomplished this by reducing our original method even further. 

Our original algorithm split the input, and put the input into an array before doing the same to each word in the database.  This can be expensive because we have to split each word in the database.

So we created a new method to first check the length of the input against the length of the word in our database.  If the lengths don't match, we immediately know the two words cannot be anagrams.  

This reduced the length of our search of over 200,000 words from 8 seconds to 3 seconds. 
