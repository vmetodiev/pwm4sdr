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

#ifndef INCLUDED_MEASURER_MEASURER_IMPL_H
#define INCLUDED_MEASURER_MEASURER_IMPL_H

#define DEFAULT_ARR_LEN (4096)

#include <measurer/measurer.h>

namespace gr {
  namespace measurer {

    class measurer_impl : public measurer
    {
     private:
      unsigned int pause;
      unsigned int array_len;
      int data_ptr;
      float gathered_data[DEFAULT_ARR_LEN];
      unsigned int sample_time_d[DEFAULT_ARR_LEN];
      bool collect_once;
      bool collected;

     public:
      measurer_impl(uint8_t pause);
      ~measurer_impl();

      void set_pause(unsigned int delay);
      unsigned int  get_pause(void);
      void set_array_len(unsigned int len);
      unsigned int get_array_len(void);

      void forecast (int noutput_items, gr_vector_int &ninput_items_required);

      int general_work(int noutput_items,
           gr_vector_int &ninput_items,
           gr_vector_const_void_star &input_items,
           gr_vector_void_star &output_items);
    };

  } // namespace measurer
} // namespace gr

#endif /* INCLUDED_MEASURER_MEASURER_IMPL_H */

