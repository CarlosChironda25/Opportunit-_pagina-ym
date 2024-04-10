// import React from "react";
import OwlCarousel from "react-owl-carousel";
import CardAll from "./CardAll";
import Title from "./Title";
import axios from "axios";
import banner from "../img/banner.png";
import Select from "react-select";
import { MdOutlineFilterListOff } from "react-icons/md";


import React, { useEffect, useState } from "react";
function BussinessCard() {

  //Owl Carousel Settings Responsive
  const options = {
    loop: false,
    // rewind: true,
    dots: false,
    items: 1,
    margin: 30,
    responsiveClass: true,
    autoplay: true,
    smartSpeed: 3000,
    responsiveClass: true,
    autoplayTimeout: 4000,
    autoplayHoverPause: true,
    navigation: true,
    startPosition: 1,
    center: false,
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
        // loop: false,
      },
    },
  };

  const [data3, setData3] = useState([]);
  const [data2, setData2] = useState([]);
  const [reset_btn, set_reset_btn] = useState(false);

  const [selectedOptions1, setSelectedOptions1] = useState([]);
  const [selectedOptions2, setSelectedOptions2] = useState([]);
  const [searchInput, setSearchInput] = useState('');


  const [data, setData] = useState([]);
  const filters = {};

  const show2 = async () => {
    const result = await axios.get("http://localhost:5001/api/category/get", {
      headers: {
        Authorization:
          "lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV",
      },
    });

    const result2 = await axios.get("http://localhost:5001/api/location/get", {
      headers: {
        Authorization:
          "lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV",
      },
    });

    let option1Data = [];
    let option2Data = [];

    for (let x in result.data.data) {
      option1Data.push({
        value: result.data.data[x].id,
        label: result.data.data[x].name,
      });
      setData3(option1Data);
    }

    for (let x in result2.data.data) {
      option2Data.push({
        value: result2.data.data[x].id,
        label: result2.data.data[x].name,
      });
      setData2(option2Data);
    }
  };
  // useEffect(() => {
  //   show2();
  // }, []);


  const handleSelectChange1 = (selectedOptions) => {
    setSelectedOptions1(selectedOptions.map(option => option.value))
    // show();
    set_reset_btn(true);

  };

  const handleSelectChange2 = (selectedOptions) => {
    setSelectedOptions2(selectedOptions.map(option => option.value));
    // show();
    set_reset_btn(true);
  };

  const handleInputChange = (event) => {
    setSearchInput(event.target.value);
    // show();

    set_reset_btn(true);
  };

  const hotreload = () => {
    // setSelectedOptions1([]);
    // setSelectedOptions2([]);
    // setSearchInput('');
    // set_reset_btn(false);
    window.location.reload();
  }


  if (searchInput != '') {
    filters['search_term'] = searchInput;
  }

  if (selectedOptions1.length > 0) {
    filters['category_id'] = selectedOptions1;
  }
  if (selectedOptions2.length > 0) {
    filters['location_id'] = selectedOptions2;
  }


  const show = async () => {
    const result = await axios.post("http://localhost:5001/api/jobs/get_by_category", filters, {
      headers: {
        Authorization:
          "lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV",
      },
    });

    setData(result.data.data_Key);
  };


  useEffect(() => {
    show();
    show2();
  }, [selectedOptions1, selectedOptions2, searchInput]);


  return (
    <div div className="crd">
      <div className="banner">
        <div className="container">
          <div className="row">
            <div className="col-lg-6 col-md-6 col-sm-12 col-xl-6 col-xxl-6">
              <div className="banner-details">
                <h1 className="font50 poppins">Posizioni aperte</h1>
                <p className="font25 poppins">
                  Scopri tutte le opportunità di levorative disponibili per tel
                </p>
              </div>
            </div>
            <div className="col-lg-6 col-md-6 col-sm-12 col-xl-6 col-xxl-6">
              <div className="banner-img">
                <img src={banner} className="w-100" />
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-lg-12 col-md-12 col-sm-12">
              <div class="form-group has-search mb-4">
                <span class="fa fa-search form-control-feedback"></span>
                <input type="text" class="form-control" onKeyUp={handleInputChange} placeholder="Search" />
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-lg-3 col-md-3 col-xl-3 col-xxl-3">
              <div className="select">
                <Select isMulti options={data3}
                  onChange={(e) => handleSelectChange1(e)}
                  placeholder="Categorie" />
              </div>
            </div>
            <div className="col-lg-3 col-md-3 col-xl-3 col-xxl-3">
              <div className="select">
                <Select isMulti options={data2}
                  onChange={(e) => handleSelectChange2(e)}
                  placeholder="Località" />
              </div>
            </div>
            {reset_btn ? (
              <div className="col-lg-3 col-md-3 col-xl-3 col-xxl-3">
                <div className="select">
                  <button className="btn btn-reset" onClick={hotreload}>
                    <MdOutlineFilterListOff style={{
                      fontWeight: "bold",
                      fontSize: "20px",
                      fontWeight: "400",
                      marginTop: "-4px"
                    }} />
                    &nbsp; Reset Filter
                  </button>
                </div>
              </div>
            ) : null}
          </div>

          <hr />
        </div>
      </div>
      <div className="container">
        {data !== null && data !== undefined && Object.keys(data).map(categoryId => (
          <div className="row mt-5" key={categoryId}>
            <div className="col-lg-12">
              <Title titlename={`Posizioni in ${data[categoryId][0].category_name}`} />
            </div>
            <div className="col-lg-12">
              <OwlCarousel
                className="owl-carousel owl-theme"
                // loop={false}
                dots={false}
                // items={3}
                autoplay={false}
                // rewind={true}
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
