import React from 'react'
import Logo from '../../Assets/Image/Logo.png'
import { Link } from 'react-router-dom'

const Header = () => {
  return (
    <>
      <header className="row d-flex align-items-center">
        <div className="container-fluid w-100">
          <div className="row d-flex align-items-center">
            {/* Logo  */}
            <div className="col-xs-3">
              <Link to={'/'} className='d-flex align-items-center logo'> 
                <img src={Logo}/> 
                <span className='ml-2'>Shah Mini Bazar</span>
              </Link>
            </div>


            <div className="col-xs-3 d-flex justify-content-center">
              class video 16 mnt
              video link https://www.youtube.com/watch?v=yaWtIus3UAM&list=PLhFBHuT4t3aApRKcTgTi3Sfu6zudkg7bW&index=2
            </div>
          </div>
        </div>
      </header>


    </>
  )
}

export default Header
