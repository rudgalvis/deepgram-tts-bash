## Pre-requisites

#### Setup
1. Run `mv config.exmaple config`
2. Edit `config` file
   1. Set `API KEY` ([find here](https://console.deepgram.com/project/e8b5277d-65c6-492f-9da3-5c07da61ea7c/keys))
   2. Set `VOICE` ([choose here](https://developers.deepgram.com/docs/tts-models))
3. Run `chmod +x ./text-to-speech.sh` for the command to work.

# Use Text To Speech 

1. Put your text into [input.md](input.md) file.
1. Run `./text-to-speech.sh` to generate the audio file.