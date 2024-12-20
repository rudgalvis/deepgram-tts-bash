#!/bin/sh

# Load environment variables from config file
if [ -f config ]; then
  export $(cat config | xargs)
fi

# Read the contents of _input.md into a variable
text=$(cat _input.md)

# Use the variable in the curl request
curl --request POST \
     --url "https://api.deepgram.com/v1/speak?model=$VOICE" \
     --header 'Accept: audio/wav' \
     --header 'Content-Type: application/json' \
     --header "Authorization: Token $API_KEY" \
     --data "
{
  \"text\": \"$text\"
}
" --output _output.wav