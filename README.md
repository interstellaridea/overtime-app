## Overtime App

## Key requirements: company need documentation that salaried employees did or did not get overtime

## Models
- x Post -> date: date rational:text
- x User -> Devise
- x Administrator -> STI

##Features:
- Approval workflow
- SMS messages -> includes link to log time.
- x Admin dashboard -> administrate gem
- x Block non-admin and guest users
- Email a summary for approval to admin users
- Documented if employees did not log overtime.

## UI:
- x Bootstrap -> formatting
- Icons from Font Awesome
- x Update teh styles for forms

## Refactors TODOs:
- Refactor user association integration test in post_spec