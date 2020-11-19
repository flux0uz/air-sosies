const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navbarLink = document.querySelector("#navbarSupportedContent > ul > li.nav-item.active > a");
  const navbarText = document.querySelector("#navbarSupportedContent > ul > li:nth-child(2) > p");
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
        navbarLink.classList.remove('text-white');
        navbarText.classList.remove('text-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        navbarLink.classList.add('text-white');
        navbarText.classList.add('text-white');
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
