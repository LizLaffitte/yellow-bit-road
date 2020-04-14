# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many paths, Course has_many checkpoints, Path has_many checkpoints) 
- [x] Include at least one belongs_to relationship (Path belongs_to User, Checkpoint belongs_to User, Path, Course)
- [x] Include at least two has_many through relationships (Path has_many Courses, through Checkpoints; User has_many Courses, through Checkpoints)
- [x] Include at least one many-to-many relationship (User has_many Courses, through Checkpoints; Checkpoints has_many Users, through checkpoints)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (Users can set a goal_date for each checkpoint)
- [x] Include reasonable validations for simple model objects (Validate for User username and email uniqueness; Course name uniqueness and presence, etc.)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup ('/signup')
- [x] Include login ('/login')
- [x] Include logout ('/logout')
- [x] Include third party signup/login (Facebook via OmniAuth)
- [x] Include nested resource show or index (Show: '/roads/:road_id/checkpoints/:id' e.g. '/roads/1/checkpoints/7')
- [x] Include nested resource "new" form ('/roads/:road_id/checkpoints/new' e.g. '/roads/5/checkpoints/new')
- [x] Include form display of validation errors (All new and edit forms show validation errors e.g. '/courses/new')

Confirm:
- [] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate