/* -*- c++ -*- */
/* 
 * Copyright 2019 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_MEASURER_MEASURER_H
#define INCLUDED_MEASURER_MEASURER_H

#include <measurer/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace measurer {

    /*!
     * \brief <+description of block+>
     * \ingroup measurer
     *
     */
    class MEASURER_API measurer : virtual public gr::block
    {
     public:
      typedef boost::shared_ptr<measurer> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of measurer::measurer.
       *
       * To avoid accidental use of raw pointers, measurer::measurer's
       * constructor is in a private implementation
       * class. measurer::measurer::make is the public interface for
       * creating new instances.
       */
      static sptr make(uint8_t pause);
    };

  } // namespace measurer
} // namespace gr

#endif /* INCLUDED_MEASURER_MEASURER_H */

