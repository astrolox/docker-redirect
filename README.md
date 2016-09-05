# Docker Redirect

A Docker container which redirects all received web requests, with the redirect target specified by an environment variable.

## Supported Variables

| Variable name         | Default value              |
| --------------------- | -------------------------- | 
| `REDIRECT_TARGET`     | http://www.example.com/    |
| `REDIRECT_HTTP_CODE`  | 301                        |

