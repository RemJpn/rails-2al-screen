const toggleMenu = () => {
  const slidingMenu = document.querySelector('.sliding-menu');
  const menuOpen = document.querySelector('.sliding-menu-open');
  menuOpen.removeEventListener('mouseenter', hoverMenu);

  slidingMenu.classList.toggle('sliding-menu-active');
  slidingMenu.classList.remove('sliding-menu-hover');

  slidingMenu.addEventListener('transitionend', () => {
    const menuOpen = document.querySelector('.sliding-menu-open');
    menuOpen.addEventListener('mouseenter', hoverMenu);
  });


}

const hoverMenu = () => {
  const slidingMenu = document.querySelector('.sliding-menu');
  if (!slidingMenu.classList.contains('sliding-menu-active')) {
    slidingMenu.classList.add('sliding-menu-hover');
  }
}
const unhoverMenu = () => {
  const slidingMenu = document.querySelector('.sliding-menu');
  slidingMenu.classList.remove('sliding-menu-hover');
}



const initSlidingMenu = () => {
  if (document.querySelector('.sliding-menu')) {
    const menuOpen = document.querySelector('.sliding-menu-open');
    const menuClose = document.querySelector('.sliding-menu-close');

    menuOpen.addEventListener('click', toggleMenu);
    menuClose.addEventListener('click', toggleMenu);

    menuOpen.addEventListener('mouseenter', hoverMenu);
    menuOpen.addEventListener('mouseleave', unhoverMenu );
  }
}

export default initSlidingMenu;
