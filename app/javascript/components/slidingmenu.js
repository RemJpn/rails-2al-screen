const toggleMenu = () => {
  const slidingMenu = document.querySelector('.sliding-menu');
  slidingMenu.classList.toggle('sliding-menu-active');
}

const initSlidingMenu = () => {
  if (document.querySelector('.sliding-menu')) {
    const menuOpen = document.querySelector('.sliding-menu-open');
    const menuClose = document.querySelector('.sliding-menu-close');

    menuOpen.addEventListener('click', toggleMenu);
    menuClose.addEventListener('click', toggleMenu);
  }
}

export default initSlidingMenu;
