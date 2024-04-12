import React, { useState } from "react";
import logo from "../img/logo.png";
import { Link } from "react-router-dom";
import SidebarMenu from "./SidebarMenu";
import { CiSearch } from "react-icons/ci";

function Header() {
  const [side, setSide] = useState(false);
  return (
    <>
      <header id="header" class="header d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">
          <Link to="/" class="logo d-flex align-items-center ">
            <img src={logo} />
          </Link>
          <i
            class="mobile-nav-toggle mobile-nav-show fa fa-bars"
            onClick={() => {
              setSide(!side);
            }}
          ></i>
          <nav id="navbar" class="navbar d-none">
            <ul>
              <li>
                <Link to="/">Posizioni Aperte</Link>
              </li>

              <li>
                <Link to="/">Aperte</Link>
              </li>
              <li>
                <Link to="/">Chi Siamo</Link>
              </li>
              <li>
                <Link to="/">Sfide</Link>
              </li>
              <li>
                <Link to="/">Contenuti</Link>
              </li>
              <li>
                <Link to="/">Support</Link>
              </li>
              <li>
                <Link target="_blank"  to="http://localhost:5173/">Accede</Link>
              </li>
              <li className="ml-0" style={{ paddingLeft: "20px" }}>
                <button type="button" className="border-0 bg-transparent">
                  <CiSearch
                    style={{
                      fontWeight: "bold",
                      fontSize: "25px",
                      fontWeight: "800",
                    }}
                  />
                </button>
              </li>
            </ul>
          </nav>
        </div>
        {side && <SidebarMenu />}
      </header>
    </>
  );
}

export default Header;
