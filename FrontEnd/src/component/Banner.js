import banner from "../img/banner.png";
import Select from "react-select";
import axios from "axios";
import React, { useEffect, useState } from "react";
function Banner() {
  const [data3, setData3] = useState([]);
  const [data2, setData2] = useState([]);


  // ==================== Filter functionality code block starts here ==================== //
  const [selectedOptions1, setSelectedOptions1] = useState([]);
  const [selectedOptions2, setSelectedOptions2] = useState([]);
  const [searchInput, setSearchInput] = useState('');

  const handleSelectChange1 = (selectedOptions) => {
    // setSelectedOptions1(selectedOptions);
    console.log("skhdisdhdi", selectedOptions);

  };

  const handleSelectChange2 = (selectedOptions) => {
    setSelectedOptions2(selectedOptions);

  };

  const handleInputChange = (event) => {
    setSearchInput(event.target.value);
    handleFilter()
  };

  // Function to handle filtering based on selected options and search input
  const handleFilter = () => {
    console.log(searchInput);
    
  };

  // ==================== Filter functionality code block ends here ==================== //



  const show = async () => {
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
  // const newData = data.map((ele) => ({ label: ele.name, value: ele.name }));
  useEffect(() => {
    show();
  }, []);
  return (
    <div className="banner">
      <div className="container">
        <div className="row">
          <div className="col-lg-6 col-md-6 col-sm-12 col-xl-6 col-xxl-6">
            <div className="banner-details">
              <h1 className="font50 poppins">Posizioni aperte</h1>
              <p className="font25 poppins">
                Scopri le opportunità di lavoro e candidati
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
              <input type="text" class="form-control" onChange={handleInputChange} placeholder="Search" />
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col-lg-3 col-md-3 col-xl-3 col-xxl-3">
            <div className="select">
              <Select isMulti options={data3}
                onChange={(e) => handleSelectChange1(Array.from(e.target.selectedOptions, (option) => option.value))}
                placeholder="Categorie" />
            </div>
          </div>
          <div className="col-lg-3 col-md-3 col-xl-3 col-xxl-3">
            <div className="select">
              <Select isMulti options={data2}
                onChange={(e) => handleSelectChange2(Array.from(e.target.selectedOptions, (option) => option.value))}
                placeholder="Località" />
            </div>
          </div>
        </div>

        <hr />
      </div>
    </div>
  );
}

export default Banner;
