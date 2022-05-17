// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
require("flatpickr/dist/themes/material_orange.css");


const initFlatpickr = () => {
  const dateInputElement = document.getElementById('booking_start_date');
  const bookingForm = document.querySelector(".simple_form");
  if (dateInputElement && bookingForm) {
    flatpickr(".datepicker", {
      minDate: 'today', // make previous dates unavailable
      altInput: true, // display a user friendlier message
      dateFormat: "Y-m-d",
      disable: JSON.parse(bookingForm.dataset.unavailableDates),
      inline: false
    });
  }
};

// const initFlatpickr2 = () => {
//   const editBookingForm = document.getElementById('edit_booking');
//   if (editBookingForm) {
//     flatpickr(".datepicker2", {
//       minDate: 'today', // make previous dates unavailable
//       altInput: true, // display a user friendlier message
//       dateFormat: "Y-m-d",
//       disable: JSON.parse(editBookingForm.dataset.unavailableDates),
//       inline: false
//     });
//   }
// };


export { initFlatpickr };
// export { initFlatpickr2 };
