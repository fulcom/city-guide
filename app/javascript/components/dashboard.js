const dashboard_animation = () => {
  const btn_bookings = document.getElementById('mybookings_btn');
  const btn_requests = document.getElementById('myrequests_btn');
  const btn_treeps = document.getElementById('mytreeps_btn');
  const one_booking = document.getElementById('mybookings');
  const one_request = document.getElementById('myrequests');
  const one_treep = document.getElementById('mytreeps');



  btn_bookings.addEventListener("click", (event) => {
    btn_requests.classList.remove("active");
    btn_bookings.classList.add("active");
    one_booking.classList.remove("d-none");
    one_request.classList.add("d-none");

  });

  btn_requests.addEventListener("click", (event) => {
    btn_bookings.classList.remove("active");
    btn_requests.classList.add("active");
    one_request.classList.remove("d-none");
    one_booking.classList.add("d-none");

  });

};



export { dashboard_animation };
