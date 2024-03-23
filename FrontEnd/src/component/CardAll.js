import React from "react";
import logo from "../img/logo_icon.png";
import { Link } from 'react-router-dom';

function CardAll({ title, address, label, id}) {

  return (
    <Link to={`/job?id=${id}`} className="decoration" >
      <div className="card">
        <h2 className="font18 poppins"> {title}</h2>
        <div className="d-flex align-items-center">
          <i class="fa fa-map-marker me-4 font19" aria-hidden="true"></i>
          <h5 className="font16 poppins">{address}</h5>
        </div>
        <div className="flex poppins bottom-sec justify-content-between ">
          <label className="font14">{label}</label>
          <img src={logo} style={{ height: '40px', width: '250px' }} className="img-logo logo_icon" />
        </div>
      </div>
    </Link>
  );
}

export default CardAll;
