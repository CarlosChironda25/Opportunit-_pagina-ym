import React from "react";
import logo from "../img/logo.png";
import { Link } from "react-router-dom";

function Footer() {
  return (
    <div className="footer">
      <div className="container ">
        <div className="row mb-4">
          <div className="col-lg-4 col-md-3 col-xl-4 col-sm-12">
            <div className="footer-logo">
              <img src={logo} className="mb-3 w-100" />
            </div>
          </div>
          <div className="col-lg-8 col-md-9 col-xl-8 col-sm-12">
            <div className="socialfoot float-sm-start float-md-end float-lg-end  ">
              <h3 class="font18 poppins mb-2">Seguici sui nostri social</h3>
              <ul>
                <li>
                  <a href="#" target="_blank">
                    <i className="fa fa-facebook fb"></i>
                  </a>
                </li>
                <li>
                  <a href="#" target="_blank">
                    <i class="fa fa-instagram fb"></i>
                  </a>
                </li>
                <li>
                  <a href="#" target="_blank">
                    <i class="fa fa-linkedin-square fb"></i>
                  </a>
                </li>
                {/* <li>
                  <a href="#" target="_blank">
                    <i class="fa fa-twitter fb"></i>
                  </a>
                </li> */}
                {/* <li>
                  <a href="#" target="_blank">
                    <i class="fa fa-youtube-play fb"></i>
                  </a>
                </li> */}
              </ul>
            </div>
          </div>
        </div>
        <div className="row mb-4">
          <div className="col-lg-12">
            <div className="footer-menu">
              <ul>
                <li>
                  <Link to="/" className="manu poppins font15">
                    POSIZIONI APERTE
                  </Link>
                </li>
                <li>
                  <Link to="/" className="manu poppins font15">
                    EVENTI
                  </Link>
                </li>

                <li>
                  <Link to="/" className="manu poppins font15">
                    SFIDE
                  </Link>
                </li>
                <li>
                  <Link to="/contact" className="manu poppins font15">
                    CORSI
                  </Link>
                </li>
                <li>
                  <Link to="/contact" className="manu poppins font15">
                    INSIGHT
                  </Link>
                </li>
                <li>
                  <Link to="/contact" className="manu poppins font15">
                    PREMI
                  </Link>
                </li>

                <li>
                  <Link to="/contact" className="manu poppins font15">
                    CATEGORIE
                  </Link>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div className="copyright">
        <div className="container">
          <div className="row">
            <p className="font14 poppins mb-0">
              <div>
                <Link to="/contact" className="manu poppins font15 text-reset color__reset">
                  Privacy
                </Link>
                &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;
                <Link to="/contact" className="manu poppins font15 text-reset color__reset">
                  Termini e Condizioni
                </Link>
                &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;
                <Link to="/contact" className="manu poppins font15 text-reset color__reset">
                  Privacy e sicurezza del sito
                </Link>
              </div>
              &copy; Mygrants - C.F. 00409920584 - P.IVA 01333550323
              <a href="#" className="text-white text-decoration-none ">
                - info@mygrants.it
              </a>
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Footer;
