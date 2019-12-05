// external js: flickity.pkgd.js
import Flickity from 'flickity';
import "flickity/css/flickity.css";

const initFlickity = () => {
  const flky = new Flickity('.carousel', {
    autoPlay: 2000,
    cellAlign: 'center'
// var $carousel = $('.carousel').flickity({
//   imagesLoaded: true,
//   percentPosition: false,
// });

// var $imgs = $carousel.find('.carousel-cell img');
// // get transform property
// var docStyle = document.documentElement.style;
// var transformProp = typeof docStyle.transform == 'string' ?
//   'transform' : 'WebkitTransform';
// // get Flickity instance
// var flkty = $carousel.data('flickity');

// $carousel.on( 'scroll.flickity', function() {
//   flkty.slides.forEach( function( slide, i ) {
//     var img = $imgs[i];
//     var x = ( slide.target + flkty.x ) * -1/3;
//     img.style[ transformProp ] = 'translateX(' + x  + 'px)';
//   });
// });
  });
}

export {initFlickity};
