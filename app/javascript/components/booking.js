const updateCounter = (counter, count) => {
  counter.dataset.count = count;
  counter.innerText = count;
};

const updateInput = (ticketsCount) => {
  const input = document.getElementById('booking_nb_tickets');
  input.value = ticketsCount;
};

const updateAmount = (amountCents) => {
  const amount = document.getElementById('booking-amount');
  amount.innerHTML = `MONTANT TOTAL : ${amountCents / 100} €`;
};




const handleClick = (e) => {
  const offset = Number.parseInt(e.currentTarget.dataset.offset);

  const ticketsCounter = document.querySelector('#tickets-counter');
  const ticketsCount = Number.parseInt(ticketsCounter.dataset.count, 10) + offset;

  const unitPriceCents = document.querySelector('#unit-price').dataset.priceCents;
  const amountCents = unitPriceCents * ticketsCount;

  if (ticketsCount > 0) {
    updateCounter(ticketsCounter, ticketsCount);
    updateInput(ticketsCount);
    updateAmount(amountCents);
  } else {
    e.preventDefault();
  }
}


const initBooking = () => {
  const incrementers = document.querySelectorAll('.incrementer');
  incrementers.forEach(incrementer => {
    incrementer.addEventListener('click', handleClick);
  });
}

export default initBooking;
