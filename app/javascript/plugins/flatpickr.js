import flatpickr from "flatpickr";

const initFlatpickrReservation = () => {
  let availability = gon.flatavailability;
  let reservation = gon.flatreservation;
  if (availability && reservation) {
    flatpickr(".datepickerreservation", {
      minDate: "today",
      maxDate: availability.at(-1),
      disable: reservation
    });
  }
}

const initFlatpickr = () => {
  flatpickr(".datepicker", {});
}

export { initFlatpickrReservation };
export { initFlatpickr };
