# LearnRoom Backend  

 ## Overview

 This Api is made in **Ruby 3.0.0** and is designed to be used with the official LearnRoom Frontend.

 ## API Calls

 **Everything with a `T!` near the call name needs a Bearer Token.

 ### Users

 - Create user

 ```js
 // http://localhost:3000/api/signup or URL/api/signup
 // POST
 {
	"user": {
		"email": "t@t.com",
		"password": "123456"
	}
}
```

- Modify registration `T!`
```js
// PUT
 // http://localhost:3000/api/signup or URL/api/signup
 {
	"user": {
		"email": "t@t.com",
    "current_password": "123456",
		"password": "123456"
	}
}
```

- Delete account `T!`
```js
// DELETE
// http://localhost:3000/api/signup
```

- Get User `T!`

```js
// GET
// http://localhost:3000/api/users/1 or URL/api/users/1
```

- Login

```js
// POST
// http://localhost:3000/api/login or URL/api/login
 {
	"user": {
		"email": "t@t.com",
		"password": "123456"
	}
}
```

- Logout `T!`

```js
// DELETE
// http://localhost:3000/api/logout
```

- Modify User Info `T!`

```js
// PUT
// http://localhost:3000/api/users/1
{
	"user": {
		"username": "Jojo",
		"timezone": "Europe/Paris"
	}
}
```

### Teams

- Create team `T!`

```js
// POST
// http://localhost:3000/courses/1/teams
{
	"name": "Zgladavadjan",
	"start": "2021-10-01",
	"intensity": "chill"
}
```

- Modify a team `T!`

```js
// PUT or PATCH
// http://localhost:3000/courses/1/teams
{
	"name": "Zgladavadjan",
	"start": "2021-10-01",
	"intensity": "chill"
}
```

- Delete a team `T!`

```js
// DELETE
// http://localhost:3000/courses/1/teams/[team_id]
```

- Get teams `T!`

```js
// GET
// http://localhost:3000/courses/1/teams
```

- Get one team `T!`

```js
// GET
// http://localhost:3000/courses/1/teams/1
```

- Join a team `T!`

**This is a post route but no content needed apart from the token.**

```js
// POST
// http://localhost:3000/courses/1/teams/1/subscriptions
```

- Leave a team `T!`

```js
// DELETE
// http://localhost:3000/courses/1/teams/1/subscriptions/[user_id]
```

- Change team infos `T!`

```js
// PUT
// http://localhost:3000/courses/1/teams/1/infos/[info_id]

{
	"voice_chat": "discord_url",
	"git": "git_url",
	"documentation": "notion_url",
	"design": "figma_url",
	"project_tracker": "trello_url",
	"team_rules": "This is a test, so respect the rules Ok?"
}
```

- get team infos `T!`

```js
// GET 
// http://localhost:3000/courses/1/teams/1/infos
```