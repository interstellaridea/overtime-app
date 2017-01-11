## Overtime App

## Key requirements: company need documentation that salaried employees did or did not get overtime

## Models
- x Post -> date: date rational:text
- x User -> Devise
- x Administrator -> STI

##Features:
- approval workflow
-sms messages -> includes link to log time.
- admin dashboard -> administrate gem
- email a summary for approval to admin users
- documented if employees did not log overtime.

## UI:
- Bootstrap -> formatting

## Refactors TODOs:
- Add full_name method for users
- Refactor user association integration test in post_spec