#How-To App

##Overview

This is a simple app showing the amazing power of nested resources! You can create a list. Steps can be added to each list. Lists and steps can both be edited and destroyed. Steps belong to lists and lists have many steps.

##Approach
Following the RoR guide on routing and working on adding comments to my portfolio site made this assignment fairly easy. Since I am behind on my assignments, I used scaffold to generate both my list and steps resources. I simply needed to update the paths for steps to reflect that they are nested in lists. A few updates to the views, and the app was ready to go. I also just manually tested my app instead of writing tests because I was behind.

##Resources
http://guides.rubyonrails.org/routing.html