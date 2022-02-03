import flatpickr from "flatpickr";

let availability = gon.flatavailability;
let reservation = gon.flatreservation;

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    minDate: availability.at(0),
    maxDate: availability.at(-1),
    disable: reservation
  });
  console.log(availability.at(0));
  console.log(availability.at(-1));

}

export { initFlatpickr };
