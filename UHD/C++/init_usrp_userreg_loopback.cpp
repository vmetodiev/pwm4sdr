//
// Copyright 2014 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: GPL-3.0-or-later
//

// This tiny program is meant as an example on how to set up UHD
// projects using CMake.
// The program itself only initializes a USRP. For more elaborate examples,
// have a look at the files in host/examples/.

#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/utils/safe_main.hpp>
#include <uhd/utils/thread.hpp>
#include <boost/format.hpp>
#include <boost/program_options.hpp>
#include <iostream>

namespace po = boost::program_options;

int UHD_SAFE_MAIN(int argc, char* argv[])
{
    // variables to be set by po
    std::string args =             "type=b200,enable_user_regs";
    std::string custom_init_args = "type=b200,enable_user_regs";

    // setup the program options
    po::options_description desc("Allowed options");
    desc.add_options()("help", "help message")("args",
        po::value<std::string>(&args)->default_value(""),
        "multi uhd device address args");
    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    // print the help message
    if (vm.count("help")) {
        std::cout << boost::format("Mini-example to initialize a USRP (args==%s).") % args
                  << std::endl;
        return ~0;
    }

    // create a usrp device
    std::cout << std::endl;
    std::cout << boost::format("Creating the usrp device with: %s...") % args
              << std::endl;

    //std::cout << "my var is: " << myvar;
    auto usrp = uhd::usrp::multi_usrp::make(custom_init_args);
    auto regs = usrp->get_user_settings_iface();
    regs->poke32(0, 0xCAFE);
    regs->poke32(4, 0xBEEF);


    std::cout << boost::format("Read value: 0x%016X") % regs->peek64(0) << std::endl;


    return EXIT_SUCCESS;
}
