import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
// import "flatpickr/dist/themes/airbnb.css" // A path to the theme CSS




// plugins: [new rangePlugin({ input: "#range_end"})]

  flatpickr(".datepicker", {allowInput: true});
