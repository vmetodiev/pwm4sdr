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

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <gnuradio/io_signature.h>
#include "measurer_impl.h"

#include<fstream>
#include<iostream>
#include<iomanip>
#include<chrono>

using namespace std;

namespace gr {
  namespace measurer {

    measurer::sptr
    measurer::make(uint8_t pause)
    {
      return gnuradio::get_initial_sptr
        (new measurer_impl(pause));
    }

    /*
     * The private constructor
     */
    measurer_impl::measurer_impl(uint8_t pause)
      : gr::block("measurer",
              gr::io_signature::make(1, 1, sizeof(float)),
              gr::io_signature::make(1, 1, sizeof(float)))
    {
      this->pause = pause;
      this->array_len = DEFAULT_ARR_LEN;
      this->data_ptr = 0;
      this->gathered_data[0] = 0;
      this->sample_time_d[0] = 0;
      this->collected = false;
    }

    /*
     * Our virtual destructor.
     */
    measurer_impl::~measurer_impl()
    {
    }

    void
    measurer_impl::forecast (int noutput_items, gr_vector_int &ninput_items_required)
    {
      /* <+forecast+> e.g. ninput_items_required[0] = noutput_items */
      ninput_items_required[0] = noutput_items;
    }

    int
    measurer_impl::general_work (int noutput_items,
                       gr_vector_int &ninput_items,
                       gr_vector_const_void_star &input_items,
                       gr_vector_void_star &output_items)
    {
      const float *in = (const float *) input_items[0];
      float *out = (float *) output_items[0];

      // Do the measurement and data gathering
      
      auto start_time = std::chrono::high_resolution_clock::now();

      for(int i=0; i<noutput_items; i++) {
        if (this->data_ptr < DEFAULT_ARR_LEN) {
          // Get current time
          auto end_time = std::chrono::high_resolution_clock::now();
          
          // First element in the time deltas set to zero
          if (this->data_ptr == 0) 
            this->sample_time_d[0] = 0;
          else { // Calculate delay in ns between the current the previous sample
            unsigned int time_delta = std::chrono::duration_cast<std::chrono::nanoseconds>(end_time-start_time).count();
            this->sample_time_d[this->data_ptr] = time_delta;
          }

          // Get current data and append it to array
          gathered_data[this->data_ptr] = in[i];

          // End timestamp
          auto start_time = end_time;

          // Proceed with sending the data to the output unmodified
          out[i] = in[i];
          data_ptr++;
        }
        else {
          // Reset pointer
          this->data_ptr = 0;
          
          // Collect and write to file
          
          if (not this->collected) {
            ofstream measurer_file;
            measurer_file.open("/tmp/measurer_data.txt");
            
            char separator = ',';

            for (int i = 0; i < DEFAULT_ARR_LEN; i++) {
              measurer_file << std::fixed << std::setprecision(4) << gathered_data[i] << separator;
#ifdef APPEND_TIMESTAMP_TO_FILE
              measurer_file << sample_time_d[i] << separator;
#endif
            }
    
            measurer_file << std::fixed << std::setprecision(4) << 0; // Mark as if this is the end;
            
            measurer_file.close();
            this->collected = true;  
          }
        }
      }

      // Tell runtime system how many input items we consumed on
      // each input stream.
      consume_each (noutput_items);

      // Tell runtime system how many output items we produced.
      return noutput_items;
    }

      // Setters and getters
      void 
      measurer_impl::set_pause(unsigned int delay)
      {
        this->pause = delay;
      }

      unsigned int
      measurer_impl::get_pause(void)
      {
        return this->pause;
      }

      void
      measurer_impl::set_array_len(unsigned int len)
      {
        this->array_len = len;
      }

      unsigned int
      measurer_impl::get_array_len(void)
      {
        return this->array_len;
      }

  } /* namespace measurer */
} /* namespace gr */

