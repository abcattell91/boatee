<<<<<<< HEAD
// Load all the controllers within this directory and all subdirectories. 
=======
// Load all the controllers within this directory and all subdirectories.
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
// Controller files must be named *_controller.js.

import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

<<<<<<< HEAD
=======

>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))
