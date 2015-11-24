# Overall Assessment

##### Grade: A+

##### Comments:

Elena,

Amazing job! This is truly fantastic work. All of your code is clear and concise and all in the right places. Your understanding and grasp of the material is clear here, and a pleasure to see.

A couple of notes moving forward for you to work on:

1. Your views are _almost_ set up completely correctly. Remember that all layout-related elements in HTML (html, head, title, body, etc) should be in the application.html.erb file. I noticed that you put many of those tags inconsistently in the various layout files. All that should be in the views are HTML (with embedded Ruby) that pertain only to that view.

2. You created a `link` tag for the style.css file. Remember that Rails uses the asset pipeline to manage all static files and you don't need to write any inclusions yourself.