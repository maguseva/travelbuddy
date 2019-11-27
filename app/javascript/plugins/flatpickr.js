import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  allowInput: true,
  altInput: true,
  minDate: "today",
  plugins: [new rangePlugin({ input: "#end_date"})]
})
