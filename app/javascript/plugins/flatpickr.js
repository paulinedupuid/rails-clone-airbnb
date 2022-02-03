import flatpickr from "flatpickr";

const initFlatpickr = () => {
  let availability = gon.flatavailability;
  let reservation = gon.flatreservation;
  flatpickr(".datepicker", {
    minDate: availability.at(0),
    maxDate: availability.at(-1),
    disable: reservation
  });
}

export { initFlatpickr };
