import places from 'places.js';

const initAutocomplete = () => {
  const addressInputs = document.querySelectorAll('.search-input');
  if (addressInputs) {
    addressInputs.forEach(input => {
      places({ container: input })
      // places({ container: addressInputs[1] });
    })
  }
};

export { initAutocomplete };
