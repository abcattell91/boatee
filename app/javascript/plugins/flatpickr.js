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
      inline: false
    });
  }
};

const initFlatpickr2 = () => {
  const editBookingForm = document.getElementById('edit_booking_12');
  if (editBookingForm) {
    flatpickr(".datepicker2", {
      minDate: 'today', // make previous dates unavailable
      altInput: true, // display a user friendlier message
      dateFormat: "Y-m-d",
      disable: JSON.parse(editBookingForm.dataset.unavailableDates),
      inline: false
    });
  }
};


export { initFlatpickr };
export { initFlatpickr2 };
