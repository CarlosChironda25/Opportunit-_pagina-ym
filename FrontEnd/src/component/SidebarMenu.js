import React, { useState } from "react";
import { Link } from "react-router-dom";

function SidebarMenu() {
  const [colse, setcolse] = useState(true);
  return (
    <>
      {colse && (
        <div className="sidebar">
          <ul>
            <li className="mb-4 pt-0">
              <button
                type="button"
                className="clse"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                <i class="fa fa-times" aria-hidden="true"></i>
              </button>
            </li>
            <li>
              <Link
                to="/"
                className="active"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Posizioni Aperte
              </Link>
            </li>

            <li>
              <Link
                to="/"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Eventi
              </Link>
            </li>
            <li>
              <Link
                to="/"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Sfide
              </Link>
            </li>
            <li>
              <Link
                to="/"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Insight
              </Link>
            </li>
            <li>
              <Link
                to="/"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Premi
              </Link>
            </li>
            <li>
              <Link
                to="/"
                onClick={() => {
                  setcolse(!colse);
                }}
              >
                Categorie
              </Link>
            </li>
          </ul>
        </div>
      )}
    </>
  );
}

export default SidebarMenu;
