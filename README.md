# owntracks-recorder

This is a Dockerfile build for Owntracks-Recorder without MQTT (and without TLS).

Build with: docker build -t  owntracks-recorder .

Run with: docker run -e OTR_HOST=172.17.0.4 -e OTR_BROWSERAPIKEY=xxxxxxxxgooglemapsapikeyxxxxx --name owntracks owntracks-recorder:latest

For more enviroment variables see: https://github.com/owntracks/recorder#ot-recorder-options

