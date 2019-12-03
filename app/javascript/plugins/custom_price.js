const showTrainSliderValue = () => {
  const trainRangeSlider = document.getElementById("company_policy_max_price_train");
  const trainRangeBullet = document.getElementById("rs-bullet-train");
  trainRangeBullet.innerHTML = trainRangeSlider.value;
  const bulletPosition = (trainRangeSlider.value / trainRangeSlider.max);
  trainRangeBullet.style.left = (bulletPosition * 578) + "px";
}

const showHotelSliderValue = () => {
  const hotelRangeSlider = document.getElementById("company_policy_max_price_hotel");
  const hotelRangeBullet = document.getElementById("rs-bullet-hotel");
  hotelRangeBullet.innerHTML = hotelRangeSlider.value;
  const bulletPosition = (hotelRangeSlider.value / hotelRangeSlider.max);
  hotelRangeBullet.style.left = (bulletPosition * 578) + "px";
}

const showCarSliderValue = () => {
  const carRangeSlider = document.getElementById("company_policy_max_price_car");
  const carRangeBullet = document.getElementById("rs-bullet-car");
  carRangeBullet.innerHTML = carRangeSlider.value;
  const bulletPosition = (carRangeSlider.value / carRangeSlider.max);
  carRangeBullet.style.left = (bulletPosition * 578) + "px";
}

const priceRange = () => {
  const trainRangeSlider = document.getElementById("company_policy_max_price_train");
  const hotelRangeSlider = document.getElementById("company_policy_max_price_hotel");
  const carRangeSlider = document.getElementById("company_policy_max_price_car");

  if (trainRangeSlider && hotelRangeSlider && carRangeSlider) {
    trainRangeSlider.addEventListener("input", showTrainSliderValue, false);
    showTrainSliderValue();

    hotelRangeSlider.addEventListener("input", showHotelSliderValue, false);
    showHotelSliderValue();

    carRangeSlider.addEventListener("input", showCarSliderValue, false);
    showCarSliderValue();
  }
}

export { priceRange };
