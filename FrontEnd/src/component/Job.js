import CardAll from "./CardAll";
import BussinessCard from "./BussinessCard";
import logo from "../img/logo-generali-cut.png";
import { Link } from "react-router-dom";
import axios from "axios";
import React, { useEffect, useState } from "react";
function Job() {
  const [data, setData] = useState([]);

  const show = async (jobId) => {
    try {
      const result = await axios.get(
        `http://localhost:5000/api/jobs/get/${jobId}`,
        {
          headers: {
            Authorization:
              "lFM0vdsTK2HBwMTEVxjUF4LKCd2c2qS58MAy3hw5bmATF8hOuXPVYLHATiUA9ISV",
          },
        }
      );
      setData(result.data.data);
      console.log("result", result);
    } catch (error) {
      console.error("Error fetching job data:", error);
    }
  };

  useEffect(() => {
    show(2);
  }, []);
  return (
    <>
      <div className="job-banner">
        <div className="container">
          <div className="row">
            <div className="col-lg-12 col-md-12 col-xl-12 col-sm-12">
              <Link
                to="/"
                type="button"
                className="back font15 border-0 poppins text-uppercase text-decoration-none !text-black"
              >
                <i class="fa fa-arrow-left me-3" aria-hidden="true"></i>Indietro
              </Link>
              <div className="row align-items-lg-center mt-3 ">
                <div className="col-lg-8 col-md-6 col-xl-8 col-sm-12">
                  <div className="banner-name poppins font22 mb-2">
                    {data.title}
                  </div>
                  <p>
                    Finamcial audit
                    <img
                      src={logo}
                      style={{ width: "30px", marginLeft: "20px" }}
                    />
                  </p>
                </div>
                <div className="col-lg-4 col-md-6 col-xl-4 col-sm-12">
                  <div className="d-flex justify-content-between gap-4">
                    <button
                      type="button"
                      className="orange-btn font16 poppins pe-3 ps-3 w-100"
                    >
                      CONDIVIDI
                    </button>
                    <button
                      type="button"
                      className="orange-btn font16 poppins pe-3 ps-3 w-100 red"
                    >
                      CANDIDATI
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="job">
        <div className="container">
          <div className="col-lg-12 col-md-12 col-xl-12 col-sm-12">
            <div className="infotitle">
              <h1 className="font19 poppins">INFORMAZIONI</h1>
              <hr></hr>
            </div>
          </div>
          <div className="row">
            <div className="col-lg-8 col-md-7 col-sm-12 col-xl-8 col-xxl-8">
              <div className="job-details">
                <h4 className="font18 poppins mb-2">Job Description</h4>
                <p className="font14 poppins">{data.job_description}</p>
              </div>
              <div className="job-details">
                <h4 className="font18 poppins mb-2">Requirements</h4>
                <ul>
                  <li>
                    <p className="font14 poppins">{data.requirement}</p>
                  </li>
                </ul>
              </div>

              <div className="job-details">
                <h4 className="font18 poppins mb-2">Company Profile</h4>
                <p className="font14 poppins">{data.company_profile}</p>
              </div>
            </div>
            {/* <div className="col-lg-4 col-md-5 col-sm-12 col-xl-4 col-xxl-8">
              <div className="job-card">
                <ul>
                  <li>
                    <p className="font16 poppins">
                      <i class="fa fa-file-o me-3" aria-hidden="true"></i>Stage
                    </p>
                  </li>
                  <li>
                    <p className="font16 poppins">
                      <i
                        class="fa fa-shopping-basket me-3"
                        aria-hidden="true"
                      ></i>
                      Shareholders & Governance
                    </p>
                  </li>
                  <li>
                    <p className="font16 poppins">
                      <i
                        class="fa fa-shopping-basket me-3"
                        aria-hidden="true"
                      ></i>
                      Corportate affairs
                    </p>
                  </li>
                  <li>
                    <p className="font16 poppins">
                      <i class="fa fa-map-marker me-3" aria-hidden="true"></i>
                      Trieste
                    </p>
                  </li>
                </ul>
                <h3 className="font19 poppins mb-4">Tag</h3>
                <div className="flex">
                  <h3 className="font16 poppins">
                    Assicurazioni Generali S.p.A
                  </h3>
                  <img src={logo} className="img-logo" />
                </div>
              </div>
            </div> */}
          </div>
        </div>
        <hr></hr>
        <BussinessCard />
      </div>
    </>
  );
}

export default Job;
