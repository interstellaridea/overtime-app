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
- x Create an Audit log for each text message
- x Need to update end_date whn configured
- x Need to update audit log status when overtime rejected
- x Update buttons on employee homepage so they show on mobile
- x Update buttons to include time span
- x Update buttons sport order on employee home page
- x Remove unnesseccary nav bar buttons for managers
- Fix admin dashboard bug
- Implement Honeybadger for error reporting
- Implement new relic for keeping site alive.
- Check on data issue and verify correct hours are being tracked.


## TODOS:

