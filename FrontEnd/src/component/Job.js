// import CardAll from "./CardAll";
// import BussinessCard from "./BussinessCard";
import logo from "../img/logo_icon.png";
import { Link, useLocation } from "react-router-dom";
import axios from "axios";
import React, { useEffect, useState } from "react";
import ReactDOM from 'react-dom';

import Swal from 'sweetalert2'
import withReactContent from 'sweetalert2-react-content'

const MySwal = withReactContent(Swal)

import {
  EmailIcon,
  EmailShareButton,
  FacebookShareButton,
  FacebookIcon,
  WhatsappShareButton,
  WhatsappIcon,
  TwitterIcon,
  TwitterShareButton
} from "react-share";

function Job() {
  const [data, setData] = useState([]);
  const location = useLocation();
  const searchParams = new URLSearchParams(location.search);
  const jobId = searchParams.get("id");

  const show = async () => {
    try {
      const result = await axios.get(
        `http://localhost:5001/api/jobs/get/${jobId}`,
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
    window.scrollTo(0, 0);

    show(jobId);
  }, [jobId]);



  const urlParams = new URLSearchParams(location.search);

  const shareUrl = "http://localhost:3000/job?id=" + urlParams.get("id");
  const page_title = data.title;

  const SocialShareComponent = () => (
    <div>
      <FacebookShareButton url={shareUrl} quote={page_title}>
        <FacebookIcon size={32} round={true} />
      </FacebookShareButton>
      &nbsp;
      <WhatsappShareButton url={shareUrl} quote={page_title}>
        <WhatsappIcon size={32} round={true} />
      </WhatsappShareButton>
      &nbsp;
      <TwitterShareButton subject='Social Share' body="Social share contect is here" url={"Has shared from Web"} quote={page_title}>
        <TwitterIcon size={32} round={true} />
      </TwitterShareButton>

    </div>
  );


  const social_share = () => {
    MySwal.fire({
      title: "<strong>Social Share</strong>",
      html: '<div id="social-share-container"></div>',
      showCloseButton: true,
      focusConfirm: true,
      confirmButtonText: "Close",
      didOpen: () => {
        ReactDOM.render(<SocialShareComponent />, document.getElementById('social-share-container'));
      }
    });
  };




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
                  <div className="banner-name poppins font50 mb-2">
                    {data.title}
                  </div>
                  <p>

                    {data.publication}
                    <img
                      src={logo}
                      style={{ width: "30px", marginLeft: "20px" }}
                    />
                  </p>
                </div>
                <div className="col-lg-4 col-md-6 col-xl-4 col-sm-12">
                  <div className="d-flex gap-4">
                    <a href="javascript:void(0)" onClick={social_share}
                      type="button"
                      className="orange-btn font16 poppins pe-3 ps-3 w-10 text-decoration-none"
                    >
                      CONDIVIDI
                    </a>
                    {data.link !== '' ? (
                      <a href={data.link}
                        type="button"
                        className="orange-btn font16 poppins pe-3 ps-3 red w-10 text-decoration-none"
                      >
                        CANDIDATI
                      </a>
                    ) : null}
                    {/* <button
                      type="button"
                      className="orange-btn font16 poppins pe-3 ps-3 w-100 red"
                    >
                      CANDIDATI
                    </button> */}

                    {/* <Link className="orange-btn font16 poppins pe-3 ps-3 w-100 red" target="_blank" to="http://localhost:5173/">CANDIDATI</Link> */}

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
              {data.job_description !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Descrizione del lavoro</h4>
                  <p className="font14 poppins" dangerouslySetInnerHTML={{ __html: data.job_description }}></p>
                </div>
              ) : null}


              {data.requirement !== '' ? (

                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Competenze richieste</h4>
                  <p className="font14 poppins" dangerouslySetInnerHTML={{ __html: data.requirement }}></p>
                </div>
              ) : null}


              {data.company_profile !== '' ? (

                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Company Profile</h4>
                  <p className="font14 poppins" dangerouslySetInnerHTML={{ __html: data.company_profile }}></p>
                </div>
              ) : null}

              {data.job_type !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Tipo di lavoro</h4>
                  <p className="font14 poppins">{data.job_type}</p>
                </div>
              ) : null}

              {data.division !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Divisione</h4>
                  <p className="font14 poppins">{data.division}</p>
                </div>
              ) : null}

              {data.number_of_profile !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Numero di profilo ricercati</h4>
                  <p className="font14 poppins">{data.number_of_profile}</p>
                </div>
              ) : null}

              {data.workplace !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Sede di lavoro</h4>
                  <p className="font14 poppins">{data.workplace}</p>
                </div>
              ) : null}

              {data.contract_type !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Tipologia di contratto</h4>
                  <p className="font14 poppins">{data.contract_type}</p>
                </div>
              ) : null}

              {data.salary !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Retribuzione</h4>
                  <p className="font14 poppins">{data.salary}</p>
                </div>
              ) : null}

              {data.type_of_work !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Tipologia di lavoro</h4>
                  <p className="font14 poppins">{data.type_of_work}</p>
                </div>
              ) : null}

              {data.application_deadline !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Scadenza Applicazione</h4>
                  <p className="font14 poppins">{data.application_deadline}</p>
                </div>
              ) : null}

              {data.useful_information !== '' ? (
                <div className="job-details mb-5">
                  <h4 className="font18 poppins mb-2">Informazioni  Utili</h4>
                  <p className="font14 poppins" dangerouslySetInnerHTML={{ __html: data.useful_information }}></p>
                </div>

              ) : null}
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
        {/* <BussinessCard /> */}
      </div>
    </>
  );
}

export default Job;
