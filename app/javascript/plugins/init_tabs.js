const initTabs = () => {
  const doppelTab = document.querySelector('#doppel');
  if(doppelTab) {
    doppelTab.addEventListener('click', (event) => {
      event.preventDefault();
      document.querySelector('#doppel').classList.add('active');
      document.querySelector('#booking').classList.remove('active');
      document.querySelector('.doppel').classList.remove('hidden');
      document.querySelector('.booking').classList.add('hidden');
    });
  }
  
  const bookingTab = document.querySelector('#booking');
  if(bookingTab) {
    bookingTab.addEventListener('click', (event) => {
      event.preventDefault();
      document.querySelector('#doppel').classList.remove('active');
      document.querySelector('#booking').classList.add('active');
      document.querySelector('.doppel').classList.add('hidden');
      document.querySelector('.booking').classList.remove('hidden');
    });
  }
};

export { initTabs };