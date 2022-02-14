const checkout = () => {
  let price = document.getElementById('price');
  let reservationStart = document.getElementById("reservation_reservation_start");
  let reservationEnd = document.getElementById("reservation_reservation_end");
  let start;
  let end;

  if(reservationStart && reservationEnd && price) {
    let pricePerDay = price.dataset.price;
    reservationStart.addEventListener("input", () => {
      start = reservationStart.value;
      end = reservationEnd.value;
        if (start !== "" && end !== "") {
          getNumberOfNights(start, end, pricePerDay)
        }
    });
  }
}

function getNumberOfNights(start, end, pricePerDay) {
  const date1 = new Date(start);
  const date2 = new Date(end);
  const oneDay = 1000 * 60 * 60 * 24;
  const diffInTime = date2.getTime() - date1.getTime();
  const diffInDays = (Math.round(diffInTime / oneDay));
  let modalContent = document.querySelector(".checkout-section")
  modalContent.innerHTML = `<div class="checkout-card-details"><p>${Number(pricePerDay)}€ x ${diffInDays} night(s)</p><p>Total: ${diffInDays * pricePerDay}€</p><p>You will not be charged until the reservation has been validated</p></div>`
}

export { checkout };
