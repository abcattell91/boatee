// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// import { application } from "stimulus"
// import Carousel from "stimulus-carousel"

// const application = Appliaction.start()
// appliaction.register("carousel", Carousel)
