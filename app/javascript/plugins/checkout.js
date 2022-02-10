let pricePerDay = gon.priceperday;

const checkout = () => {
  console.log("debug: checkout");
  let reservationStart = document.getElementById("reservation_reservation_start");
  let reservationEnd = document.getElementById("reservation_reservation_end");
  let start;
  let end;

  if(reservationStart && reservationEnd) {
    reservationStart.addEventListener("input", () => {
      start = reservationStart.value;
      end = reservationEnd.value;
        if (start !== "" && end !== "") {
          getNumberOfNights(start, end)
        }
    });
  }

}

function getNumberOfNights(start, end) {
  const date1 = new Date(start);
  const date2 = new Date(end);

  // One day in milliseconds
  const oneDay = 1000 * 60 * 60 * 24;

  // Calculating the time difference between two dates
  const diffInTime = date2.getTime() - date1.getTime();

  // Calculating the no. of days between two dates
  const diffInDays = (Math.round(diffInTime / oneDay));

  let modalContent = document.querySelector(".checkout-modal")
  modalContent.innerHTML = `<p>${pricePerDay}€ x ${diffInDays} night(s)</p><p>Total: ${diffInDays * pricePerDay}€</p><p>You will not be charged until the reservation has been validated</p>`
}

export { checkout };