import flatpickr from "flatpickr";

const initFlatpickrReservation = () => {
  let availability = gon.flatavailability;
  let reservation = gon.flatreservation;
  flatpickr(".datepickerreservation", {
    minDate: availability.at(0),
    maxDate: availability.at(-1),
    disable: reservation
  });
}

const initFlatpickrNewFlat = () => {
  flatpickr(".datepickerflat", {});
}

export { initFlatpickrReservation };
export { initFlatpickrNewFlat };
