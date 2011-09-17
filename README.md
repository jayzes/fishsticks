# Fishsticks

Super simple Sinatra app that serves up a randomly-generated password from [Haddock](https://github.com/stephencelis/haddock).  Supports params to customize delimiters and length.

## Usage
There's a public instance of this app deployed to Heroku - [http://fishsticks.herokuapp.com/].  Feel free to play around with it.

## Requests

Make a request to the root [http://fishsticks.herokuapp.com/] and you'll get back a string in JSON-parseable format containing a random 12-letter (or so) password using the "words" wordlist and standard delimiters.  You can customize the length, wordlist, and delimiters, using the following params:

* wordlist - Set which UNIX wordlist to pull from.  By default, Fishsticks uses "words", but can also use 'connectives', 'propernames', 'web2', or 'web2a'.
* delimiters - A set of delimiters to use when joining words in the wordlists.  Default is "~!@#$%^&*-_=+\\|;:,<.>/?".
* length - Mostly self-explanatory.  Should be reasonable.