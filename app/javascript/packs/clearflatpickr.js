import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const clearFlatpickr = () => {
  document.querySelector(".datepickerreservation")._flatpickr.clear();
}

if(document.getElementById('clear-btn-start')) {
  document.getElementById('clear-btn-start').addEventListener('click', () => {
    clearFlatpickr();
    document.querySelector('.checkout-section').innerHTML = '';
  })
}
if (document.getElementById('clear-btn-end')) {
  document.getElementById('clear-btn-end').addEventListener('click', () => {
    clearFlatpickr();
    document.querySelector('.checkout-section').innerHTML = '';
  })
}

export { clearFlatpickr };
