import React from 'react'
import { IoSearch } from 'react-icons/io5'

const SearchBox = () => {
  return (
    <>
    
    <div className="searchBox posotion-relative d-flex align-items-center">
        <IoSearch className='m-1' />

        <input type="search" pleaceholder="Search..." />


    </div>
    
    
    
    
    </>
  )
}

export default SearchBox
