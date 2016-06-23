# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
Hash.fetch helps us not only look for a key value pair in a hash but also helps us define what to do if the given key isn't found for e.g. give it a default value, run some code etc. 

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?

This would limit the amount of methods available to the sub class. Also the sub class would depend solely on the one ancestor for everything. Whereas if there were more classes to inherit from it would lead to a more dynamic structure. 


3. Why are these classes initialized with an options hash?
Options hash helps us manage our attributes and arguments better. It can help us store multiple options for a class in a hash and also edit, add and delete them when required. 

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?

A private keyword ensures the methods written under it are available only to the class it is called in. It helps us limit the access other sub classes would have to the methods because you might not want a sub class to have access to the methods

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

Encapsulation helps keep all relevant methods and other attributes of a particular object/class in one place and makes it easier to manage, update and scale

Single responsibility makes our code more DRY and also helps managing methods better. It's a good way to design methods so that we can easily edit out these methods or add new ones without significantly altering other functionalities of the program.