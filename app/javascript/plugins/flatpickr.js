import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const initFlatpickrReservation = () => {
  console.log("debug: initFlatPickrReservation")
  let availability = gon.flatavailability;
  let reservation = gon.flatreservation;
  if (availability && reservation) {
    flatpickr(".datepickerreservation", {
      "plugins": [new rangePlugin({ input: ".datepickerreservation2" })],
      minDate: "today",
      maxDate: availability.at(-1),
      disable: reservation
    });
  }
}

const initFlatpickr = () => {
  console.log("debug: initFlatPickr")
  flatpickr(".datepicker", {
    minDate: "today"
  });
}


// const clearFlatpickr = () => {
//   flatpickr(".datepickerreservation", {}).clear();
// }

export { initFlatpickrReservation };
export { initFlatpickr };
// export { clearFlatpickr };
