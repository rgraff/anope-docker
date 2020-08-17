# Stellar Anope Modules

## modules/m_auth_token

Borrowed from https://github.com/snoonetIRC/anope-modules and used under the MIT License.

## modules/m_stellar_api

### Configuration

```
{
  /*  required        */
  name = "m_stellar_api"

  /* required 
     This secretkey grants you full access to the api
     and will allow you to register and generate
     auth tokens for any nick. There are no other
     safeguards.
  */
  secretkey = "irc-god-like-powers-must-be-protected"

  /*  optional       */
  server = "httpd/main"
}
```

### Authentication

Set your Authorization header to `Bearer secret-key-in-configuration`

### POST /api/authorize

#### Params
- `username` - Username of the account
- `token` - Name of the token

If the user does not exist, register the user. Find or create a login token with the given name.

### POST /api/tags

Retrieve a hash of current tags.

#### Params
- `username` - Username of the account
- `clear` - Optional. If present, will delete all tags

### POST /api/tags/add

Add a tag

#### Params
- `username` - Username of the account
- `name` - name of the tag
- `value` - value of the tag

### POST /tag/tags/del

Delete a tag

#### Params
- `username` - Username of the account
- `name` - name of the tag
- `value` - value of the tag