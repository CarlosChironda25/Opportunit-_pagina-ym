// import React from "react";
import OwlCarousel from "react-owl-carousel";
import CardAll from "./CardAll";
import Title from "./Title";
import axios from "axios";
import React, { useEffect, useState } from "react";
function BussinessCard() {
  //Owl Carousel Settings Responsive
  const options = {
    loop: true,
    // rewind: false,
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
  const [data, setData] = useState([]);
  const show = async () => {
    const result = await axios.get("http://localhost:5000/api/jobs/get_by_category", {
      headers: {
        Authorization:
          "lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV",
      },
    });

    setData(result.data.data_Key);
  };
  useEffect(() => {
    show();
  }, []);
  return (
    <div div className="crd">

      <div className="container">
        {Object.keys(data).map(categoryId => (

          <div className="row">
            <div className="col-lg-12">

              <Title titlename={`Posizioni in ${data[categoryId][0].category_name}`} />
            </div>
            <div className="col-lg-12">

              <OwlCarousel
                className="owl-carousel owl-theme"
                loop
                dots={false}
                items={3}
                autoplay={false}
                rewind={true}
                {...options}
              >

                {data[categoryId].map(item => (
                  <div className="item" key={item.id}>
                    <CardAll
                      title={item.title}
                      address={item.location_name}
                      label={item.category_name}
                      id={item.id}
                    />
                  </div>
                ))}

              </OwlCarousel>
            </div>
          </div>

        ))}
      </div>

    </div>
  );
}

export default BussinessCard;
