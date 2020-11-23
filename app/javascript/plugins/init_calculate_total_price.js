const totalPrice = () => {
  const calendar = document.querySelector("#new_booking > div.form-group.string.optional.booking_start_date > div > div.flatpickr-innerContainer > div > div.flatpickr-days > div");
  if (calendar) {
    endRange = document.querySelector("#new_booking > div.form-group.string.optional.booking_start_date > div > div.flatpickr-innerContainer > div > div.flatpickr-days > div > span.flatpickr-day.selected.endRange");
    endRange.addEventListener("click", (event) => {
      console.log(event)
    });
//     if (endRange.addEventListener("click", )) {
//       const startRange = document.querySelector("#new_booking > div.form-group.string.optional.booking_start_date > div > div.flatpickr-innerContainer > div > div.flatpickr-days > div > span.flatpickr-day.selected.startRange");
//       const endDate = parseInt(endRange.innerText);
//       const startDate = parseInt(startRange.innerText);
//       console.log(startRange);
//     };
  };
};

export { totalPrice };
