/* -*- c++ -*- */

#define MEASURER_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "measurer_swig_doc.i"

%{
#include "measurer/measurer.h"
%}


%include "measurer/measurer.h"
GR_SWIG_BLOCK_MAGIC2(measurer, measurer);
