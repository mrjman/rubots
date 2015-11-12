# Meeting 4
Simple rails application

## Slides
There are no slides for this meeting since we are doing a full meeting exercise.

## Exercise
We are diving straight into our first rails application by building a simple hub for projects called RubotHub. We will need to support multiple users and projects as well as tasks that can be assigned to a user. We are going to use this project to get familiar with Rails, Rspec, and TDD practices.

If you have trouble installing rails because of nokogiri try to first install
libxml2 using homebrew (`brew install libxml2`) then try installing rails using `gem install rails -- --use-system-libraries --with-xml=/usr/local/Cellar/libxml2/`

## RubotHub specification
__Data Models__  
User:
* can belong to many projects
* can be assigned many tasks

Project:
* can have many users
* can have many tasks

Task:
* can belong to a single user
* can belong to a single project

__Pages__  
Home:
* Login link
* Signup link

Login:
* Form
    * email
    * password

Signup:
* Form
    * email
    * first name
    * last name
    * password

User show:
* first name
* last name
* email
* list of project links
* list of task links

Project create/edit:
* title
* description
* user (multi-select)

Project show:
* title
* description
* list of user links
* list of task links
* create task button

Task create/update:
* title
* description
* complete
* assignee

Task show:
* title
* description
* complete
* creator user link
* assignee user link
* project link
