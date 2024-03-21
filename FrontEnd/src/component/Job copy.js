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
        `http://localhost:5000/api/jobs/get/${jobId}`
      );
      setData(result.data);
    } catch (error) {
      console.error("Error fetching job data:", error);
      // Handle the error here, such as displaying an error message to the user
    }
  };

  useEffect(() => {
    show(2); // Pass the jobId here or use any other mechanism to determine the jobId
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
                    {/* <button
                      type="button"
                      className="orange-btn font16 poppins pe-3 ps-3 w-100"
                    >
                      SALVA
                    </button> */}
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
                <ul>
                  <li>
                    <p className="font14 poppins">
                      Managing multiple projects and regular cooperation with
                      colleagues from Group Asset & Wealth Management business
                      unit
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Gather and formalize business requirements from clients
                      (internal/external) for IT implementation
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Manage the relationship between the business teams and IT
                      regarding evolutions and defects solving
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Uphold IT teams in design and implementation of solutions
                      to meet business requirements
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Monitor and follow up day by day project tasks
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Prepare reports on project progress
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      In-depth data analysis to identify and fix data quality
                      issues
                    </p>
                  </li>
                </ul>
              </div>
              <div className="job-details">
                <h4 className="font18 poppins mb-2">Requirements</h4>
                <ul>
                  <li>
                    <p className="font14 poppins">
                      Master Degree in Business/Finance or equivalent with a
                      strong IT appetite
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Master Degree in Computer Science, Engineering or
                      equivalent with a developed business approach
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Good knowledge of capital market and financial instruments
                      (fixed income, equity, funds, derivatives, money market
                      instruments, etc.).
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Experience in financial data analysis and algorithms
                      implementation would represent a preferential factor.
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Good programming skills, good knowledge of MS Office and
                      advanced knowledge of Excel. DB query language or SAS
                      knowledge would represent a plus.
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Fluency in English and Italian, a second foreign language
                      is a plus.
                    </p>
                  </li>
                </ul>
              </div>
              <div className="job-details">
                <h4 className="font18 poppins mb-2">Soft skills:</h4>
                <ul>
                  <li>
                    <p className="font14 poppins">Strong learning agility</p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Ability to work autonomously and proactively, taking over
                      responsibility at a very early stage
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Humble, flexible and hands-on approach to solve problems
                      with a strong team player attitude
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Strong commitment and resistance to stress and demanding
                      environment
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Genuine passion for innovation and disruptive technologies
                    </p>
                  </li>
                  <li>
                    <p className="font14 poppins">Strategic thinking</p>
                  </li>
                  <li>
                    <p className="font14 poppins">
                      Good public speaking and presentation skills
                    </p>
                  </li>
                </ul>
              </div>
              <div className="job-details">
                <h4 className="font18 poppins mb-2">Company Profile</h4>
                <p className="font14 poppins">
                  The Investment Asset & Data (IAD) function is in charge of an
                  extensive data warehouse on Generali Group Companies assets.
                  The Warehouse is meant to gather data from several sources at
                  Group Level so to feed Business Intelligence tools and Website
                  with positions, transactions, reference data, performance, and
                  risk figures. Our Business Unit plays an integral part in the
                  success of the Generali Group, building on our diverse
                  competences, on our widely spread geographical presence and on
                  our deep values. With over 1,900 employees and offices in over
                  10 countries worldwide, we believe we are a very solid player
                  in the Asset and Wealth Management market. The Datawarehouse
                  team is at the edge between business and technical teams. It
                  supports the reporting teams in building the necessary
                  reporting for the market, insurance clients, top-management,
                  and operational teams. For this purpose, it accompanies the
                  process from the requirement of the business teams through the
                  analysis and design to the execution of the implementation
                  with the IT department.
                </p>
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
