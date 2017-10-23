# Q0: Why is this error being thrown?
Pokemon that appears in home_controller was not defined in anywhere

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Four types of pokemons are appearing in a random level which was defined in the seed level.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It directs to the patch path set in the routes.rb when you push the button. 

# Question 3: What would you name your own Pokemon?
"Poll"

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
We have to name the path in routes as prefix. If it is not a path you cannot redirect
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
