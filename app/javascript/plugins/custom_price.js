const showSliderValue = () => {
  const rangeBullet = document.getElementById("rs-bullet");
  let rangeSlider = document.getElementById("company_policy_max_price_train");

  rangeBullet.innerHTML = rangeSlider.value;
  let bulletPosition = (rangeSlider.value / rangeSlider.max);
  console.log(bulletPosition * 1300)
  // TODO fix the position - should be 39
  rangeBullet.style.left = (bulletPosition * 578) + "px";

}

const priceRange = () => {
  const rangeSlider = document.getElementById("company_policy_max_price_train");
  if (rangeSlider) {
    rangeSlider.addEventListener("input", showSliderValue, false);
    showSliderValue();
  }
}

export { priceRange };
