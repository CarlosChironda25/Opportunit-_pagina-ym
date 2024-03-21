import React from "react";
import OwlCarousel from "react-owl-carousel";
import CardAll from "./CardAll";
import Title from "./Title";

function BussinessCard() {
  //Owl Carousel Settings Responsive
  const options = {
    loop: true,
    dots: false,
    items: 1,
    margin: 30,
    responsiveClass: true,
    autoplay: true,
    center: true,
    smartSpeed: 3000,
    responsiveClass: true,
    autoplayTimeout: 4000,
    autoplayHoverPause: true,
    navigation: true,

    responsive: {
      0: {
        items: 1,
        nav: true,
      },
      600: {
        items: 2,
        nav: true,
      },
      1000: {
        items: 3,
        nav: true,
        loop: true,
      },
    },
  };

  return (
    <div div className="crd">
      <div className="container">
        <div className="row">
          <div className="col-lg-12">
            <Title titlename="Posizioni in Staff" />
          </div>
          <div className="col-lg-12">
            <OwlCarousel
              className="owl-carousel owl-theme"
              loop
              dots={false}
              items={3}
              autoplay={true}
              {...options}
            >
              <div className="item">
                <CardAll
                  title="Business Data Analyst Intern"
                  address="Milano, Roma, Trieste, Mogliano Veneto"
                  label="Digital & Analytics"
                />
              </div>
            </OwlCarousel>
          </div>
        </div>
      </div>
    </div>
  );
}

export default BussinessCard;
