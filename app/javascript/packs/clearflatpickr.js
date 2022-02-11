import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const clearFlatpickr = () => {
  document.querySelector(".datepickerreservation")._flatpickr.clear();
}

document.getElementById('button-addon1').addEventListener('click', () => {
  clearFlatpickr();
  document.querySelector('.checkout-section').innerHTML = '';
})

document.getElementById('button-addon2').addEventListener('click', () => {
  clearFlatpickr();
  document.querySelector('.checkout-section').innerHTML = '';
})

export { clearFlatpickr };
