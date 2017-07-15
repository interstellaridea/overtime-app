# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- X Approval Workflow
- X SMS Sending -> link to approval or overtime input -> integrate with heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- x Email summary to managers for approval
- X Needs to be documented if employee did not log overtime
- Create an Audit log for each text message
- Need to update end_date whn configured
- Need to update audit log status when overtime rejected
- Update buttons on employee homepage so they show on mobile
- Update buttons to include time span
- Update buttons sport order on employee home page
- Remove unnesseccary nav bar buttons for managers
- Fix admin dashboard bug
- Implement Honeybadger for error reporting
- Implement new relic for keeping site alive.


## TODOS:

