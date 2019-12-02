const initAutocomplete = () => {
  const addressInput = document.getElementById('search-input-from');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
