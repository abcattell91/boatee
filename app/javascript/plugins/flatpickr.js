// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
require("flatpickr/dist/themes/material_blue.css");


const initFlatpickr = () => {
  const newBookingForm = document.getElementById('new_booking');
  if (newBookingForm) {
    flatpickr(".datepicker", {
      minDate: 'today', // make previous dates unavailable
      altInput: true, // display a user friendlier message
      dateFormat: "Y-m-d",
      disable: JSON.parse(newBookingForm.dataset.unavailableDates),
<<<<<<< HEAD
      enableTime: true,
=======
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
      inline: false
    });
  }
};

export { initFlatpickr };
