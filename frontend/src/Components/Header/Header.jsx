import React from 'react'
import Logo from '../../Assets/Image/Logo.png'
import { Link } from 'react-router-dom'
import Button from '@mui/material/Button';
import { MdMenuOpen } from "react-icons/md";
import { MdOutlineMenu } from "react-icons/md";
import SearchBox from '../SearchBox/SearchBox';
import { MdLightMode } from "react-icons/md";
import { MdDarkMode } from 'react-icons/md';
import { TbWorld } from "react-icons/tb";
import { BsCartCheckFill } from "react-icons/bs";
import { MdOutlineMailOutline } from 'react-icons/md';
import { FaRegBell } from 'react-icons/fa6';


const Header = () => {
  return (
    <>
      <header className="d-flex align-items-center">
        <div className="container-fluid w-100">
          <div className="row d-flex align-items-center w-100">
            {/* Logo  */}
            <div className="col-sm-2 part1">
              <Link to={'/'} className='d-flex align-items-center logo'>
                <img src={Logo} />
                <span className='ml-2'>SMB</span>
              </Link>
            </div>


            <div className="col-sm-3 d-flex justify-content-center part2 pl-4">
              <Button className='rounded-circle mr-3'> <MdMenuOpen /> </Button>
              <SearchBox />
            </div>


            <div className="col-sm-7 d-flex justify-content-center part3 justify-content-end">

              <Button className='rounded-circle mr-3'> <MdLightMode /> </Button>
              <Button className='rounded-circle mr-3'> <TbWorld /> </Button>
              <Button className='rounded-circle mr-3'> <BsCartCheckFill /> </Button>
              <Button className='rounded-circle mr-3'> <MdOutlineMailOutline /> </Button>
              <Button className='rounded-circle mr-3'> <FaRegBell /> </Button>
              <Button className='rounded-circle mr-3'> <MdMenuOpen /> </Button>


              <div className="myAccWrapper">
                <div className="myAcc d-flex justify-content-center">
                  <div className="userImg">
                    <span className='rounded-circle'>
                      <img src="https://media.licdn.com/dms/image/v2/D5603AQG63RWxGLev_Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1720267295959?e=2147483647&v=beta&t=5y5Zt8VwOZfaK-AguVmV3rOrXPW0HHakYMDBkRnNK6Q" alt="" />
                    </span>
                  </div>
                </div>
              </div>




            </div>


          </div>
        </div>
      </header>


    </>
  )
}

export default Header
