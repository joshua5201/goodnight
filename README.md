# Goodnight

# Sleep Events

## Create
- description: Create a sleep event for user. If the user not exists, system will create a user automatically. If the most recent sleep has not ended, this will be a wakeup event. Otherwise, this will be a sleep event.
- POST `/sleep_events`
- params: `username`
- response: event (sleep/wakeup), sleep (sleep object, including start and end time)

# Sleeps

## Index
- description: Sleeps of the user
- GET `/sleeps`
- params: `username`
- response: array of sleeps of the user

# Users

## Index
- description: show all users
- GET `/users`
- params: none
- response: array of users

# Users/Followers

## Index
- description: list all followers of the user in url param
- GET `/users/:user_id/followers`
- params: `user_id`
- response: array of followers of the user

## Create
- description: add current user to the followers of the user in url param
- POST `/users/:user_id/followers`
- params: `user_id`, `username`
- response: array of followers of the user

# User/Followers
## Index
- description: list all followers of the current user
- GET `/user/followers`
- params: `username`
- response: array of followers of the current user

# User/Followings
## Index
- description: list all the users the current user is following
- GET `/user/followings`
- params: `username`
- response: array of users the current user is following

## Destroy
- description: unfollow the user of url param
- DELETE `/user/followings/:id`
- params: `username`, `id`
- response: array of users the current user is following
