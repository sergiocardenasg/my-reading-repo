# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (e.g. User, Post, Category) - User and Book models
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has many Books
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Books belong to a User
- [x] Include user accounts with unique login attribute (username or email) - Unique email login attribute
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - Books can be created, read, deleted, and updated
- [x] Ensure that users can't modify content created by other users - Users who try editing other user's books/lists are redirected to the homepage
- [x] Include user input validations - Contains validations for signing up, logging in, creating a book, and editing a book
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - Error message displayed when trying to sign up with an email that already exists in the database
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
