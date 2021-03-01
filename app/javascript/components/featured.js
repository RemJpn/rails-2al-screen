const handleClick = (e) => {
  const featuredItems = document.querySelectorAll('.featured-item');
  featuredItems.forEach(item => item.classList.remove('featured-item-active'));
  e.currentTarget.classList.add('featured-item-active');

  console.log(e.currentTarget.dataset)
  const selectedItem = e.currentTarget.dataset.featured;

  const featuredDescriptions = document.querySelectorAll('.featured-description');
  featuredDescriptions.forEach( description => {
    if (description.dataset.featured == selectedItem) {
      description.classList.add('featured-active');
    } else {
      description.classList.remove('featured-active');
    }
  });

  const featuredImages = document.querySelectorAll('.featured-img');
  featuredImages.forEach( image => {
    if (image.dataset.featured == selectedItem) {
      image.classList.add('featured-active');
    } else {
      image.classList.remove('featured-active');
    }
  });
}

const initFeatured = () => {
  const featuredItems = document.querySelectorAll('.featured-item');
  featuredItems.forEach( item => {
    item.addEventListener('click', handleClick);
  });
}

export default initFeatured;
