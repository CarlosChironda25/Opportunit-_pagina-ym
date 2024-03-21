import React, { useState } from "react";
import logo from "../img/logo.png";
import { Link, useLocation } from "react-router-dom";
import SidebarMenu from "./SidebarMenu";

function Header() {
  const [side, setSide] = useState(false);
  return (
    <>
      <header id="header" class="header d-flex align-items-center">
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <Link to="/" class="logo d-flex align-items-center">
            <img src={logo} />
          </Link>
          <i
            class="mobile-nav-toggle mobile-nav-show fa fa-bars"
            onClick={() => {
              setSide(!side);
            }}
          ></i>
          <nav id="navbar" class="navbar">
            <ul>
              <li>
                <Link to="/">Posizioni Aperte</Link>
              </li>

              <li>
                <Link to="/">Eventi</Link>
              </li>
              <li>
                <Link to="/">Sfide</Link>
              </li>
              <li>
                <Link to="/">Insight</Link>
              </li>
              <li>
                <Link to="/">Premi</Link>
              </li>
              <li>
                <Link to="/">Categorie</Link>
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
